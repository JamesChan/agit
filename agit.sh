#!/bin/bash

docker run --rm -v `pwd`:/`pwd` -w `pwd` my/agit  $*