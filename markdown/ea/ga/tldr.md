---
title: "TL;DR"
disableToc: true
hidden: true
---


Lokale Suchverfahren: Nur das Ergebnis zählt!

Evolutionäre Algorithmen sind lokale Suchverfahren, wobei gleichzeitig an mehreren Stellen im Problemraum
gesucht wird. Sie bedienen sich Mechanismen aus der Evolution: Es gibt eine Population von Individuen,
die jedes das Problem kodieren ("vollständige Zustandsbeschreibung") und damit im Laufe der Suche zu einer
möglichen Lösung werden können.

Die Individuen werden mit Hilfe einer Fitnessfunktion bewertet, wie gut sie bereits an das Problem angepasst
sind (bzw. wie sehr sie bereits der gesuchten Lösung entsprechen). Über eine fitnessproportionale Selektion
werden Individuen ausgewählt, aus denen mittels Rekombination (auch "Crossover" genannt) neue Individuen mit
Eigenschaften der Eltern erzeugt werden. Über eine Mutation werden dann noch Elemente der neuen Individuen
leicht verändert, bevor diese zur neuen Population werden ...

Durch das Anwenden von Rekombination und Mutation springt man im Problemraum umher. Auch wenn als Basis die
fitteren (angepassteren) Individuen dienen, kann es wie bei allen lokalen Suchverfahren vorkommen, dass
sich der Algorithmus in lokalen Minima (bzw. lokalen Maxima, je nach Richtung der Optimierung) festfrisst.
