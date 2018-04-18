# Docker for machine learning

Docker for machine learning projects

## Build instructions

```
docker build -t ml-docker .
docker run -d -p 8888:8888 --name ml-docker ml-docker
```