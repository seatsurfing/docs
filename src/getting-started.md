# Erste Schritte

## 1. Systemvoraussetzungen prüfen
Um das Seatsurfing-Backend auf Ihrem Server einrichten zu können, müssen folgende Systemanforderung erfüllt sein:

* Linux-Server
* Docker Laufzeitumgebung (getestet mit Docker Engine Version 20.x)
* PostgreSQL (getestet mit PostgreSQL Version 12.x)
* Optional: Docker Compose (getestet mit Docker Comopse Version 1.29)
* Optional: Reverse Proxy mit SSL-Terminierung (getestet mit Traefik Version 2.x)

## 2. Container einrichten
Das nachfolgende Beispiel zeigt die Einrichtung mittels Docker Compose. Innerhalb des Compose-Files wird auch eine PostgreSQL-Datenbank gestartet. Alternativ können Sie Seatsurfing natürlich auch mittels ```docker run``` bzw. einer externen Postgres-Datenbank oder auf Kubernetes betreiben.

Hier wird zudem der HTTP-Port 8080 veröffentlicht. Wir empfehlen für den produktiven Betrieb zur Erhöhung der Sicherheit den Einsatz eines Reverse Proxys, der die HTTPS-Terminierung übernimmt.

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
      JWT_SIGNING_KEY: 'hier_eine_zufällige_zeichenkette_eingeben'
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

Starten Sie das Seatsurfing-Backend danach mittels ```docker-compose up -d```.

Seatsurfing steht in diesem Beispiel unter [http://localhost:8080](http://localhost:8080) zur Verfügung.

## 3. Ersteinrichtung vornehmen
Loggen Sie sich mit einem aktuellen Webbrowser (bspw. Chrome, Firefox, Safari) in der [Administrations-Oberfläche](http://localhost:8080/admin/) an.

In der Standard-Konfiguration wird beim erstmaligen Start des Backends eine Organisation samt Administrator angelegt. Verwenden Sie zum Login mit diesem den Benutzernamen "admin@seatsurfing.local" und "12345678" als Kennwort.

In der Administrations-Oberfläche können Sie Ihre Raumpläne, Benutzer und Einstellungen verwalten. Lesen Sie hierzu den Abschnitt [Administration](admin-ui.md) dieser Dokumentation.

## 4. Mobile App herunterladen
Die mobilen Apps für iOS und Android finden Sie kostenlos im App Store bzw. bei Google Play:

* [App Store](https://apps.apple.com/app/seatsurfing/id1579071273)
* [Google Play](https://play.google.com/store/apps/details?id=de.seatsurfing.app)