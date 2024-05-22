# Use an official ruby runtime as a parent image
FROM ruby:3.0

RUN bundle config --global frozen 1

WORKDIR /usr/src/app

# Install packages
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the app files into the Docker image
COPY . .

# Expose port
EXPOSE 443

# Run the app
CMD ["ruby","./server.rb"]

