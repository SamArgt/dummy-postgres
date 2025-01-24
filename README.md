# PostgreSQL Docker Setup for ChmosecDB

## Prerequisites
- Docker
- Docker Compose

## Setup Instructions

1. Clone this repository
2. Navigate to the project directory
3. Run the following command to start the database:

```bash
docker compose up --build
```

## Connecting to the Database

- **Database Name:** chmosec-db
- **Password:** pwd
- **Port:** 5432
- **Host:** localhost

### Example Connection String
```
postgresql://postgres:pwd@localhost:5432/chmosec-db
```

## Database Schema
The database is initialized with two tables:
1. **security_events**: Stores security-related event logs
2. **network_traffic**: Captures network traffic information

## Stopping the Database
To stop the database and remove containers:
```bash
docker compose down
```

## Persisting Data
A Docker volume is created to persist database data between container restarts.