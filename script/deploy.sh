#!/bin/bash
docker pull sarathakashk95/prod:latest
docker run -d -p 3000:80 sarathakashk95/prod:latest
