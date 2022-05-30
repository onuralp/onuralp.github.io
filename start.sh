
#!/bin/sh
set -e
set -x

# workaround 
# https://talk.jekyllrb.com/t/load-error-cannot-load-such-file-webrick/5417/4
bundle add webrick

bundle exec jekyll serve -H 0.0.0.0 -P 4000
