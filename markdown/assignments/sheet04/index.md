---
type: assignment
title: "Blatt 04: Constraints"
author: "Carsten Gips (FH Bielefeld)"
points: 10
hidden: true
weight: 4
---



## A4.1: Logikrätsel (2P)

Betrachten Sie die Variante des berühmten ["Einstein-Rätsels"](https://de.wikipedia.org/wiki/Zebrar%C3%A4tsel)
auf Wikipedia.

Formulieren Sie das Problem als CSP (Variablen, Wertebereiche, Constraints)
auf dem Papier.

*Hinweis*: Machen Sie sich zunächst klar, was die Variablen und was deren Wertebereiche
sind. Schreiben Sie die Constraints als (unäre bzw. binäre) Relationen auf.

*Thema*: Formulierung von Problemen als CSP



## A4.2: Framework für Constraint Satisfaction (2P)

Checken Sie das AIMA-Repository^[Sie finden das Repository unter
[github.com/aimacode/aima-java](https://github.com/aimacode/aima-java).]
aus. Im Paket `aima.core.search.csp` finden Sie Java-Klassen zum Umgang mit
CSPs sowie einige der in der VL besprochenen Algorithmen und Heuristiken.

Nutzen Sie das Framework, um eine Lösung für das Problem aus der vorigen
Aufgabe zu finden.^[Falls Sie die vorige Aufgabe nicht gelöst haben, können
Sie hier gern ein anderes Problem modellieren und lösen.]

Beantworten Sie mit Ihrem Programm die folgende Frage:

> Wo lebt das Zebra und welchem Haus wird Wasser getrunken?

*Hinweis*: Sie können den Solver auch in einer Sprache Ihrer Wahl selbst implementieren.

*Thema*: Implementierung und Anwendung von CSP-Algorithmen



## A4.3: Kantenkonsistenz mit AC-3 (3P)

Sei $D=\lbrace 0, \ldots, 5 \rbrace$, und ein Constraintproblem definiert durch
$$\langle
    \lbrace v_1, v_2, v_3, v_4 \rbrace,
    \lbrace D_{v_1} = D_{v_2} = D_{v_3} = D_{v_4} = D \rbrace,
    \lbrace c_1, c_2, c_3, c_4 \rbrace
\rangle$$
mit

*   $c_1=\left((v_1,v_2), \lbrace (x,y) \in D^2 \;|\; x+y = 3 \rbrace\right)$,
*   $c_2=\left((v_2,v_3), \lbrace (x,y) \in D^2 \;|\; x+y \le 3 \rbrace\right)$,
*   $c_3=\left((v_1,v_3), \lbrace (x,y) \in D^2 \;|\; x \le y \rbrace\right)$ und
*   $c_4=\left((v_3,v_4), \lbrace (x,y) \in D^2 \;|\; x \ne y \rbrace\right)$.

1.  (1P) Zeichen Sie den Constraint-Graph
2.  (2P) Wenden Sie den AC-3-Algorithmus auf das CSP an. Geben Sie den Zustand
    der Queue und das Ergebnis von $Revise$, d.h. den Ergebniszustand des aktuellen
    $D_i$, für jede Iteration des Algorithmus an.

*Thema*: Handsimulation des AC-3-Algorithmus




## A4.4: Forward Checking und Kantenkonsistenz (2P)

Betrachten Sie erneut das CSP aus der vorigen Aufgabe und die Zuweisung
$\alpha = \lbrace v_1\to  2 \rbrace$.

1.  (1P) Erzeugen Sie Kantenkonsistenz in $\alpha$. Geben Sie hierzu die
    Wertebereiche der Variablen vor und nach dem Erzeugen der
    Kantenkonsistenz an.

    *Hinweis*: Sie dürfen annehmen, dass der Wertebereich von Variablen mit
    bereits zugewiesenen Werten nur aus dem zugewiesenen Wert besteht, während
    unbelegte Variablen den vollen Wertebereich haben.

    *Hinweis*: Sie müssen zur Lösung dieser Teilaufgabe nicht den AC-3 handsimulieren.

2.  (1P) Führen Sie Forward-Checking in $\alpha$ aus. Vergleichen Sie das
    Ergebnis mit (1).

*Thema*: Kantenkonsistenz und Forward Checking verstehen




## A4.5: Anwendungen (1P)

Recherchieren Sie, in welchen Anwendungen CSP vorkommen und mit der BT-Suche (plus
Heuristiken) oder sogar AC-3 gelöst werden. Erklären Sie kurz, wie und wofür die
Algorithmen jeweils genutzt werden.

*Thema*: Anwendungen von CSP, BT-Suche und AC-3
