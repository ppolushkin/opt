FROM ruby:2.4.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN apt-get -qy install postgresql postgresql-contrib libpq-dev

# Set the working directory to /app
RUN mkdir /home/opt
WORKDIR /home/opt

# Make port 3001 available to the world outside this container
EXPOSE 3001

# Copy the current directory contents into the container at /app
COPY Gemfile /home/opt/Gemfile
COPY Gemfile.lock /home/opt/Gemfile.lock

RUN bundle update
RUN bundle install