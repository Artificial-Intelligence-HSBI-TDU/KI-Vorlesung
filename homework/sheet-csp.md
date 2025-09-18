---
author: Carsten Gips (HSBI)
no_beamer: true
points: 10 Punkte
title: "Übungsblatt: Constraints"
---

# CSP.01: Logikrätsel (2P)

Betrachten Sie die Variante des berühmten
["Einstein-Rätsels"](https://de.wikipedia.org/wiki/Zebrar%C3%A4tsel) auf Wikipedia.

Formulieren Sie das Problem als CSP (Variablen, Wertebereiche, Constraints) zunächst
auf dem Papier. Machen Sie sich klar, was die Variablen und was deren Wertebereiche
sind. Schreiben Sie die Constraints als (unäre bzw. binäre) Relationen zwischen den
Variablen auf.

*Hinweis*: Machen Sie sich zunächst klar, was die Variablen und was deren
Wertebereiche sind. Schreiben Sie die Constraints als (unäre bzw. binäre) Relationen
auf.

*Thema*: Formulierung von Problemen als CSP

# CSP.02: Framework für Constraint Satisfaction (3P)

Lösen Sie nun das obige Rätsel (aus CSP.01):

1.  Lösen Sie das Rätsel zunächst mit dem Basis-Algorithmus `BT_Search` aus der
    Vorlesung.
2.  Erweitern Sie den Algorithmus um die Heuristiken MRV und Gradheuristik und lösen
    Sie das Problem erneut. Vergleichen Sie die Ergebnisse und die Laufzeit der
    beiden Experimente.
3.  Wenden Sie vor dem Start von `BT_Search` den AC-3 an. Erhalten Sie damit bereits
    eine Lösung (bzw. Unlösbarkeit)? Falls nicht, wenden Sie anschließend den
    ergänzten Algorithmus aus Schritt (2) an. Vergleichen Sie wieder die Ergebnisse
    und die Laufzeiten.
4.  Implementieren Sie das Rätsel nun in [MiniZinc](https://www.minizinc.org/).
    Vergleichen Sie wieder die Ergebnisse und die Laufzeiten.

Sie können dafür eine Handsimulation anwenden oder die Algorithmen implementieren.
Sie können gern auch die Java-Klassen im Paket
[`aima.core.search.csp`](https://github.com/aimacode/aima-java/tree/AIMA3e/aima-core/src/main/java/aima/core/search/csp)
bzw. die Python-Klassen in
[`csp.py`](https://github.com/aimacode/aima-python/blob/master/csp.py) als
Ausgangspunkt nutzen.[^1]

# CSP.03: Kantenkonsistenz mit AC-3 (2P)

Sei $D=\lbrace 0, \ldots, 5 \rbrace$, und ein Constraintproblem definiert durch

$$\langle
    \lbrace v_1, v_2, v_3, v_4 \rbrace,
    \lbrace D_{v_1} = D_{v_2} = D_{v_3} = D_{v_4} = D \rbrace,
    \lbrace c_1, c_2, c_3, c_4 \rbrace
\rangle$$

mit

-   $c_1=\left((v_1,v_2), \lbrace (x,y) \in D^2 | x+y = 3 \rbrace\right)$,
-   $c_2=\left((v_2,v_3), \lbrace (x,y) \in D^2 | x+y \le 3 \rbrace\right)$,
-   $c_3=\left((v_1,v_3), \lbrace (x,y) \in D^2 | x \le y \rbrace\right)$ und
-   $c_4=\left((v_3,v_4), \lbrace (x,y) \in D^2 | x \ne y \rbrace\right)$.

1.  (1P) Zeichen Sie den Constraint-Graph
2.  (2P) Wenden Sie den AC-3-Algorithmus auf das CSP an. Geben Sie den Zustand der
    Queue und das Ergebnis von `ARC_Reduce`, d.h. den Ergebniszustand des aktuellen
    $D_i$, für jede Iteration des Algorithmus an.

*Thema*: Handsimulation des AC-3-Algorithmus

# CSP.04: Forward Checking und Kantenkonsistenz (1P)

Betrachten Sie erneut das CSP aus der vorigen Aufgabe und die Zuweisung
$\alpha = \lbrace v_1 \to  2 \rbrace$.

1.  (1P) Erzeugen Sie Kantenkonsistenz in $\alpha$. Geben Sie hierzu die
    Wertebereiche der Variablen vor und nach dem Erzeugen der Kantenkonsistenz an.

    *Hinweis*: Sie dürfen annehmen, dass der Wertebereich von Variablen mit bereits
    zugewiesenen Werten nur aus dem zugewiesenen Wert besteht, während unbelegte
    Variablen den vollen Wertebereich haben.

    *Hinweis*: Sie müssen zur Lösung dieser Teilaufgabe nicht den AC-3 nutze.

2.  (1P) Führen Sie Forward-Checking in $\alpha$ aus. Vergleichen Sie das Ergebnis
    mit (1).

*Thema*: Kantenkonsistenz und Forward Checking verstehen

# CSP.05: Sudoku (2P)

Formulieren Sie [Sudoku](https://en.wikipedia.org/wiki/Sudoku) als CSP und geben Sie
Variablen, Domänen und Constraints an.

Implementieren Sie *MAC* (BT-Search plus AC-3) und lösen Sie das Sudoku-CSP damit.

Implementieren Sie den *Min-Conflicts* Algorithmus und lösen Sie das Sudoku-CSP
damit.

Implementieren Sie das Problem in [MiniZinc](https://www.minizinc.org/) und lösen
Sie das selbe Rätsel.

Vergleichen Sie beide Algorithmen. Wie aufwändig ist die Repräsentation in MiniZinc
im Vergleich?

*Thema*: BT-Suche plus AC-3 vs. lokale Suche mit Min-Conflicts

[^1]: Im Python-Code tauchen immer wieder "TODO"-Marker auf - bitte mit Vorsicht
    genießen!
