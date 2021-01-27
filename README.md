# Docker Image with Kubectl
Docker Image with Kubectl installed

## Verions:

- Kubectl: v1.18.0

## How to run:

Supposing that you have a `~/.kube/config` file that you want to pass to the container.
```
docker run \
  -e KUBE_CONFIG="$(cat ~/.kube/config)" \
  rhuankarlus/kubectl
```

Hey, note that the `"` wrapping the `cat` command are mandatory.
