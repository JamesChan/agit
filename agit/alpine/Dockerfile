FROM my/git

MAINTAINER James Chan <szjameschan@gmail.com>

RUN mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh && \
    ssh-keyscan github.com bitbucket.org gitlab.com >> /root/.ssh/known_hosts && \
    echo "Host github.com \
          VerifyHostKeyDNS=yes" > /root/.ssh/config 

ENTRYPOINT ["git"]