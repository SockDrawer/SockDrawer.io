FROM ruby:2.5-slim as builder
RUN apt-get update \
    && apt-get install -y \ 
        build-essential \
    && mkdir -p /var/build
    
COPY ./ /var/build
WORKDIR /var/build

RUN bundle install \
    && rake build


FROM kyma/docker-nginx
COPY --from=builder /var/build/_site /var/www
CMD 'nginx'