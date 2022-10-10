---
archetype: assignment
title: "Meilenstein 1.3: Constraints"
author: "Carsten Gips (FH Bielefeld)"
points: 10
weight: 3

hidden: true
---



## Logikrätsel als CSP

Betrachten Sie erneut die Variante des berühmten
["Einstein-Rätsels"](https://de.wikipedia.org/wiki/Zebrar%C3%A4tsel)
auf Wikipedia.

Formulieren Sie das Problem als CSP (Variablen, Wertebereiche, Constraints)
auf dem Papier. Machen Sie sich zunächst klar, was die Variablen und was deren
Wertebereiche sind. Schreiben Sie die Constraints als (unäre bzw. binäre)
Relationen auf.

Formulieren Sie das Problem als CSP (Variablen, Wertebereiche, Constraints) auf dem
Papier. Machen Sie sich zunächst klar, was die Variablen und was deren Wertebereiche
sind. Schreiben Sie die Constraints als (unäre bzw. binäre) Relationen auf.

Implementieren Sie die in der Vorlesung besprochenen Algorithmen und Heuristiken zum
Lösen von CSP. Sie können auch mit dem Paket `aima.core.search.csp` starten.[^code]

Testen Sie zunächst nur die Tiefensuche ohne Heuristiken. Nehmen Sie schrittweise
die besprochenen Heuristiken dazu. Implementieren Sie AC-3 und nutzen Sie diesen
Algorithmus zur Reduktion der Wertemengen vor der BT-Suche.

Vergleichen Sie die Ergebnisse mit denen von Meilenstein 1.2.


[^code]: Sie finden das Repository unter
[github.com/aimacode/aima-java](https://github.com/aimacode/aima-java).
