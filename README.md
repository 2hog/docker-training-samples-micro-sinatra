# Sinatra Sample Microservice

This is an sample microservice written in Sinatra, intended to be used as part of 2hog's Docker trainings.

## Spec
It implements a single endpoint (`POST /`), which:

1. Requires basic authentication
2. Returns a JSON response with a greeting

## Example

```
paris@docker-training-samples-micro-sinatra:/mnt/project$ curl -X POST -d '' -u paris:kasidiaris localhost:3000
{"greeting":"Geia sou"}
```

## Configuration

The Sinatra Sample Microservice accepts configuration via environment variables:

- `AUTH_USER`: The username to use for Basic Authentication (default: `paris`)
- `AUTH_PASSWORD`: The password to use for Basic Authentication (default: `kasidiaris`)

## Deployment

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