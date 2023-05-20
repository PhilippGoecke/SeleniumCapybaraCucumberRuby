docker build --no-cache --rm -f Containerfile.firefox -t cucumber-firefox:demo .
docker run --interactive --tty cucumber-firefox:demo
