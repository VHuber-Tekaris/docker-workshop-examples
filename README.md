# docker-workshop-examples

A few code samples for an introductory workshop on Docker.

## Prerequisites

Docker Desktop (or an equivalent, e.g. Rancher Desktop / Podman Desktop) installed and running.

Ports used by the examples - free them up beforehand:

| Port      | Used by                                            |
|-----------|----------------------------------------------------|
| 8080      | `docker-basics.ps1` and `/dockerfile-example`      |
| 8081      | `/compose` - nginx load balancer (start here)      |
| 81, 82, 83| `/compose` - the 3 app replicas, reachable directly |

## docker-basics.ps1

The docker CLI commands used in the workshop, plus a few extra examples.
Meant to be run line by line, not as a script.

## /dockerfile-example

An easy example on how to modify a docker image with a Dockerfile.

## /compose

A simple application to demonstrate Docker Compose functionalities: a Node/Express
app runs as 3 replicas behind an nginx reverse proxy. Every page shows the name of
the container that served it, so refreshing http://localhost:8081/ shows the load
balancing in action.

```
docker compose up --build
docker compose down
```
