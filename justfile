# build the resume
build:
  docker run --rm -v /home/ieg/dev/resume/:/mnt/resume latex:latest

# clean the project
clean:
  git clean -fdx
