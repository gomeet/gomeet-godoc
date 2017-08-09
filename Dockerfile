FROM golang:1.8.3-alpine3.6
RUN apk add --no-cache --update git go-tools &&\
     rm -rf /var/crash/apk/* &&\
     go get golang.org/x/tools/cmd/godoc

EXPOSE 6060
ENTRYPOINT ["godoc"]
CMD ["-http=:6060"]
