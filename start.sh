
#!/bin/sh
set -e
set -x

bundle install --no-deployment
bundle exec jekyll serve --watch -H 0.0.0.0 -P 4000
