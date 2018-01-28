FROM jekyll/builder:3.7.2

RUN	gem install \
	github-pages

EXPOSE 4000

COPY . /site
RUN chown -R jekyll /site
WORKDIR /site

CMD ["/site/start.sh"]