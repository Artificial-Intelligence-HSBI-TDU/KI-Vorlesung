---
title: "TL;DR"
disableToc: true
hidden: true
---


Um ein Problem lösen zu können, muss es zunächst geeignet dargestellt werden. In der KI
betrachten wir Zustände einer Welt, auf die Aktionen angewendet werden können und die die
betrachtete Welt in den/einen Folgezustand bringen. Hier muss unterschieden werden zwischen
deterministischen und stochastischen Welten, ebenso spielt die Beobachtbarkeit durch den
Agenten (die die Welt betrachtende und durch die Aktionen auf die Welt einwirkende Instanz)
eine Rolle: Kann der Agent die Welt komplett beobachten, nur einen Teil davon oder gar nichts?
Es spielt auch eine Rolle, ob es diskrete Zustände gibt, oder ob man mit kontinuierlichen
Variablen zu tun hat. Gibt es nur einen Agenten oder können mehrere Agenten beteiligt sein ...
(In dieser Veranstaltung werden wir uns auf deterministische und voll beobachtbare Welten
mit diskreten Zuständen konzentrieren.)

Dies alles muss bei der Modellierung betrachtet werden. Es empfiehlt sich, die Zustände und
die Aktionen so abstrakt wie möglich zu beschreiben. Anderenfalls kann später die Lösung des
Problems zumindest stark erschwert werden.

Durch das wiederholte Anwenden der Aktionen auf den Startzustand bzw. auf die sich daraus
ergebenden Folgezustände wird der Zustandsraum aufgebaut. Dabei ist zu beachten, dass Aktionen
Vorbedingungen haben können, d.h. unter Umständen nicht auf alle Zustände angewendet werden
können. Die entstehende Struktur (Zustandsraum) kann man formal als Graph repräsentieren: Die
Zustände werden durch die Knoten und die Aktionen als (gerichtete) Kanten im Graph dargestellt
(=> Problemgraph).

Das Problemlösen entspricht nun einer Suche im Problemgraphen: Man sucht einen Weg von einem
Startknoten zu einem Zielknoten, d.h. eine Folge von Aktionen, die den Start- in den Zielzustand
überführen. Der Weg entspricht dann der Lösung des Problems. Normalerweise will man eine bestimmte
Qualität der Lösungen haben: Es sollen die kürzesten Wege (also die mit den wenigsten
Zwischenstationen/Knoten) oder die billigsten Wege (die Summe der an den Kanten annotierten Gewichte
soll minimal sein) gefunden werden.

Zur Suche kann man bei den in dieser Veranstaltung betrachteten deterministischen Problemen mit
diskreten Zuständen den einfachen "Tree-Search"-Algorithmus (Benennung in Anlehnung an [@Russell2020])
einsetzen, der allerdings Wiederholungen und Schleifen zulässt. Mit zwei Erweiterungen wird daraus
der "Graph-Search"-Algorithmus  (Benennung in Anlehnung an [@Russell2020]), der die wiederholte
Untersuchung von bereits besuchten Knoten vermeidet. In beiden Algorithmen wird eine zentrale
Datenstruktur eingesetzt (im [@Russell2020] auch "Frontier" genannt), die die als Nächstes zu
untersuchenden Knoten hält und die damit die Grenze zwischen dem bereits untersuchten Teil des Graphen
und dem unbekannten Teil des Graphen bildet. Je nach Art der Datenstruktur und je nach den betrachteten
Kosten ergeben sich eine Reihe unterschiedlicher Suchalgorithmen, die wir in einer späteren Sitzung
betrachten.

Die Suchverfahren können im Hinblick auf Optimalität, Vollständigkeit und Komplexität beurteilt
werden.
