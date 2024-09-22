
# Users Microservice

This is a microservice built with FastAPI/Python that manages user-related functionality. The service can be run using three different approaches:

1. **Building the image manually**
2. **Running with Docker Compose**
3. **Running with Kubernetes**

## 1. Build image and run manually

You can build the image and run the service manually using the provided shell scripts:

1. Give execution permission to the script:
   ```bash
   chmod +x run.sh
   ```

2. Run the service:
   ```bash
   ./run.sh
   ```

3. To stop the service:
   ```bash
   ./stop.sh
   ```

## 2. Run through Docker Compose

You can also run the service using Docker Compose:

```bash
docker compose up
```

Or run it in detached mode:

```bash
docker compose up -d
```

## 3. Run with Kubernetes

To run the microservice using Kubernetes, execute the following script:

```bash
./setup_k8s.sh
```

This will deploy the service on your Kubernetes cluster. If you want to remove the Kubernetes setup, run:

```bash
./remove_k8s.sh
```

Ensure you have a configured and authenticated Kubernetes cluster before running these commands.

## Github Secrets

Add the following secrets to your GitHub Actions to automate the build and deployment process:

- `DATABASE_URL`
- `DOCKERHUB_REPO`
- `DOCKERHUB_TOKEN`
- `DOCKERHUB_USERNAME`
- `POSTGRES_DB`
- `POSTGRES_PASSWORD`
- `POSTGRES_USER`

These secrets are required for deploying the service, either through Docker or Kubernetes, in CI/CD workflows. Customize them based on your setup.

**Note:** This microservice is part of a larger orchestrated microservices architecture. You can find more details on orchestration and setup in the Orchestrated Microservices repository.