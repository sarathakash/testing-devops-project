#!/bin/bash
sudo usermod -aG docker ubuntu
sudo docker build -t ngimg .
sudo docker run --name nginx-container -d -p 3000:80  ngimg
sudo apt install docker-compose -y
sudo docker-compose up -d
sudo docker-compose build
sudo docker tag ngimg sarathakashk95/prod:version-1
sudo docker push sarathakashk95/prod:version-1
