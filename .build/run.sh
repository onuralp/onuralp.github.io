set -x
docker run --volume="$PWD:/site" -p 4000:4000 onuralp/website
