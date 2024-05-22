<p align="left">
  <img src="https://www.docker.com/wp-content/uploads/2023/08/logo-guide-logos-1.svg" height="68"></img> 
  <img src="https://www.ruby-lang.org/images/header-ruby-logo.png" height="68"> </img> 
    <img src="https://www.docker.com/wp-content/uploads/2023/05/banner_2.0s-docker-compose-980x538.png" height="68"> </img> 
</p>

## Containerizing and Running a Ruby Application

This repo walks you through containerizing and running a Ruby application.

To start, open a terminal window and navigate to a directory on your computer where you want to store the sample application. Then, run the following command to clone the repository:

```console
$ git clone https://github.com/vishalbidwe/ruby-docker.git
```

You should now have the following files in your `ruby-docker` directory.

```text
├── ruby-docker/
│ ├── server.rb
│ ├── Gemfile
│ ├── Gemfile.lock
│ ├── compose.yaml
│ ├── Dockerfile
│ └── README.md
```

## Run the application

Inside the `ruby-docker` directory, run the following command in a
terminal.

```console
$ docker compose up --build
```

Open a browser and paste [http://localhost:443](http://localhost:443) in URL bar. You should see a simple Ruby application which displays current day in calender.

In the terminal, press `ctrl`+`c` to stop the application.

### Run the application in the background

You can run the application detached from the terminal i.e it will run in background by adding the `-d`
option flag. Inside the `ruby-docker` directory, run the following command
in a terminal.

```console
$ docker compose up --build -d
```

Open a browser and view the application at [http://localhost:443](http://localhost:443).

You should see a simple ruby application.

In the terminal, run the following command to stop the application.

```console
$ docker compose down
```
