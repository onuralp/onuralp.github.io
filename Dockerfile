FROM jekyll/builder:4.2.2

RUN	gem install \
	github-pages \
	jekyll-paginate

EXPOSE 4000

RUN mkdir /site
RUN chown -R jekyll /site
WORKDIR /site

CMD ["/site/start.sh"]
