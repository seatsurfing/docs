# Administration
## Einführung
Die Administrations-Oberfläche erreichen Sie mit einem aktuellen Web-Browser unter folgender Adresse:

[https://app.seatsurfing.de/admin/](https://app.seatsurfing.de/admin/)

Zum Login muss Ihr Benutzer in Ihrer Organisation mit der Administrations-Berechtigung (Org Admin) ausgestattet sein.

Nach dem Login sehen Sie die Web-Oberfläche mit folgendem Aufbau:

![Admin UI Screenshot](img/admin-ui.png)

Auf der linken Seite navigieren Sie zwischen den verschiedenen Bereichen der Administration.

Am Kopf der Oberfläche können Sie mit der Suchfunktion schnell gewünschte Elemente finden (bspw. Benutzer, Bereiche, Plätze). Daneben finden Sie den Button zum Abmelden.

Im größten Teil der Fläche wird die jeweilige Funktion angezeigt, die Sie ausgewählt haben. Nach dem Login sehen Sie als Organisations-Admin immer zuerst die aktuellen Statistiken in einem Dashboard.

## Dashboard
Im Dashboard sehen Sie die aktuellen Statistiken Ihrer Seatsurfing-Organisation. Die Zahlen sollen Ihnen einerseits dabei helfen, die Nutzung und Akzeptanz von Seatsurfing durch Ihre Mitarbeiter einschätzen zu können. Andererseits errechnen wir in Echtzeit Ihre Auslastungsquote, sodass Sie stets Angebot und Nachfrage zu Ihrem Platzangebot im Blick behalten können.

Im oberen Bereich sehen Sie Zahlen zur Anzahl der Benutzer, Bereiche und Plätze sowie die Gesamtanzahl der Buchungen, die Ihre Organisation mit Seatsurfing erfahren hat.

Darunter sehen Sie die absoluten Zahlen der Buchungen von heute, gestern, dieser Woche und vergangener Woche.

Anhand der danach folgenden Balkendiagramme können Sie die Auslastung Ihrer Plätze ablesen.

## Bereiche
Als Bereich bezeichnen wir in Seatsurfing alles, was einen eigenen Grundriss hat. Das kann beispielsweise ein einzelnes Stockwerk eines Gebäudes sein. In diesem Bereich haben Sie die Möglichkeit, Plätze zu verwalten. Ein Platz ist hierbei eine eigenständig von einem Nutzer buchbarere Fläche – je nach Konzept also ein einzelner Sitzplatz, ein Schreibtisch oder ein ganzer Raum.

Im Abschnitt "Bereiche" können Sie diese Bereiche und die darin befindlichen Plätze administrieren.

Damit Sie Plätze in einem Bereich verwalten können, müssen Sie zuvor einen Raumplan im Format JPEG, PNG oder GIF von Ihrem Computer hochladen. Achten Sie darauf, dass der Raumplan ein angemessenes Format bzw. eine geeignete Auflösung hat. Ist die Auflösung zu hoch, müssen Ihre Mitarbeiter bei der Raumbuchung viel scrollen und verlieren möglicherweise den Überblick.

Plätze können Sie per Drag & Drop platzieren. Halten Sie die linke Maustaste gedrückt und verschieben Sie einen Platz, bevor Sie die Maustaste loslassen. Zur Änderung der Größe eines Platzes klicken und halten Sie die untere rechte Ecke des Rechtecks. Zum Benennen klicken Sie auf die Bezeichnung im Rechteck und Ändern Sie den Namen entsprechend.

Vergessen Sie nach der Einrichtung der Plätze das Speichern nicht.

## Benutzer
Im Abschnitt Benutzer verwalten Sie Ihre Mitarbeiter, die Zugriff auf Ihre Seatsurfing-Organisation haben.

Je nach Konfiguration in den Einstellungen (siehe unten) können sich Mitarbeiter, die in Ihrem Unternehmensverzeichnis hinterlegt sind, auch ohne explizite Administration der einzelnen Nutzer anmelden. Ihr Benutzerkonto in Ihrer Seatsurfing-Organisation wird in diesem Fall automatisch bei der ersten Anmeldung angelegt.

Um Benutzer manuell anzulegen oder zu bearbeiten, nutzen Sie den Button "Neu" oder klicken Sie auf den entsprechenden Benutzer in der Liste. Hier können Sie den Anmelde-Namen in Form einer E-Mail-Adresse sowie das Kennwort eingeben. Letzteres ist nur notwendig, wenn sich der Benutzer nicht über Ihren verknüpften Verzeichnisdienst anmeldet.

Zusätzlich können Sie Benutzer als Administrator kennzeichnen. Administratoren haben vollen Zugriff auf die Seatsurfing Administrations-Oberfläche. Seien Sie also vorsichtig, wem Sie eine Administrations-Berechtigung erteilen. Administratoren sollten zudem besonders sichere, komplexe Kennwörter verwenden.

## Buchungen
In den Buchungen können Sie die Buchungen Ihrer Mitarbeiter in einem bestimmten Zeitraum einsehen.

Den Zeitraum können Sie tagesgenau im oberen Bereich auswählen.

Eine Änderung bestehender Buchungen durch den Administrator ist nicht möglich.

## Einstellungen
In den Einstellungen konfigurieren Sie grundsätzliche Einstellungen Ihrer Seatsurfing-Organisation.

### Allgemeine Einstellungen
**Login aller authentifzierbaren Benutzer erlauben:** Wenn diese Option aktiviert ist, können sich Benutzer über einen hinterlegten Verzeichnisdienst (Auth Provider, siehe unten) anmelden, auch wenn sie nicht explizit in Ihrer Seatsurfing-Organisation administriert sind. Das Benutzerkonto wird dann automatisch angelegt, wenn die erste erfolgreiche Anmeldung durchgeführt wird.

**Buchungen je Nutzer:** Limitiert die Anzahl der zukünftigen Buchungen je Benutzer.

**Max. Buchungs-Vorlauf:** Limitiert den Vorlauf von Buchungen.

**Max. Buchungs-Dauer:** Limitiert die Dauer einer Buchung.

**Domains:** Gibt die Domains an, innerhalb deren Namensraum Ihre Benutzer sich befinden können. Nach dem Hinzufügen einer Domain ist die Bestätigung der Inhaberschaft zur Aktivierung erforderlich. Dies erfordert Zugriff auf den DNS-Server der jeweiligen Domain, da ein TXT-Record angelegt werden muss.

### Abonnement
Hier sehen Sie den Umfang Ihres abgeschlossenen Seatsurfing-Abonnements. Wenn Sie bislang die kostenfreie Version nutzen, können Sie ein neues Abonnement abschließen. Wenn Sie bereits ein Paket gebucht haben, können Sie Ihr Abonnement verwalten und dessen Umfang verändern oder Ihre Subscription beenden.

Die Verwaltung Ihres Abonnements erfolgt über unseren Partner FastSpring bzw. das Unternehmen Bright Market, LLC. Zum Verwalten Ihrer Subscription werden daher Ihre Unternehmens- und Ansprechpartner-Stammdaten an FastSpring übertragen.

Sie können Ihr Abonnement monatlich verändern und kündigen. Wenn Sie Ihr Abonnement kündigen oder die Anzahl der lizensierten Benutzer unter die aktuell vorhandene Anzahl an Benutzern reduzieren, bleiben die bestehenden Benutzer erhalten. Jedoch können sich Benutzer, die keine Administratoren sind, dann nicht mehr anmelden, bis Sie die lizensierte Maximalanzahl wieder erreicht oder unterschritten haben.

### Auth Providers
Authentifizierungs-Provider sind Dienste, die bei der Anmeldung an Seatsurfing die Authentifizierung über standardisierte Protokolle übernehmen. Seatsurfing unterstützt aktuell OAuth 2 und OpenID Connect (OIDC). Hierdurch können Sie Benutzeranmeldungen gegen Ihr unternehmensinternes Benutzerverzeichnis validieren. Die Kennwörter werden hierbei innerhalb des jeweiligen Diensts in Ihrer Infrastruktur eingegeben und nicht an Seatsurfing übertragen.

Um einen Auth Provider hinzuzufügen, klicken Sie auf den entsprechenden Button. Je nach Auth Provider Typ werden verschiedene technische Informationen benötigt. Wenden Sie sich gegebenenfalls an den technischen Administrator Ihres Authentifizierungsdiensts, um diese Informationen zu erhalten.

Auth Provider können zusätzlich zur Kennwort-Authentifizierung innerhalb von Seatsurfing eingesetzt werden. Es wird bei der Anmeldung zunächst geprüft, ob der angegebene Benutzer im Seatsurfing-Benutzerverzeichnis existiert und die Kennwort-Anmeldung aktiviert ist. Ist dies der Fall, wird der Benutzer von Seatsurfing zur Eingabe eines Kennworts aufgefordert. Ansonsten ist eine Anmeldung über einen der von Ihnen hinterlegen Auth Provider möglich.

### Kritische Funktionen
In diesem Abschnitt können Sie Ihre Seatsurfing-Organisation löschen. Die Löschung erfolgt nach einer Sicherheitsabfrage und ist unwiderruflich. Alle Ihre Daten auf den Seatsurfing-Servern werden dabei gelöscht und können nicht wiederhergestellt werden. Nutzen Sie diese Funktion also nur, wenn Sie sich absolut sicher sind.

Bitte melden Sie sich bei uns, wenn Sie Fragen zur Nutzung oder Anforderungen an den Funktionsumfang haben.

## Suche
Die Suchfunktion am oberen Bereich der Administrations-Oberfläche verwenden SIe durch Eingeben eines Suchbegriffs und Betätigen der Enter-Taste.

Die Suchfunktion umfasst die E-Mail-Adressen von Benutzern sowie die Namen von Bereichen und Plätzen.
