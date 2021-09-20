---
type: assignment
title: "Blatt 03: Spiele"
author: "Carsten Gips (FH Bielefeld)"
hidden: true
weight: 3
sketch: true
---


## Modellierung von GA (3P)

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



## Implementierung I (4P)

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



## Implementierung II (3P)

Analysieren Sie die Implementierung von [Randal Olson "Here's Waldo: Computing the optimal search strategy for finding Waldo"](http://www.randalolson.com/2015/02/03/heres-waldo-computing-the-optimal-search-strategy-for-finding-waldo/)^[Direktlink: [github.com/rhiever/Data-Analysis-and-Machine-Learning-Projects](https://github.com/rhiever/Data-Analysis-and-Machine-Learning-Projects)].

Schauen Sie sich nun den ["Evolution Simulator"](https://www.openprocessing.org/sketch/205807) an.
Wie ist dort die Modellierung erfolgt (Kodierung, Operatoren, Fitnessfunktion)?

Wie werden EA/GA konkret im ["american fuzzy lop" (*afl*)](https://lcamtuf.coredump.cx/afl/) eingesetzt?

Welche Fitnessfunktion wurden jeweils genutzt, wie die Individuen und die Operatoren codiert?

*Thema*: Analyse von GA-Implementierungen



## Anwendungen (2P)

Recherchieren Sie, in welchen Anwendungen Evolutionäre Algorithmen eingesetzt
werden. Erklären Sie kurz, wie und wofür die EA/GA jeweils genutzt werden.

*Thema*: Anwendungen von EA/GA



{{% challenges %}}
## Bonus: Wuppie (2P)
Erstellen Sie ...
{{% /challenges %}}
