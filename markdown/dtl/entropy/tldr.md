---
title: "TL;DR"
disableToc: true
hidden: true
---


Die Entropie kann als Maß für den Informationsgehalt einer Trainingsmenge betrachtet werden:
Wieviele Ja/Nein-Entscheidungen sind nötig, um die Daten fehlerfrei zu repräsentieren?

Nach der Wahl eines Attributs kann die verbleibende mittlere Entropie berechnet werden. Damit
hat man ein Kriterium für die Auswahl von Attributen beim Aufbau von Entscheidungsbäumen:
Nimm das Attribut, welches einen möglichst hohen Informationsgehalt hat. Oder andersherum:
Wähle das Attribut, bei dem die verbleibende mittlere Entropie der Trainingsmenge nach der
Wahl des Attributs am kleinsten ist.
