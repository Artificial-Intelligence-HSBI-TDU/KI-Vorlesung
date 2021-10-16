---
type: assignment
title: "Blatt 03: Spiele"
author: "Carsten Gips (FH Bielefeld)"
points: 10
hidden: true
weight: 3
---



## A3.1: Handsimulation: Minimax und alpha-beta-Pruning (3P)

![](images/alphabeta.png)

1.  (1P) Geben Sie für den Spielbaum die Minimax-Bewertungen an.

2.  (1P) Markieren Sie die Kanten, die bei alpha-beta-Pruning nicht mehr
    untersucht werden würden, d.h. wo Pruning stattfinden würde. Geben
    Sie für jeden Knoten die (sich ändernden) $\alpha$- und $\beta$-Werte
    an.

3.  (1P) Können die Knoten derart geordnet werden, dass alpha-beta-Pruning
    eine größere Anzahl von Zweigen abschneidet? Wenn ja, geben Sie eine
    solche Ordnung an. Wenn nein, begründen Sie Ihre Antwort.

*Hinweis*: Reihenfolge der Abarbeitung der Kindknoten: Wie in der VL von
links nach rechts.

*Thema*: Minimax und alpha-beta-Pruning



## A3.2: Optimale Spiele: Minimax und alpha-beta-Pruning (3P)

1.  (1P) Implementieren Sie den Minimax-Algorithmus (wie in der VL
    besprochen) am Beispiel *Tic Tac Toe* in einer Sprache Ihrer Wahl.

2.  (1P) Ergänzen Sie Ihre Implementierung um alpha-beta-Pruning.

3.  (1P) Vergleichen Sie die Anzahl der jeweils berechneten Knoten.
    Überlegen Sie sich dazu ein **sinnvolles** Szenario.

*Thema*: Anwendung Minimax und alpha-beta-Pruning



## A3.3: Minimax vereinfachen (2P)

Vereinfachen Sie den Minimax-Algorithmus aus der Vorlesung, indem Sie die
Eigenschaft *Nullsummenspiel* berücksichtigen und die Funktionen `Min-Value`
und `Max-Value` in eine einzige Funktion ohne explizite Unterscheidung der
Spieler zusammenfassen.

Überlegen Sie sich einen Beispielbaum und zeigen Sie anhand dessen die
Bewertung durch den Minimax-Algorithmus und durch Ihren vereinfachten
Algorithmus.

*Thema*: Nullsummenspiel, Minimax



## A3.4: Suchtiefe begrenzen (1P)

Die Verwendung der Suchtiefenbeschränkung erfordert den Einsatz einer
Evaluierungsfunktion. Betrachten Sie die folgende Definition einer
Evaluierungsfunktion für *Tic-Tac-Toe*:^[Quelle: [AIMA 3rd ed.](http://aima.cs.berkeley.edu)]

> Sei $X_n$ die Anzahl der Zeilen, Spalten und Diagonalen mit genau $n$
> $X$-Symbolen. Analog sei $O_n$ die Anzahl der Zeilen, Spalten und Diagonalen
> mit genau $n$ $O$-Symbolen. Die Evaluierungsfunktion $\operatorname{Eval}(s)$
> für einen Spielzustand $s$ ist dann wie folgt definiert:
> $$
>    \operatorname{Eval}(s) = \left\{
>    \begin{array}{l@{\qquad}l}
>    +1 & \text{falls } X_3(s)=1\\
>    -1 & \text{falls } O_3(s)=1\\
>    3X_2(s) + X_1(s) - (3O_2(s) + O_1(s)) & \text{sonst}
>    \end{array}
>    \right.
>$$

Geben Sie die Werte der Evaluierungsfunktion für sechs verschiedene
Spielzustände an (3 Endzustände, 3 Zwischenzustände). Begründen Sie, warum
diese Evaluierungsfunktion im Zusammenhang mit *Tic-Tac-Toe* sinnvoll sein kann.

<!-- XXX
Lesart: "genau" ein X/O, d.h. die 2er-Wertung nur, wenn nicht noch ein anderes
Symbol dazwischen; dito die 1er-Wertung keine anderen Symbole in der Zeile ...
-->

*Thema*: Suchtiefenbegrenzung und Evaluierungsfunktion



## A3.4: Minimax generalisiert (1P)

Betrachten Sie nun das Problem, den Spielbaum eines Drei-Personen-Spiels zu
evaluieren, das nicht notwendigerweise die Nullsummenbedingung erfüllt.

![](images/minmax-multiplayer.png)

Die Spieler heißen 1, 2 und 3. Im Gegensatz zu Zwei-Personen-Nullsummenspielen
liefert die Bewertungsfunktion nun Tripel $(x_1, x_2, x_3)$ zurück, wobei $x_i$
der Wert für Spieler $i$ ist. Allianzen zwischen Spielern sind nicht erlaubt.

Vervollständigen Sie den Spielbaum, indem Sie alle inneren Knoten und den
Wurzelknoten mit den entsprechenden Wert-Tripeln annotieren.

*Thema*: Minimax generalisiert für mehrere Spieler
