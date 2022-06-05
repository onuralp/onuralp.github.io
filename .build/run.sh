set -x
docker run --volume="$PWD:/site" -p 4004:4000 onuralp/website
