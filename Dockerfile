FROM jekyll/builder:4.2.2

RUN	gem install \
	github-pages \
	jekyll-paginate



EXPOSE 4000

COPY . /site
RUN chown -R jekyll /site
WORKDIR /site

# workaround 
# https://talk.jekyllrb.com/t/load-error-cannot-load-such-file-webrick/5417/4
RUN bundle add webrick

CMD ["/site/start.sh"]
