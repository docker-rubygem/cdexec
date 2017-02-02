FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.1

RUN gem install cdexec --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cdexec"]
CMD ["--help"]
