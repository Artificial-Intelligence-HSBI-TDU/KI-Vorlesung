---
archetype: assignment
title: "Meilenstein 1.2: Lokale Suche, GA"
author: "Carsten Gips (FH Bielefeld)"
points: 10
weight: 2

hidden: true
---



## Logikrätsel mit GA

Betrachten Sie die Variante des berühmten ["Einstein-Rätsels"](https://de.wikipedia.org/wiki/Zebrar%C3%A4tsel)
auf Wikipedia.

Geben Sie für dieses Problem eine geeignete **Kodierung** der Individuen,
passende Operatoren (**Crossover**, **Mutation**) und eine geeignete
**Fitnessfunktion** an, damit das Problem mit einem GA gelöst werden kann.
Begründen Sie Ihre Wahl!

Implementieren Sie den in der Vorlesung besprochenen GA und wenden Sie den
Algorithmus auf das Einstein-Rätsel an. Wenn Sie den Algorithmus nicht komplett
selbst schreiben wollen, können Sie beispielsweise die Klassen im Paket
`aima.core.search.local` als Ausgangspunkt nutzen.[^code]

Untersuchen Sie **systematisch** unterschiedliche Varianten/Einstellungen der
in der VL vorgestellten Operatoren. Führen Sie pro Einstellung jeweils mind.
100 Läufe durch und messen Sie die besprochenen Kennzahlen.

Erstellen Sie eine geeignete (systematische!) Auswertung Ihrer Experimente.


[^code]: Sie finden das Repository unter
[github.com/aimacode/aima-java](https://github.com/aimacode/aima-java).
