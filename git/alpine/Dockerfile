FROM my/alpine-cn

MAINTAINER James Chan <szjameschan@gmail.com>

RUN apk --update add git curl alpine-sdk perl openssh curl-dev autoconf gettext && \
	mkdir /opt && cd /opt && git clone --progress https://github.com/JamesChan/git.git && \
	apk del git && \
	cd git && make configure && ./configure && make install && \
	apk del alpine-sdk curl-dev && \
	rm -rf /opt/git && \
    rm -rf /var/cache/apk/*