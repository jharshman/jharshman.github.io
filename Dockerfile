FROM jekyll/jekyll:4.2.2

WORKDIR /srv/jekyll

#RUN apk add --no-cache build-base

COPY . .

RUN bundle install

EXPOSE 4000

CMD ["jekyll", "serve", "--watch", "--drafts", "--livereload", "--host", "0.0.0.0"]

