FROM ruby:2.3.1

# Specify app directory on container
ENV APP_HOME /app

# Create app directory on container
RUN mkdir $APP_HOME

# Set working directory on container
WORKDIR $APP_HOME

# Install bundled gems to shared volume
ENV BUNDLE_PATH /bundled_gems

# Share project root as app directory on container
ADD . $APP_HOME
