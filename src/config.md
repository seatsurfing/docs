# Configuration

While you can configure organisation-specific settings in the administrator web interface, global settings are set using environment variables. Set these environment variables when running the Seatsurfing backend Docker container.

## Example: Using Docker Compose
```
environment:
  POSTGRES_URL: 'postgres://seatsurfing:DB_PASSWORD@db/seatsurfing?sslmode=disable'
  INIT_ORG_DOMAIN: 'your-domain.com'
  ...
```

## Example: Using ```docker run```
```
docker run -e "INIT_ORG_DOMAIN=your-domain.com" -e "POSTGRES_URL=..." seatsurfing/backend
```

## List of environment variables

| Environment Variable | Type | Default | Description |
| --- | --- | --- | --- |
| DEV | bool | 0 | Development Mode, set to 1 to enable  |
| PUBLIC_LISTEN_ADDR | string | 0.0.0.0:8080 | TCP/IP listen address and port |
| PUBLIC_URL | string | http://localhost:8080 | Public URL |
| FRONTEND_URL | string | http://localhost:8080 | Frontend URL (usually matches the Public URL) |
| STATIC_ADMIN_UI_PATH | string | /app/adminui | Path to compiled Admin UI files |
| STATIC_BOOKING_UI_PATH | string | /app/bookingui | Path to compiled Booking UI files |
| POSTGRES_URL | string | postgres://postgres:root @ localhost/seatsurfing?sslmode=disable | PostgreSQL Connection |
| JWT_SIGNING_KEY | string | random string | JWT Signing Key |
| SMTP_HOST | string | 127.0.0.1 | SMTP server address |
| SMTP_PORT | int | 25 | SMTP server port |
| SMTP_START_TLS | bool | 0 | Use SMTP STARTTLS extension, set to 1 to enable |
| SMTP_INSECURE_SKIP_VERIFY | bool | 0 | Disable SMTP TLS certificate validation |
| SMTP_AUTH | bool | 0 | SMTP authentication, set to 1 to enable |
| SMTP_AUTH_USER | string |  | SMTP auth username |
| SMTP_AUTH_PASS | string |  | SMTP auth password |
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
| ORG_SIGNUP_DELETE | bool | 0 | Allow admins to delete their own organisation |
| LOGIN_PROTECTION_MAX_FAILS | int | 10 | Number of failed login attempts before user gets banned |
| LOGIN_PROTECTION_SLIDING_WINDOW_SECONDS | int | 600 | Sliding window size in seconds for checking failed login attempts  |
| LOGIN_PROTECTION_BAN_MINUTES | int | 5 | Ban time in minutes |