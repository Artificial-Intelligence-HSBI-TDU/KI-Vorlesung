---
archetype: assignment
title: "Meilenstein 1.2: Lokale Suche, GA"
author: "Carsten Gips (FH Bielefeld)"
points: 10
weight: 2

hidden: true
---



## Rätsel mit GA

Betrachten Sie das 8-Queens-Problem sowie das Landkarten-Färbeproblem (aus
Vorlesung `["CSP: Intro"]({{< ref "/csp/intro" >}})`{=markdown}).

Geben Sie für beide Probleme je eine geeignete **Kodierung** der Individuen,
passende Operatoren (**Crossover**, **Mutation**) und eine geeignete
**Fitnessfunktion** an, damit die Probleme mit einem GA gelöst werden können.
Begründen Sie Ihre Wahl!

Implementieren Sie den in der Vorlesung besprochenen GA und wenden Sie den
Algorithmus nacheinander auf beide Probleme an. Sie können gern auch die
Java-Klassen im Paket [`aima.core.search.local`] bzw. die Python-Klassen in
[`search.py`] als Ausgangspunkt nutzen.

Untersuchen Sie **systematisch** unterschiedliche Varianten/Einstellungen der
in der VL vorgestellten Operatoren. Führen Sie pro Einstellung jeweils mind.
100 Läufe durch und messen Sie die besprochenen Kennzahlen.

Erstellen Sie eine geeignete (systematische!) Auswertung Ihrer Experimente.


[`aima.core.search.local`]: https://github.com/aimacode/aima-java/tree/AIMA3e/aima-core/src/main/java/aima/core/search/local
[`search.py`]: https://github.com/aimacode/aima-python/blob/master/search.py
