---
archetype: assignment
title: "Meilenstein 1.4: Entscheidungsbäume"
author: "Carsten Gips (HSBI)"
weight: 4

hidden: true
---



## Entscheidungsbäume mit CAL3 und ID3

Es ist wieder Wahlkampf: Zwei Kandidaten O und M bewerben sich um die
Kanzlerschaft. Die folgende Tabelle zeigt die Präferenzen von sieben Wählern.

| Nr. | Alter    | Einkommen | Bildung  | Kandidat |
|:----|:---------|:----------|:---------|:---------|
| 1   | $\ge 35$ | hoch      | Abitur   | O        |
| 2   | $< 35$   | niedrig   | Master   | O        |
| 3   | $\ge 35$ | hoch      | Bachelor | M        |
| 4   | $\ge 35$ | niedrig   | Abitur   | M        |
| 5   | $\ge 35$ | hoch      | Master   | O        |
| 6   | $< 35$   | hoch      | Bachelor | O        |
| 7   | $< 35$   | niedrig   | Abitur   | M        |

Trainieren Sie nacheinander mit den Verfahren CAL3 und ID3 auf der obigen
Trainingsmenge je einen Entscheidungsbaum. Nutzen Sie für CAL3 dabei die
Schwellen $S_1=4$ und $S_2=0.7$.

Sie können dafür eine Handsimulation anwenden oder die Algorithmen implementieren.
Sie können gern auch die Java-Klassen im Paket [`aima.core.learning`] bzw. die
Python-Klassen in [`learning.py`] als Ausgangspunkt nutzen.[^aima]


[`aima.core.learning`]: https://github.com/aimacode/aima-java/blob/AIMA3e/aima-core/src/main/java/aima/core/learning/learners/DecisionTreeLearner.java
[`learning.py`]: https://github.com/aimacode/aima-python/blob/master/learning.py
[^aima]: Im Python-Code tauchen immer wieder "TODO"-Marker auf - bitte mit Vorsicht genießen!
