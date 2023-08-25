---
archetype: assignment
title: "Meilenstein 1.3: Constraints"
author: "Carsten Gips (HSBI)"

hidden: true
---



## Logikrätsel als CSP

Betrachten Sie die Variante des berühmten ["Einstein-Rätsels"] auf Wikipedia.

Formulieren Sie das Problem als CSP (Variablen, Wertebereiche, Constraints)
zunächst auf dem Papier. Machen Sie sich klar, was die Variablen und was deren
Wertebereiche sind. Schreiben Sie die Constraints als (unäre bzw. binäre)
Relationen zwischen den Variablen auf.

Lösen Sie nun das Rätsel:

1.  Lösen Sie das Rätsel zunächst mit dem Basis-Algorithmus `BT_Search` aus
    der Vorlesung.
2.  Erweitern Sie den Algorithmus um die Heuristiken MRV und Gradheuristik
    und lösen Sie das Problem erneut. Vergleichen Sie die Ergebnisse und die
    Laufzeit der beiden Experimente.
3.  Wenden Sie vor dem Start von `BT_Search` den AC-3 an. Erhalten Sie damit
    bereits eine Lösung (bzw. Unlösbarkeit)? Falls nicht, wenden Sie anschließend
    den ergänzten Algorithmus aus Schritt (2) an. Vergleichen Sie wieder die
    Ergebnisse und die Laufzeiten.

Sie können dafür eine Handsimulation anwenden oder die Algorithmen implementieren.
Sie können gern auch die Java-Klassen im Paket [`aima.core.search.csp`] bzw. die
Python-Klassen in [`csp.py`] als Ausgangspunkt nutzen.[^aima]


["Einstein-Rätsels"]: https://de.wikipedia.org/wiki/Zebrar%C3%A4tsel
[`aima.core.search.csp`]: https://github.com/aimacode/aima-java/tree/AIMA3e/aima-core/src/main/java/aima/core/search/csp
[`csp.py`]: https://github.com/aimacode/aima-python/blob/master/csp.py
[^aima]: Im Python-Code tauchen immer wieder "TODO"-Marker auf - bitte mit Vorsicht genießen!
