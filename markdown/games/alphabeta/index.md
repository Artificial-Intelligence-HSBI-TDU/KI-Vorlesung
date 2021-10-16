---
type: lecture-cg
title: "Alpha-Beta-Pruning"
author: "Carsten Gips (FH Bielefeld)"
weight: 4
readings:
  - key: "Russell2020"
    comment: "alpha-beta-Pruning: Abschnitt 5.3, Erweiterungen: Abschnitte 5.3 -- 5.8"
  - key: "Ertel2017"
quizzes:
  - link: TODO
    name: "Selbsttest Alpha-Beta-Pruning (Kahoot)"
assignments:
  - topic: sheet03
youtube:
  - id: TODO
fhmedia:
  - link: TODO
    name: "Direktlink FH-Medienportal: KI Alpha-Beta-Pruning"
---


## Verbesserung Minimax-Algorithmus

::: center
![](images/minimax.png){width="80%"}

[Quelle: "Artificial Intelligence: A Modern Approach (Figures from text)" [@Russell2020figs, Fig. 5.2, S. 41], Wiedergabe mit freundlicher Erlaubnis der Autoren]{.origin}
:::

\bigskip
=> **Minimax-Baum**: [Verbesserungen möglich?]{.alert}

[Tafelbeispiel: Baum und Verbesserungen]{.bsp}


## alpha-beta-Pruning

Minimax-Algorithmus mit zusätzlichen Informationen:

*   $\alpha$: bisher bester Wert für MAX (höchster Wert)
*   $\beta$: bisher bester Wert für MIN (kleinster Wert)

\bigskip
\smallskip
\pause

=> Beobachtungen:

1.  $\alpha$ für MAX-Knoten wird nie kleiner
2.  $\beta$ für MIN-Knoten wird nie größer

[Tafelbeispiel: Beste Werte einzeichnen]{.bsp}


## Pruning-Regeln

1.  Schneide (unter) MIN-Knoten ab, deren $\beta$ $\le$ dem
    $\alpha$ des MAX-Vorgängers ist.

\smallskip

2.  Schneide (unter) MAX-Knoten ab, deren $\alpha$ $\ge$ dem
    $\beta$ des MIN-Vorgängers ist.

\bigskip
\bigskip

::: cbox
[Abbruch, wenn kein Platz mehr zwischen Alpha und Beta]{.alert}
:::


## alpha-beta-Pruning -- Der Algorithmus (Skizze)

```python
def Max-Value(state, alpha, beta):
    if Terminal-Test(state): return Utility(state)

    v = -INF
    for (a, s) in Successors(state):
        v = MAX(v, Min-Value(s, alpha, beta))
        if (v >= beta): return v
        alpha = MAX(alpha, v)
    return v
```


::: notes
```python
def Min-Value(state, alpha, beta):
    if Terminal-Test(state): return Utility(state)

    v = +INF
    for (a, s) in Successors(state):
        v = MIN(v, Max-Value(s, alpha, beta))
        if (v <= alpha): return v
        beta = MIN(beta, v)
    return v
```
:::

\bigskip

Initialer Aufruf von `Max-Value()` mit $\alpha = -\infty$ und $\beta = +\infty$

<!-- XXX
In Wikipedia (https://de.wikipedia.org/wiki/Alpha-Beta-Suche) ist eine
alternative Darstellung: Tiefenbegrenzung und Verzicht auf die Hilfsvariable
`v`, d.h. es wird direkt Alpha bzw. Beta modifiziert.

Der Originalalgorithmus im AIMA gibt das Alpha/Beta nach unten und ändert es,
wenn von den Kindern etwas Besseres zurück kommt. Der Rückgabewert ist entweder
die Hilfsvariable `v`, sofern die Kinder schlechter sind als die Werte, die von
oben kommen, oder Alpha/Beta, wenn die Kinder besser sind.

Die vereinfachte Version führt im Beispiel auf B04 zu einem Problem: In Knoten
`C` hat man nach Besuch von `E` die Werte $[3, 9]$ und gibt diese nach `F`
runter. Die Hilfsvariable `v` bekommt dort den Wert $2$. Der AIMA-Algorithmus
würde die $2$ (`v`) zurückliefern, der vereinfachte Algorithmus $3$ (Alpha).
Damit wird im AIMA-Algorithmus in `C` die Bewertung $[3, 2]$ und es wird ganz
deutlich abgebrochen und eine $2$ nach oben zu `A` geschickt, wodurch sich dort
nichts ändert. Der vereinfachte Algorithmus bricht in `C` ebenfalls ab, aber
nur knapp ($[3, 3]$) und reicht eine $3$ nach `A` hoch. Je nach Implementierung
der `MAX()`-Funktion könnte u.U. dadurch der bisherige $3$-Punkte-Zug nach `B`
von einem angeblichen $3$-Punkte-Zug nach `C` (der in Wirklichkeit nur $2$
Punkte bringt) überschrieben werden!!!!
-->

::: notes
**Achtung**: Es kursieren Varianten von diesem Algorithmus, bei denen auf die
Hilfsvariable `v` verzichtet wird und stattdessen `alpha` bzw. `beta` direkt
modifiziert werden und als Rückgabewert dienen. Das *kann* zu anderen oder falschen
Ergebnissen führen! Sie können das in der Aufgabe auf B04 gut sehen.
:::

[Tafelbeispiel Handsimulation]{.bsp}


## alpha-beta-Pruning -- Eigenschaften

*   Pruning beeinflusst nicht das Endergebnis!

*   Sortierung der Nachfolger spielt große Rolle

*   Perfekte Sortierung: $O(b^{d/2})$ => Verdopplung der Suchtiefe möglich

\bigskip
Für Schach immer noch zu aufwändig ...


## Verbesserungen für alpha-beta-Pruning

*   "Killer-Move": Maximale Effizienz nur wenn **optimaler Zug immer zuerst** [untersucht]{.notes} \newline
    => Zu untersuchende Züge **sortieren/priorisieren**, zb. Schach:
    a)  Figuren schlagen
    b)  Drohen
    c)  Vorwärts ziehen
    d)  Rückwärts ziehen

\smallskip

*   Verändern der Suchtiefe nach Spielsituation

\smallskip

*   Bewertungsfunktion `Eval`:
    *   Datenbanken mit Spielsituationen und Expertenbewertung:
        *   Eröffnungsspiele (besonders viele Verzweigungen)
        *   Endspiele
    *   Lernen der optimalen Gewichte für `Eval`-Funktion
    *   Berücksichtigung von Symmetrien


## Beispiel DeepBlue (IBM, 1997)

*   alpha-beta-Pruning mit Tiefenbeschränkung: ca. 14 Halbzüge
*   Dynamische Tiefenbeschränkung (stellungsabhängig, max. ca. 40 Züge)
*   Heuristische Stellungsbewertung `Eval`:
    *   mehr als 8.000 Features
    *   ca. 4.000 Eröffnungsstellungen
    *   ca. 700.000 Spielsituationen
    *   Endspiel-Datenbank: alle Spiele mit 5 Steinen, viele mit 6 Steinen

[Quelle: [@Russell2020]]{.origin}


## Beispiel AlphaGo (Google, 2016)

*   Beschränkung der Suchtiefe: Bewertung der Stellung durch *"Value Network"*
*   Beschränkung der Verzweigungsbreite: Bestimmung von Zugkandidaten durch
    *"Policy Network"*

\smallskip

*   Training dieser *"Deep Neural Networks"*:
    *   Überwachtes Lernen: "Analyse" von Spiel-Datenbanken
    *   Reinforcement-Lernen: Self-Play, Bewertung am Ende
        *   Züge mit Monte-Carlo-Baumsuche ausgewählt

[Quelle: [@Silver2016], siehe auch [deepmind.com/research/alphago/](https://deepmind.com/research/case-studies/alphago-the-story-so-far)]{.origin}


## Wrap-Up

*   alpha-beta-Pruning:
    *   Mitführen der bisher besten Werte für MAX und MIN: $\alpha$ und $\beta$
    *   Abschneiden von Pfaden, die Verschlechterung bewirken würden
    *   Endergebnis bleibt erhalten
    *   Effizienzsteigerung abhängig von Sortierung der Nachfolger

\smallskip

*   Viele Verbesserungen denkbar:
    *   Zu untersuchende Züge "richtig" sortieren (Heuristik)
    *   Suchtiefe begrenzen und Bewertungsfunktion (statt Nutzenfunktion)
    *   Positionen mit Datenbank abgleichen







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
