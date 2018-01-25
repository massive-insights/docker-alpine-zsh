FROM alpine:3.7

LABEL maintainer="Christoph Pilka <c.pilka@asconix.com>"

RUN apk --update add --no-cache \
        zsh

CMD ["zsh"]

