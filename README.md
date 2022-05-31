# Personal web site

## Getting Started

### With docker

1. Run the following command to build and run the site.

    With custom Dockerfile

    ```sh
    docker run --rm \
        --volume="$PWD:/srv/jekyll:Z" \
        -p 4004:4000 \
        jekyll/jekyll \
        jekyll build
    ```

2. Visit http://localhost:4004

## local setup

1. Install Jekyll and plug-ins in one fell swoop. `gem install github-pages jekyll-paginate webrick` This mirrors the plug-ins used by GitHub Pages on your local machine including Jekyll, Sass, etc.
2. Clone down your fork `git clone https://github.com/yourusername/yourusername.github.io.git`
3. Serve the site and watch for markup/sass changes `jekyll serve`
4. View your website at http://127.0.0.1:4000/
5. Commit any changes and push everything to the master branch of your GitHub user repository. GitHub Pages will then rebuild and serve your website.
