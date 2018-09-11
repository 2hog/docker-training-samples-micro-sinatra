# Sample Sinatra Microservice

This is an example microservice written in Sinatra, intended to be used as part of 2hog's Docker trainings.

## Spec
It implements a single endpoint (`POST /`), which:

1. Requires basic authentication (configurable via the `AUTH_USER` and `AUTH_PASSWORD` environment variables)
2. Returns a JSON response with a greeting
