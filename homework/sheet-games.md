# Übungsblatt: Spiele

## Games.01: Handsimulation: Minimax und alpha-beta-Pruning (3P)

<img src="images/alphabeta.png">

1.  (1P) Geben Sie für den Spielbaum die Minimax-Bewertungen an.

2.  (1P) Markieren Sie die Kanten, die bei alpha-beta-Pruning nicht mehr
    untersucht werden würden, d.h. wo Pruning stattfinden würde. Geben
    Sie für jeden Knoten die (sich ändernden) $`\alpha`$- und
    $`\beta`$-Werte an.

3.  (1P) Können die Knoten derart geordnet werden, dass
    alpha-beta-Pruning eine größere Anzahl von Zweigen abschneidet? Wenn
    ja, geben Sie eine solche Ordnung an. Wenn nein, begründen Sie Ihre
    Antwort.

*Hinweis*: Reihenfolge der Abarbeitung der Kindknoten: Wie in der VL von
links nach rechts.

*Thema*: Minimax und alpha-beta-Pruning

## Games.02: Optimale Spiele: Minimax und alpha-beta-Pruning (4P)

1.  (2P) Implementieren Sie den Minimax-Algorithmus (wie in der VL
    besprochen) am Beispiel *Tic Tac Toe* in einer Sprache Ihrer Wahl.

2.  (1P) Ergänzen Sie Ihre Implementierung um alpha-beta-Pruning.

3.  (1P) Vergleichen Sie die Anzahl der jeweils berechneten Knoten.
    Überlegen Sie sich dazu ein **sinnvolles** Szenario.

*Thema*: Anwendung Minimax und alpha-beta-Pruning

## Games.03: Minimax vereinfachen (1P)

Vereinfachen Sie den Minimax-Algorithmus aus der Vorlesung, indem Sie
die Eigenschaft *Nullsummenspiel* berücksichtigen und die Funktionen
`Min-Value` und `Max-Value` in eine einzige Funktion ohne explizite
Unterscheidung der Spieler zusammenfassen.

Überlegen Sie sich einen Beispielbaum und zeigen Sie anhand dessen die
Bewertung durch den Minimax-Algorithmus und durch Ihren vereinfachten
Algorithmus.

*Thema*: Nullsummenspiel, Minimax

## Games.04: Suchtiefe begrenzen (1P)

Die Verwendung der Suchtiefenbeschränkung erfordert den Einsatz einer
Evaluierungsfunktion.

Betrachten Sie die auf
[https://github.com/aimacode/aima-exercises/blob/master/markdown/5-Adversarial-Search/exercises/ex_9/question.md](https://aimacode.github.io/aima-exercises/game-playing-exercises/ex_9/)
gegebene Evaluierungsfunktion für *Tic-Tac-Toe*.

Geben Sie die Werte der Evaluierungsfunktion für sechs verschiedene
Spielzustände an (3 Endzustände, 3 Zwischenzustände). Begründen Sie,
warum diese Evaluierungsfunktion im Zusammenhang mit *Tic-Tac-Toe*
sinnvoll sein kann.

*Thema*: Suchtiefenbegrenzung und Evaluierungsfunktion

## Games.05: Minimax generalisiert (1P)

Betrachten Sie nun das Problem, den Spielbaum eines Drei-Personen-Spiels
zu evaluieren, das nicht notwendigerweise die Nullsummenbedingung
erfüllt.

<img src="images/minmax-multiplayer.png">

Die Spieler heißen 1, 2 und 3. Im Gegensatz zu
Zwei-Personen-Nullsummenspielen liefert die Bewertungsfunktion nun
Tripel $`(x_1, x_2, x_3)`$ zurück, wobei $`x_i`$ der Wert für Spieler
$`i`$ ist. Allianzen zwischen Spielern sind nicht erlaubt.

Vervollständigen Sie den Spielbaum, indem Sie alle inneren Knoten und
den Wurzelknoten mit den entsprechenden Wert-Tripeln annotieren.

*Thema*: Minimax generalisiert für mehrere Spieler

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 6672880 (markdown: switch to leaner yaml header (#438), 2025-08-09)<br></sub></sup></p></blockquote>
