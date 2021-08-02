# Konfiguration

Übergreifende Einstellungen des Seatsurfing-Backends lassen sich mittels Umgebuzngsvariablen anpassen. Diese setzen Sie als Environment Variable bei der Ausführung des Docker Containers.

Bei Verwendung von Docker Compose:
```
environment:
  POSTGRES_URL: 'postgres://seatsurfing:DB_PASSWORD@db/seatsurfing?sslmode=disable'
  INIT_ORG_DOMAIN: 'ihre-domain.de'
  ...
```

Bei der Verwendung von ```docker run```:
```
docker run -e "INIT_ORG_DOMAIN=ihre-domain.de" -e "POSTGRES_URL=..." seatsurfing/backend
```

Hier finden Sie eine Übersicht über alle verfügbaren Umgebungsvariablen.

| Environment Variable | Type | Default | Description |
| --- | --- | --- | --- |
| DEV | bool | 0 | Development Mode, set to 1 to enable  |
| PUBLIC_LISTEN_ADDR | string | 0.0.0.0:8080 | TCP/IP listen address and port |
| PUBLIC_URL | string | http://localhost:8080 | Public URL |
| FRONTEND_URL | string | http://localhost:8080 | Frontend URL (usually matches the Public URL) |
| APP_URL | string | seatsurfing:/// | App URL (should not be changed) |
| STATIC_ADMIN_UI_PATH | string | /app/adminui | Path to compiled Admin UI files |
| STATIC_BOOKING_UI_PATH | string | /app/bookingui | Path to compiled Booking UI files |
| POSTGRES_URL | string | postgres://postgres:root @ localhost/seatsurfing?sslmode=disable | PostgreSQL Connection |
| JWT_SIGNING_KEY | string | random string | JWT Signing Key |
| SMTP_HOST | string | 127.0.0.1:25 | SMTP server address and port (authentication is not supported at this time) |
| SMTP_SENDER_ADDRESS | string | no-reply@seatsurfing.local | SMTP sender address |
| MOCK_SENDMAIL | bool | 0 | SMTP mocking, set to 1 to enable |
| PRINT_CONFIG | bool | 0 | Print configuration on startup, set to 1 to enable |
| INIT_ORG_NAME | string | Sample Company | Your organization's name |
| INIT_ORG_DOMAIN | string | seatsurfing.local | Your organization's domain |
| INIT_ORG_USER | string | admin | Your organization's admin username |
| INIT_ORG_PASS | string | 12345678 | Your organization's admin password |
| INIT_ORG_COUNTRY | string | DE | Your organization's ISO country code |
| INIT_ORG_LANGUAGE | string | de | Your organization's ISO language code |
| ORG_SIGNUP_ENABLED | bool | 0 | Allow signup of new organizations, set to 1 to enable |
| ORG_SIGNUP_DOMAIN | string | .on.seatsurfing.local | Signup domain suffix |
| ORG_SIGNUP_ADMIN | string | admin | Admin username for new signups |
| ORG_SIGNUP_MAX_USERS | int | 50 | Maximum number of users for new organisations |