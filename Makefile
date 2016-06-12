OS = alpine


alpine: check
	docker build --rm -t my/alpine alpine

alpine-cn: check
	docker build --rm -t my/alpine-cn alpine-cn

git-official: check
	docker build --rm -t my/git-official git-official/alpine

agit: git
	docker build --rm -t my/agit agit/alpine

git-env: git
	docker run --rm -it my/git bash

git: alpine
	docker build --rm -t my/git git/alpine

check:
	@if ! type docker >/dev/null 2>&1; then \
		echo >&2 "Cannot find docker, install docker first. See: http://www.docker.com"; exit 1; fi

.PHONY: ubuntu java git-official git-dev agit check