# Docker for machine learning

Docker for machine learning projects

## Build instructions

```
docker build -t ml-docker .
docker run -d -p 8888:8888 -p 6006:6006 --name ml-docker ml-docker
```