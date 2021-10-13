---
title: "TL;DR"
disableToc: true
hidden: true
---


Lokale Suchverfahren: Nur das Ergebnis zählt! Nicht der Weg ist das Ziel, sondern nur
das Erreichen des Ziels.

Das Problem bei der Gradientensuche ist, dass man eine Kostenfunktion benötigt und
diese auch **lokale Minima** enthalten kann. Mit der reinen Gradientensuche würde
man bei Erreichen lokaler Minima die Suche abbrechen (müssen), da es keine weitere
Verbesserung unter den Nachfolgern mehr geben kann. In Anlehnung an das Abkühlen von
Metall kann hier eine Variante der lokalen Suche helfen: **Simulated Annealing**.
Man führt einen "Temperatur"-Parameter ein, der im Laufe der Suche immer kleiner
wird und schließlich gegen Null geht. In Abhängigkeit von dieser "Temperatur" wird
mit einer bestimmten Wahrscheinlichkeit eine Verschlechterung akzeptiert: Bei einer
hohen Temperatur ist diese Wahrscheinlichkeit höher, bei einer niedrigen Temperatur
niedriger, so dass das Verfahren in ein normales Hill-Climbing übergeht. Damit kann
man ein Festfressen in lokalen Minima vermeiden bzw. überwinden.
