#!/usr/bin/env bash
docker run -it --rm python:2 /bin/bash -c 'pip install passlib && python -c "from passlib.hash import sha512_crypt; import getpass; print sha512_crypt.encrypt(getpass.getpass())"'
