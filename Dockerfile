# set base image
FROM ruby:2.6.5

# install dependencies on the machine
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs libsodium
# install gems
RUN gem install bundler
RUN gem install puma

# set environment veriables 
ENV RAILS_ROOT /api
ENV SECRET_KEY_BASE dfd6dcf014bc92d8476bb04364e93c900b3742c5e2b8763b6d45fb2b6cc3030e02f292d2de49faa5dc2b805167b8b1aee909e890fc907c8edae9417f91afabe8
ENV DATABASE_HOST localhost
ENV DATABASE_PORT 5432
ENV DATABASE_USERNAME postgres
ENV DATABASE_PASSWORD mysecretpassword
# ENV RAILS_MAX_THREADS

# Set working directory
WORKDIR $RAILS_ROOT
# Copy the files over
COPY . .

# Bundle gems
RUN bundle install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# start rails server
# start server based on the ENV arg
CMD ["rails", "server","-e", "production","-b", "0.0.0.0","-p","3000"]

# expose the container on port 3000
EXPOSE 3000
# tracy service issue