# Sample Sinatra Microservice

This is an example microservice written in Sinatra, intended to be used as part of 2hog's Docker trainings.

## Spec
It implements a single endpoint (`POST /`), which:

1. Requires basic authentication (configurable via the `AUTH_USER` and `AUTH_PASSWORD` environment variables)
2. Returns a JSON response with a greeting

## Deployment

Before deploying this app with Docker Swarm or Kubernetes, make sure to build its image by running the following command

```sh
docker build -t 2hog/docker-training-samples-micro-sinatra
```

### Docker Swarm

```sh
docker stack deploy -c docker-compose.yml docker-training-samples-micro-sinatra
```

### Kubernetes

```sh
kubectl apply -f kube/
```

## License

This software is [MIT licensed](LICENSE).