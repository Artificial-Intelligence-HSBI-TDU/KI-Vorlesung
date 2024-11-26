---
archetype: assignment
title: "Übungsblatt: Lokale Suche, GA"
author: "Carsten Gips (HSBI)"
points: "10 Punkte"

hidden: true
---

<!--  pandoc -s -f markdown -t markdown+smart-grid_tables-multiline_tables-simple_tables --columns=94 --reference-links=true  sheet-ea.md  -o xxx.md  -->

## EA.01: Modellierung von GA (2P)

Betrachten Sie das 8-Queens-Problem sowie das Landkarten-Färbeproblem (aus Vorlesung [CSP:
Intro]). Starten Sie beim Färbeproblem mit fünf verschiedenen Farben, Ziel sollte eine
konfliktfreie Einfärbung mit einer minimalen Anzahl an Farben sein.

Geben Sie für beide Probleme je eine geeignete **Kodierung** der Individuen, passende
Operatoren (**Crossover**, **Mutation**) und eine geeignete **Fitnessfunktion** an, damit die
Probleme mit einem GA gelöst werden können. Begründen Sie Ihre Wahl!

Was würden Sie noch benötigen, um die obigen Probleme jeweils mit Simulated Annealing lösen zu
können?

*Thema*: Modellierung für GA und Gradientensuche

## EA.02: Implementierung (5P)

Implementieren Sie den in der Vorlesung besprochenen GA und wenden Sie den Algorithmus
nacheinander auf beide Probleme an. Sie können gern auch die Java-Klassen im Paket
[`aima.core.search.local`] bzw. die Python-Klassen in [`search.py`] als Ausgangspunkt
nutzen.[^1]

Untersuchen Sie **systematisch** unterschiedliche Varianten/Einstellungen der in der VL
vorgestellten Operatoren. Führen Sie pro Einstellung jeweils mind. 100 Läufe durch und messen
Sie die besprochenen Kennzahlen.

Erstellen Sie eine geeignete (systematische!) Auswertung Ihrer Experimente.

## EA.03: Anwendungen (3P)

1.  Analysieren Sie die Implementierung von [Randal Olson "Here's Waldo: Computing the optimal
    search strategy for finding Waldo"] ([Direktlink]).
2.  Schauen Sie sich nun den ["Evolution Simulator"] an. Wie ist dort die Modellierung erfolgt
    (Kodierung, Operatoren, Fitnessfunktion)?
3.  Wie werden EA/GA konkret im ["american fuzzy lop"] eingesetzt?

Welche Fitnessfunktion wurden in den drei Beispielen jeweils genutzt, wie die Individuen und
die Operatoren codiert?

Recherchieren Sie, in welchen *anderen* Anwendungen Evolutionäre Algorithmen eingesetzt
werden. Erklären Sie kurz, wie und wofür die EA/GA jeweils genutzt werden.

*Thema*: Analyse von GA-Implementierungen

[^1]: Im Python-Code tauchen immer wieder "TODO"-Marker auf - bitte mit Vorsicht genießen!

  [CSP: Intro]: ../lecture/csp/csp1-intro.md
  [`aima.core.search.local`]: https://github.com/aimacode/aima-java/tree/AIMA3e/aima-core/src/main/java/aima/core/search/local
  [`search.py`]: https://github.com/aimacode/aima-python/blob/master/search.py
  [Randal Olson "Here's Waldo: Computing the optimal search strategy for finding Waldo"]: http://www.randalolson.com/2015/02/03/heres-waldo-computing-the-optimal-search-strategy-for-finding-waldo/
  [Direktlink]: https://github.com/rhiever/Data-Analysis-and-Machine-Learning-Projects
  ["Evolution Simulator"]: https://www.openprocessing.org/sketch/205807
  ["american fuzzy lop"]: https://lcamtuf.coredump.cx/afl/
