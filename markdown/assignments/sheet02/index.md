---
type: assignment
title: "Blatt 02: Lokale Suche, GA"
author: "Carsten Gips (FH Bielefeld)"
points: 10
hidden: true
weight: 2
sketch: true
---



## A2.1 Modellierung von GA (2P)

Folgende Probleme sollen mit einem GA gelöst werden:

1.  das *Travelling Salesman Problem* für 10 Städte, d.h. das Finden der
    kürzesten Route zwischen 10 Städten,

2.  ein $9 \times 9$-*Sudoku*-Rätsel,

3.  das $n$-Queens-Problem (für ein beliebiges, aber festes $n$).

Geben Sie für diese Probleme jeweils eine geeignete **Kodierung** der
Individuen, passende Operatoren (**Crossover**, **Mutation**) und eine
geeignete **Fitnessfunktion** an, damit das Problem mit einem GA gelöst
werden kann. Begründen Sie Ihre Wahl!

Was würden Sie noch benötigen, um die obigen Probleme jeweils mit
Simulated Annealing lösen zu können?

*Thema*: Modellierung für GA und Gradientensuche



## A2.2 Implementierung (5P)

Suchen Sie sich ein geeignetes Problem und implementieren Sie den in der
Vorlesung besprochenen GA.

Wenn Sie den Algorithmus nicht komplett selbst schreiben wollen, können Sie
beispielsweise die Java-Klassen im Paket `aima.core.search.local` als
Ausgangspunkt nutzen.[^code]

Untersuchen Sie **systematisch** unterschiedliche Varianten/Einstellungen der
in der VL vorgestellten Operatoren. Führen Sie pro Einstellung jeweils mind.
100 Läufe durch und messen Sie die besprochenen Kennzahlen.

Erstellen Sie eine geeignete (systematische!) Auswertung Ihrer Experimente.

*Thema*: Implementierung von GA und Auswertung der Ergebnisse, wissenschaftliche Untersuchung

[^code]: Sie finden das Repository unter
[github.com/aimacode/aima-java](https://github.com/aimacode/aima-java).



## A2.3 Anwendungen (3P)

1.  Analysieren Sie die Implementierung von
    [Randal Olson "Here's Waldo: Computing the optimal search strategy for finding Waldo"](http://www.randalolson.com/2015/02/03/heres-waldo-computing-the-optimal-search-strategy-for-finding-waldo/)
    ([Direktlink](https://github.com/rhiever/Data-Analysis-and-Machine-Learning-Projects)).

2.  Schauen Sie sich nun den ["Evolution Simulator"](https://www.openprocessing.org/sketch/205807)
    an. Wie ist dort die Modellierung erfolgt (Kodierung, Operatoren, Fitnessfunktion)?

3.  Wie werden EA/GA konkret im ["american fuzzy lop"](https://lcamtuf.coredump.cx/afl/)
    eingesetzt?

Welche Fitnessfunktion wurden in den drei Beispielen jeweils genutzt, wie die
Individuen und die Operatoren codiert?


Recherchieren Sie, in welchen *anderen* Anwendungen Evolutionäre Algorithmen
eingesetzt werden. Erklären Sie kurz, wie und wofür die EA/GA jeweils genutzt
werden.

*Thema*: Analyse von GA-Implementierungen
