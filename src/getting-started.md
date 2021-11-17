# Getting started

## 1. System Requirements
To set up the Seatsurfing backend on your server, the following system requirements must be met:

* Linux server
* Docker runtime environment (or CRI/containerd in case of Kubernetes, tested with Docker Engine version 20.x and containerd version 1.4.x)
* PostgreSQL (tested with PostgreSQL version 12.x and 13.x)
* Optionally: Docker Compose (tested with Docker Comopse version 1.29)
* Recommended: Reverse proxy with TLS termination (tested with Traefik version 2.x)

## 2. Setting up the container
The following example demonstrates setting up Seatsurfing backend using Docker Compose. We'll start the required PostgreSQL database as part of the compose file. Alternatively, you can set up Seatsurfing using ```docker run```, using an external Postgres database of using Kubernetes.

For simplicity and demonstration purposes only, container port 8080 is published directly on the host. When using Seatsurfing in production, you should place a revery proxy in front of the Seatsurfing backend which also takes care of TLS termination.

#### docker-compose.yml

```
version: '3.7'

services:
  server:
    image: seatsurfing/backend
    restart: always
    networks:
      sql:
    ports:
      - 8080:8080
    environment:
      POSTGRES_URL: 'postgres://seatsurfing:DB_PASSWORD@db/seatsurfing?sslmode=disable'
      JWT_SIGNING_KEY: 'a_random_key'
  db:
    image: postgres:12
    restart: always
    networks:
      sql:
    volumes:
      - db:/var/lib/postgresql/data
    environment:
      POSTGRES_PASSWORD: DB_PASSWORD
      POSTGRES_USER: seatsurfing
      POSTGRES_DB: seatsurfing

volumes:
  db:

networks:
  sql:
```

Start the Seatsurfing backend by running: ```docker-compose up -d```

Afterwards, Seatsurfing can be accessed at: [http://localhost:8080](http://localhost:8080)

## 3. Initial configration
Access the administrator web-interface using a modern web browser (i.e. Chrome, Firefox, Safari) at: [Administrations-Oberfläche](http://localhost:8080/admin/)

By defaullt, an organisation with one administrator account is created on backend startup if no organisation already exists in the specified database. If not defined otherwise, use ```admin@seatsurfing.local``` as the username and ```12345678``` as the password.

The administrator interface can be used to manage room plans, users and settings. Read more about it in the [Administration](admin-ui.md) section.

## 4. Getting the mobile app
You can download the mobile apps for iOS and Android for free in Apple's App Store and on Google Play:

* [App Store](https://apps.apple.com/app/seatsurfing/id1579071273)
* [Google Play](https://play.google.com/store/apps/details?id=de.seatsurfing.app)