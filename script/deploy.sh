#!/bin/bash
docker pull sarathakashk95/prod:latest
docker run -d -p 3001:80 sarathakashk95/prod:latest
