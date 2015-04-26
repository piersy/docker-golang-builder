#Since the go servers will extend from the phusion/baseimage:0.9.16 we do the same here
#to ensure that our build environment matches that of the target.
FROM phusion/baseimage:0.9.16

#Install go similarly to the google/golang docker image
RUN apt-get update -y && apt-get install --no-install-recommends -y -q curl build-essential ca-certificates git mercurial bzr
RUN mkdir /goroot && curl https://storage.googleapis.com/golang/go1.4.2.linux-amd64.tar.gz | tar xvzf - -C /goroot --strip-components=1
RUN mkdir /gopath

ENV GOROOT /goroot
ENV GOPATH /gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin



