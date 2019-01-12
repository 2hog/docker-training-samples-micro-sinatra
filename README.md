# Sinatra Sample Microservice

This is an sample microservice written in Sinatra, intended to be used as part of 2hog's Docker trainings.

## Spec
It implements a single endpoint (`POST /`), which:

1. Requires basic authentication
2. Returns a JSON response with a greeting

## Example

```
paris@docker-training-samples-micro-sinatra:/mnt/project$ curl -X POST -d '' -u paris:kasidiaris localhost:4567
{"greeting":"Chào"}
```

## Configuration

The Sinatra Sample Microservice accepts configuration via environment variables:

- `AUTH_USER`: The username to use for Basic Authentication (default: `paris`)
- `AUTH_PASSWORD`: The password to use for Basic Authentication (default: `kasidiaris`)

## Secrets

The Sinatra Sample Microservice also accepts and prefers configuration for `AUTH_USER` and `AUTH_PASSWORD` as secret files:

- `/run/secrets/auth_user`: The username to use for Basic Authentication
- `/run/secrets/auth_password`: The password to use for Basic Authentication

## Deployment

### Docker

```sh
docker run -d \
-e AUTH_USER=paris -e AUTH_PASSWORD=kasidiaris \
-p 4567 \
2hog/docker-training-samples-micro-sinatra
```

### Docker Swarm

```sh
docker secret create micro-sinatra-auth-user -
docker secret create micro-sinatra-auth-password -
docker stack deploy -c docker-compose.yml docker-training-samples-micro-sinatra
```

### Kubernetes

```sh
kubectl create secret generic docker-training-samples-micro-sinatra-secret \
--from-literal=auth_user=paris \
--from-literal=auth_password=kasidiaris
kubectl apply -f kube/
```

## Development

To develop the Sinatra Sample Microservice, follow these steps:

1. Install Docker ([docs](https://docs.docker.com/install/)) and Docker Compose ([docs](https://docs.docker.com/compose/install/))
2. Clone this repository:
    ```
    git clone https://github.com/2hog/docker-training-samples-micro-sinatra
    ```
3. Launch the app with Docker Compose:
    ```
    docker-compose up
    ```
4. Open your repository with your editor and rock n' roll!

## License

This software is [MIT licensed](LICENSE).