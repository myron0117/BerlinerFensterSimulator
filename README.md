# Berliner Fenster Simulator

Eine originalgetreue Nachbildung der Fahrgastinformationsanzeige aus dem Berliner Fenster der U-Bahnen der BVG.

Dieser Nachbau erlaubt in Kombination mit `.json`-Dateien die Darstellung realistischer Linienverläufe der echten U-Bahnlinien, sowie aber auch eigene fiktive Linien welche man sich selbst erstellen kann.

Zum herunterladen dieses Projektes befinden sich geeignete Versionen unter den [Releases](https://github.com/myron0117/BerlinerFensterSimulator/releases) dieser Repository.



## Abschnitte:

[Verwendung des Simulators](#verwendung-des-simulators)\
--> [Linienverlauf](#linienverlauf)\
--> [Erscheinungsbild & Sound](#erscheinungsbild--sound)\
--> [Separate Anzeige](#separate-anzeige)

[Aufbau der Linienverläufe](#aufbau-der-linienverläufe)\
--> [Erstellen eigener Linienverläufe](#erstellen-eigener-linienverläufe)

[Sonstiges](#sonstiges)\
--> [Weitere Informationen](#weitere-informationen)\
--> [Nutzungsbedingungen](#nutzungsbedingungen)\
--> [Haftungsausschluss](#haftungsausschluss)\
--> [Rechtliches](#rechtliches)\
--> [Kontakt](#kontakt)



## Verwendung des Simulators

> [!IMPORTANT]
> Es ist sehr empfohlen, den Simulator über die Datei `Berliner Fenster Simulator.bat` zu starten. Sonst sind einige Funktionen wirkungslos und die geeigneten Schriftarten werden ebenfalls nicht geladen.
>
> Hierfür wird außerdem Python benötigt. [Hier geht es zur Download-Seite](https://www.python.org/downloads/).

Die Benutzeroberfläche ist recht übersichtlich und einfach gestaltet, jedoch muss man zur korrekten Nutzung des Simulators einige Dinge beachten. Darum ist hier noch einmal die übliche Vorgehensweise zur korrekten Verwendung des Simulators sowie die Funktionen der Knöpfe erläutert.

### Linienverlauf

Die Simulatorseite öffnet sich ohne geladenem Linienverlauf, wodurch die Rückfallebene angezeigt wird. Um einen Linienverlauf anzuzeigen, wird dieser über die Schaltfläche <ins>**Linienverlauf wählen...**</ins> gewählt. Die mit dem Projekt mitgelieferten Linienverläufe sind jeweils nach Linie, Start- sowie Zielstation benannt. Mehr zu diesen Linienverläufen ist im Abschnitt [Aufbau der Linienverläufe](#) erklärt.

Mit der Schaltfläche <ins>**Linienverlauf entfernen**</ins> wird der gewählte Linienverlauf nicht mehr verwendet und die Anzeige kehrt zur Rückfallebene zurück.

Mit den Pfeiltasten bewegt man den Linienverlauf jeweils um eine Station weiter oder zurück. Mit der danebenliegenden Schaltfläche <ins>**zeige "Bei Halt" Bildschirm**</ins> ruft man den Bildschirm hervor, welcher bei Halt des Zuges sowie wirkender Türfreigabe für 10 Sekunden angezeigt wird, bevor er automatisch zurück zum Linienverlauf wechselt.

Mit der Schaltfläche <ins>**automatischen Linienverlauf starten**</ins> löst man einen etwas rudimentären automatischen Ablauf aus, welcher circa alle 90 Sekunden eine Station weiterläuft.

### Erscheinungsbild & Sound

Mit der Schaltfläche <ins>**zum Dark Mode wechseln**</ins> ändert man das Gesamterscheinungsbild der Fahrgastinformationsanzeige in ein dunkles Design mit weißem Text.

Mit der Schaltfläche <ins>**Rückfallebene zum alten Design wechseln**</ins> tauscht man die aktuelle Rückfallebene mit der vorherigen Variante, welche als Werbung für die Fahrinfo-App der BVG diente.

Mit der Schaltfläche <ins>**Gong-Sounds stummschalten**</ins> werden die Gongs unterdrückt, welche beim Vorwärtslauf der Linienführung zu hören sind.

> [!TIP]
> Diese Einstellungen können auch in der Einstellungs-Datei `content/config/config.json` geändert und gespeichert werden. So muss man die Einstellungen bei jedem Neustart der Simulator-Seite nicht mehr wiederholend über die Schaltflächen anwenden.
>
> Die Einstellung `grundbild` bestimmt die Rückfallebene. Mögliche Optionen sind `new` und `old`.\
> Die Einstellung `darkMode` bestimmt die Rückfallebene. Mögliche Optionen sind `light` und `dark`.\
> Die Einstellung `deafen` bestimmt die Unterdrückung der Gongs. Mögliche Optionen sind `false` und `true`.

### Separate Anzeige

Mit der Schaltfläche <ins>**Anzeige im neuen Tab öffnen**</ins> öffnet man die Fahrgastinformationsanzeige ohne Schaltflächen oder Texte außerhalb der Anzeige in einem neuen Browsertab.

Mit der Schaltfläche <ins>**Anzeige in doppelter Größe anzeigen (1600x1200 Pixel)**</ins> verdoppelt und halbiert man die Größe der separaten Anzeige zur angegebenen Auflösung.

Mit der Schaltfläche <ins>**Schnappschuss von aktueller Anzeige speichern**</ins> speichert man einen Schnappschuss vom aktuellen Inhalt der Anzeige als `.png`-Datei. Die Schnappschüsse werden unabhängig von der angezeigten Größe in einer Auflösung von 1600x1200 Pixeln gespeichert und je nach aktuellem Inhalt der Anzeige entsprechend benannt.

> [!NOTE]
> - Sollte man die separate Anzeige nach Laden eines Linienverlaufes öffnen, wird diese von der Anzeige nicht angezeigt. Daher sollte man zuerst die separate Anzeige öffnen und dann einen Linienverlauf wählen.
>
> - Es ist aus unbekannten Gründen nicht garantiert, dass die Anschlussanzeige auf der separaten Anzeige immer (korrekt) angezeigt wird, wenn diese nicht sichtbar ist. Daher ist es empfohlen, die separate Anzeige sichtbar in einem separaten Browserfenster offen zu halten, sodass beide Seiten sichtbar sind.



## Aufbau der Linienverläufe

> [!TIP]
> Es empfiehlt sich, den Aufbau der mitgelieferten Linienverläufe anzuschauen, um einige Regelungen besser verstehen zu können.

Die Linienverläufe befinden sich im gleichnamigen Ordner des Projektes und stellen die jeweilige Linienführung da, beispielsweise die U2 von Ruhleben nach Pankow.

### Erstellen eigener Linienverläufe

Von der Homepage aus gelangt man über die Schaltfläche <ins>**zur Linienverlaufbearbeitungsseite**</ins> zur Linienverlaufbearbeitungsseite. Auf dieser ist es möglich, seine eigenen Linien zu erstellen, sowie auch bestehende Linien zu bearbeiten.

Für eine weitesgehend fehlerfreie Nutzung dieser Seite erläutere ich hier einmal die Funktionen der verschiedenen Schaltflächen sowie Eingabefelder.

<ins>**.json zum Bearbeiten wählen...**</ins>\
Lädt bei Wahl einer .json den Linienverlauf zum Bearbeiten verschiedener Eigenschaften dieser.

<ins>**.json entfernen & zurücksetzen**</ins>\
Leert nach Bestätigung den Linienverlauf auf der Bearbeitungsseite und setzt alle Werte auf den Ursprungszustand zurück.

<ins>**Linie eingeben...**</ins>\
Ermöglicht die Eingabe einer oder zwei Ziffern, welche mit dem davorliegenden U die Linienbezeichnung bilden.

> [!NOTE]
> Folgende Linien sind zur Verwendung verfügbar: `U0` `U1` `U2` `U3` `U4` `U5` `U6` `U7` `U8` `U9` `U10` `U11` `U12`\* `U15` `U35` `U55` `U67`\*
>
> Linien, die mit \* markiert wurden, sind Doppellinien.

<ins>**Ist Doppellinie?**</ins>\
Bestimmt, ob die angegebene Linienbezeichnung einer Doppellinie gehört. Als Beispiel zählt die U12 als Doppellinie, da sie über die U1 und U2 verläuft. Ist nur auswählbar, wenn die Linienbezeichnung aus zwei Ziffern besteht.

<ins>**Startlinie**</ins>\
Bestimmt die Startlinie der Doppellinie. Kann aus einer der beiden Ziffern der Linienbezechnung bestehen. Als Beispiel wird U2 eingegeben, wenn man auf der U12 von Ruhleben aus startet.

<ins>**+ Station hinzufügen**</ins>\
Fügt eine neue Station zum Linienverlauf hinzu.

<ins>**Verlauf umkehren**</ins>\
Wendet die Ablaufrichtung des gesamten Linienverlaufs. Sollte die Linie eine Doppellinie sein, muss die Startlinie angepasst werden.

<ins>**als .json exportieren**</ins>\
Exportiert den Linienverlauf in seinem aktuellen Zustand als `.json`-Datei.

<ins>**Vorschau Linienverlauf**</ins>\
Zeigt die Namen sowie weitere Eigenschaften der aktuellen Station auf dem Linienverlauf des Berliner Fensters.

<ins>**Vorschau "Bei Halt" Bildschirm**</ins>\
Zeigt den Namen sowie weitere Eigenschaften der aktuellen Station auf dem "Bei Halt" Bildschirm des Berliner Fensters.

<ins>**Station in Vorschau zeigen**</ins>\
Zeigt Namen und Eigenschaften der relevanten Station in den Vorschauanzeigen. Änderungen werden automatisch angezeigt.

<ins>**Stationsnamen eingeben...**</ins>\
Der Name der Station, aufgeteilt für drei verschiedene Anzeigesituationen.

> [!TIP]
> Die Fahrgastinformation des Berliner Fensters hat einige spezifische Verhaltensregeln was das Anzeigen des Stationsnamen angeht, weswegen der Name auf drei Eingabefelder aufgeteilt ist.
>
> Stationen mit dem Wort 'Straße' am Ende werden üblicherweise auf 'Str.' abgekürzt. Ein halber Ausnahmefall besteht, wenn die relevante Station am Endpunkt des Linienverlaufes liegt, dort wird der Name nur auf dem "Bei Halt" Bildschirm auf 'Str.' abgekürzt.
> 
> Zusätzlich wurden der erste und die nächsten beiden Positionen des Stationsnamen aufgetrennt, um den Zeilenumbruch besser einsetzen zu können, sollte der Stationsname zu lang sein, sodass er doppelzeilig sein muss.
>
> Ist der Stationsname zu lang, besitzt die Station jedoch einen Namenszusatz, muss der Stationsname ausnahmsweise verkleinert werden, sodass er passt. Solch einen Ausnahmefall wäre in Realität die Station Franz-Neumann-Platz (U8). Naturkundemuseum (U6) ist auch solch ein Ausnahmefall, nur ohne Namenszusatz. Das liegt daran, dass der Stationsname keine Trennstriche besitzt, an diese man einen Zeilenumbruch beifügen kann.

<ins>**Ist Stationsname doppelzeilig?**</ins>\
Bestimmt, ob Stationsname doppelzeilig ist. Schiebt demenstprechend die folgenden zwei Stationen etwas nach unten.

<ins>**Barrierefreier Zugang:**</ins>\
Bestimmt, welche Art der Barrierefreiheit im Ein- und Ausgang der relevanten Station verfügbar ist.

<ins>**Übergangsstation**</ins>\
Bestimmt die Station, bei der die Doppellinie die Ursprungslinie wechselt. Als Beispiel wechselt die U12 an der Station Wittenbergplatz von der U2 zur U1. Ist nur auswählbar, wenn die Linie eine Doppellinie ist.

> [!NOTE]
> Die Vorschauanzeige zeigt bei jeder Station die Linienfarbe der Startlinie, dies funktioniert im Berliner Fenster Simulator jedoch fehlerfrei.

<ins>**Namenszusatz eingeben...**</ins>\
Bestimmt den Namenszusatz der relevanten Station. Beispielsweise hat die Station Kienberg den Namenszusatz 'Gärten der Welt'.

<ins>**Stations-ID eingeben...**</ins>\
Die Stations-ID hängt mit der verwendeten API für die Echtzeitanschlüsse zusammen.

> [!IMPORTANT]
> Um die Stations-ID zu erhalten, ist zunächst die Seite [v6.bvg.transport.rest/stops](https://v6.bvg.transport.rest/stops/) zu besuchen. Dort kann man mit `Strg + F` nach der gewünschten Station suchen. Für das Beispiel Alexanderplatz findet man dort die Zeile `"id": "de:11000:900100003",`, jedoch ist nur die längste Zahl beginnend mit der Ziffer `9` relevant, also `900100003`.


## Sonstiges

### Weitere Informationen

> [!NOTE]
> - Zum grundlegenden Aufbau der Webseiten sowie ihrer Funktionalität wurde künstliche Intelligenz als Unterstützung eingesetzt.
>
> - Die Layouts der verschiedenen Anzeigen wurden mit äußerster Genauigkeit und mit verschiedensten Referenzmaterialien wie Gestaltungsrichtlinien, Fotografien und sonstigen Medien gestaltet.
>
> - Die separate Anzeige ist unter anderem auch dafür gedacht, auf einem geeigneten 4:3-Bildschirm angezeigt zu werden.
>
> - Die Anschlussanzeige verwendet [v6.bvg.transport.rest](https://v6.bvg.transport.rest/) für das Anzeigen von Echtzeitanschlüssen.
>
> - Ein kleiner Bestandteil dieses Projektes ist vorübergehend absichtlich unrealistisch: Die Markierung der Regionallinien in den Anschlusslisten sind in diesem Projekt mit dem Piktogramm "Bahn" und separatem Text für die Linienbezeichnung dargestellt, während diese im realen Vorbild wie die S- und U-Bahnlinien ihre eigenen Symbole haben.



### Nutzungsbedingungen

> [!IMPORTANT]
> Die folgenden Nutzungsbedingungen entsprechen meinen persönlichen Erwartungen an die Nutzer auf moralischer Ebene und sind lediglich als Bitten anzusehen, unabhängig von ihrer Formulierung.
>
> Die folgenden Nutzungsbedingungen stehen nicht im Konflikt mit der geltenden MIT-Lizenz.

> - Das Projekt ist nicht an andere Nutzer zu verkaufen. Die Verbreitung des Projektes hat kostenfrei zu erfolgen und geschieht entweder mit direktem Teilen des Projektes als Archivdatei oder mit Verlinken der GitHub-Repository.
>
> - Bei Verwendung verschiedener Inhalte des Projektes für eigene Projekte, für welche das Berliner Fenster geeignet ist, ist nach Möglichkeit auf die GitHub-Repository dieses Projektes zu verweisen.
>
> - Das Projekt ist nicht für schädliche oder irreführende Zwecke einzusetzen. Darunter fällt beispielsweise die absichtliche Verwirrung von Fahrgästen im ÖPNV.



### Haftungsausschluss

Für Schäden und Folgen, die aus missbräuchlicher Verwendung des Simulators resultieren, übernehme ich keine Haftung.



### Rechtliches

Die Berliner Verkehrsbetriebe ("BVG") sind rechtmäßige Inhaber der erwähnten bzw. verwendeten Namen, Begriffe, Schriftarten, Logos, Zeichen
und sonstiger Inhalte, welche klar identifizierbar zu dem Unternehmen gehören.

Die Deutsche Bahn AG ("DB AG") sowie der Verkehrsbund Berlin-Brandenburg ("VBB") sind jeweils rechtmäßige Inhaber
der verwendeten Logos und Zeichen für den Anschlüsse-Bildschirm des Simulators.

Die Berliner Fenster GmbH ist rechtmäßiger Inhaber des Namens "Berliner Fenster" und des dazugehörigen Logos.

Alle genannten Marken und deren Bestandteile bleiben Eigentum der jeweiligen Inhaber und sind nicht Bestandteil der MIT-Lizenz dieses Projektes.



### Kontakt

Bei jeglichen Anliegen bin ich unter folgenden Kontaktmöglichkeiten zu erreichen:

Mailadresse: `0117myron@gmail.com`\
Discord: `@myron_0117`
