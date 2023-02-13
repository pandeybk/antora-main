To use this Dockerfile to build the Antora site, you can follow these steps:

1. Create a Dockerfile in the root directory of your Antora project: This file should have the contents shown in `Dockerfile`.
2. Build the Docker image: Run the following command to build the Podman image:

```
podman build -t antora-site .
```

3. Run the following command to run the Podman container:
```
podman run -it --rm -v $(pwd):/app antora-site
```