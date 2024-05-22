# Define servlet which prints current time
require 'webrick'
server = WEBrick::HTTPServer.new(:Port => 443)
class Docker < WEBrick::HTTPServlet::AbstractServlet
  def do_GET request, response
    status, content_type, body = make_req request
    response.status = 200
    response['Content-Type'] = 'text/plain'
    local_time = Time.now.strftime("%A, %B %d, %Y")
    response.body = "Welcome to Docker!\nKeep exploring for docking the Conatainers :)\nRuby says today is #{local_time} and happy learning."
  end
  def make_req request
    return 200, 'text/plain', 'hi'
  end
end

# Mount the servlet path 
server.mount '/', Docker

# Start the server 
trap 'INT' do server.shutdown end
server.start