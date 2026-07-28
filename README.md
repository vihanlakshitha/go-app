\# Go App — Cloud Run + CI/CD



A simple Go web server, containerized with Docker and deployed to Google Cloud Run.



\## Tech Stack

\- Go (standard library HTTP server)

\- Docker (multi-stage build)

\- Google Cloud Run

\- Google Artifact Registry

\- CI/CD: GitHub Actions + Google Cloud Build



\## Local Development

```bash

go run main.go

```



\## Docker

```bash

docker build -t go-app:1.0 .

docker run -p 8080:8080 go-app:1.0

```



\## Deployment

Automatically deployed to Cloud Run on every push to `main`, via two parallel pipelines:

\- `.github/workflows/deploy.yml` (GitHub Actions)

\- `cloudbuild.yaml` (Google Cloud Build)

