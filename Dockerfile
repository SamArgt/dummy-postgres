# Use official PostgreSQL image
FROM postgres:latest

# Set environment variables for database initialization
ENV POSTGRES_DB=chmosec-db
ENV POSTGRES_PASSWORD=pwd

# Copy initialization SQL script
# COPY 01-init-db.sql /docker-entrypoint-initdb.d/
