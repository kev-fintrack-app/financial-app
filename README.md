# FinTrack

Financial tracking application built with microservices architecture.

## Tech Stack

- Java 21, Spring Boot 3.4.x, Maven multi-module
- PostgreSQL 16, Redis 7, AWS SQS/SNS (LocalStack for local dev)
- Docker + Docker Compose
- Hexagonal Architecture per service

## Services

| Service | Port | Database |
|---------|------|----------|
| api-gateway | 8080 | — (Redis for cache) |
| auth-service | 8081 | auth_db |
| transaction-service | 8082 | transaction_db |
| budget-service | 8083 | budget_db |
| reporting-service | 8084 | reporting_db |
| notification-service | 8085 | notification_db |
| sync-service | 8086 | sync_db |

## Local Development

```bash
# Start infrastructure
docker compose up postgres redis localstack -d

# Start all services
docker compose up -d
```

## Git Workflow

All changes go through Pull Requests. Direct pushes to `main` are blocked.

```
1. Create a feature branch
   git checkout -b feature/short-description

2. Make changes and commit
   git add .
   git commit -m "Add short description of the change"

3. Push the branch
   git push origin feature/short-description

4. Create a Pull Request
   gh pr create --title "Short description" --body "Details"

5. Wait for CI to pass (GitHub Actions: build + test)

6. Merge the PR
   gh pr merge --squash
```

### Branch Naming

| Type | Pattern | Example |
|------|---------|---------|
| Feature | `feature/description` | `feature/jwt-authentication` |
| Bug fix | `fix/description` | `fix/token-expiration` |
| Refactor | `refactor/description` | `refactor/extract-common-dto` |

### Branch Protection Rules (main)

- Require Pull Request (no direct push)
- Require CI status check to pass before merge
- No force push allowed
