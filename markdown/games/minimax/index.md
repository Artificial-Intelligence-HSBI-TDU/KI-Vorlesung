---
type: lecture-cg
title: "Minimax"
author: "Carsten Gips (FH Bielefeld)"
weight: 2
readings:
  - key: "Russell2020"
    comment: "Minimax: Abschnitte 5.1 und 5.2"
  - key: "Ertel2017"
quizzes:
  - link: TODO
    name: "Selbsttest Minimax (Kahoot)"
assignments:
  - topic: sheet03
youtube:
  - id: TODO
fhmedia:
  - link: TODO
    name: "Direktlink FH-Medienportal: KI Minimax"
---


## Spiele als Suchproblem: Minimax

::: notes
### Terminologie

*   Zwei abwechselnd spielende Spieler: `MAX` und `MIN`, wobei `MAX` beginnt
    *   Beide Spieler spielen in jedem Zug [optimal]{.alert}
    *   Spielergebnis wird aus Sicht von `MAX` bewertet:
        *   $+1$, wenn Spieler `MAX` gewinnt
        *   $-1$, wenn Spieler `MIN` gewinnt
        *   $0$, wenn unentschieden
    *   Spieler `MAX` versucht, das Spielergebnis zu **maximieren**
    *   Spieler `MIN` versucht, das Spielergebnis zu **minimieren**

*   Startzustand: Initialer Zustand des Spielbrettes
*   Aktionen: Legale Züge, abhängig vom Spielzustand
*   Zieltest: Ist das Spiel vorbei?

    => Startzustand und anwendbare Aktionen definieren den Zustandsraum.

*   Nutzenfunktion: $\operatorname{UTILITY}(s,p)$: Wert des Spiels für
    Spieler $p$ im Spielzustand $s$

*   Strategie: Spieler benötigen **Strategie**, um zu gewünschtem Endzustand
    zu kommen *(unabhängig von den Entscheidungen des Gegenspielers)*
    => einfacher Pfad von Start zu Ziel reicht nicht

*Hinweis*: Nullsummenspiel!

Eine mit dem Minimax-Algorithmus berechnete Strategie wird auch
*Minimax-Strategie* genannt. Sie sichert dem betreffenden Spieler den
höchstmöglichen Gewinn, der **unabhängig** von der Spielweise des Gegners
erreichbar ist.

Bei Nicht-Nullsummenspielen, bei denen die Niederlage des Gegners nicht
zwangsläufig mit dem eigenen Gewinn zusammenfällt (d.h. Gewinn des einen
Spielers $\ne$ Verlust des anderen Spielers), liefert der Minimax-Algorithmus
nicht unbedingt eine optimale Strategie.


### Spielbaum TTT
:::

::: center
![](images/tttSpielbaum.png){width="70%"}
:::


::: notes
### Minimax (Idee)

1)  Erzeuge kompletten Suchbaum mit Tiefensuche
2)  Wende Nutzenfunktion (*Utility*) auf jeden Endzustand an
3)  Ausgehend von Endzuständen => Bewerte Vorgängerknoten:
    *   Knoten ist `Min`-Knoten: \newline
        Nutzen ist das **Minimum** der Kindknoten
    *   Knoten ist `Max`-Knoten: \newline
        Nutzen ist das **Maximum** der Kindknoten
4)  Startknoten: `Max` wählt den Zug, der zum Nachfolger mit der
    höchsten Bewertung führt

*Annahme*: Beide spielen perfekt. Fehler verbessern das Resultat für den Gegner.
:::


## Minimax-Algorithmus: Funktionen für MAX- und MIN-Knoten

```python
def Max-Value(state):
    if Terminal-Test(state): return Utility(state)

    v = -INF
    for (a, s) in Successors(state):
        v = MAX(v, Min-Value(s))
    return v
```

\bigskip

```python
def Min-Value(state):
    if Terminal-Test(state): return Utility(state)

    v = +INF
    for (a, s) in Successors(state):
        v = MIN(v, Max-Value(s))
    return v
```

::: notes
*Hinweis*: In der Literatur finden Sie auch eine Variante mit einem
zusätzlichen Tiefenparameter, um bei einer bestimmten Suchtiefe abbrechen
zu können.

Wenn man ohne Suchtiefenbeschränkung arbeiten will, braucht man diesen
Parameter nicht! Der Algorithmus terminiert auch ohne Suchtiefenbeschränkung!
:::


## Minimax-Algorithmus: Sonderbehandlung Startknoten

```python
def Minimax(state):
    (val, action) = (-INF, null)
    for (a, s) in Successors(state):
        v = Min-Value(s)
        if (val <= v):
            (val, action) = (v, a)
    return action
```

\vfill

::: notes
*   Startknoten ist ein MAX-Knoten
*   Nicht nur Kosten, sondern auch die zugehörige Aktion speichern
:::


## Minimax Beispiel

![](images/minimaxBeispiel.png)

[Tafelbeispiel Handsimulation]{.bsp}


::: notes
### Aufwand Minimax

*   maximale Tiefe des Spielbaums: $m$
*   in jedem Zustand $b$ gültige Züge
*   => Zeitkomplexität $O(b^m)$

\bigskip
erster Zug: $b$ Möglichkeiten \newline
zweiter Zug: jeweils wieder $b$ Möglichkeiten $\rightarrow$ $b*b = b^2$ \newline
dritter Zug: jeweils wieder $b$ Möglichkeiten $\rightarrow$ $b*(b*b) = b^3$ \newline
... \newline
$m$. Zug: jeweils wieder $b$ Möglichkeiten $\rightarrow$ $b^m$
:::


## Wrap-Up

*   Minimax: Entwickelt Spielbaum, bewertet Zustände entsprechend `Max` und `Min`
    -   Gewinn von `Max`: +1, Gewinn von `Min`: -1
    -   `Max` wählt das Maximum der möglichen Züge von `Min`
    -   `Min` wählt das Minimum der möglichen Züge von `Max`
    -   Spielbaum wird bis zu den Blättern entwickelt, Bewertung mit `Utility`







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
