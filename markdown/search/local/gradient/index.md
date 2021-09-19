---
type: lecture-cg
title: "Lokale Suche: Gradientensuche"
menuTitle: "Gradientensuche"
author: "Carsten Gips (FH Bielefeld)"
weight: 1
readings:
  - key: "Russell2020"
    comment: "Gradientenabstieg: Abschnitte 4.1.1 und 4.1.2"
quizzes:
  - link: TODO
    name: "TODO"
assignments:
  - topic: sheet03
youtube:
  - id: TODO
fhmedia:
  - link: TODO
    name: "TODO"
sketch: true
---


## Unterschiede in den Suchproblemen?

::::: columns
::: {.column width="46%"}
![](images/graph.png){width="90%"}
:::
::: {.column width="46%"}
![](images/screenshot_stundenplan.png)
:::
::::::


::: notes
Bisher betrachtete Suchverfahren:

*   Systematische Erkundung des Suchraums
*   [**Weg**]{.alert} zur Lösung wichtig

\smallskip

=> Oft aber nur das [**Ziel**]{.alert} **an sich** interessant! \newline
(Und nicht, wie man dort hin gelangt.)

\bigskip
Beispiel: Stundenplan
:::


## Analogie: Bergsteigen ohne Karte und Pfade

::: center
![](images/hill-climbing.png){width="60%"}
:::

\bigskip
\bigskip

**Gradienten-Suche**:
"Gehe in Richtung des [steilsten Anstiegs]{.alert} der [Zielfunktion]{.alert}."

=> Schrittweise Verbesserung des aktuellen Zustands (Lokale Suche)

::: notes
*   Verschiedene Namen: "Hill-climbing", "Greedy local search"
*   Kann auch als Minimierung angewendet werden
:::


## Pseudoalgorithmus Gradientensuche

::: cbox
"*Wie Bergsteigen am Mount Everest in dickem Nebel mit Gedächtnisverlust*"
:::

\bigskip
\bigskip

1.  Setze `currNode` auf den Startknoten
2.  `currNode` ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Expandiere alle Nachfolger von `currNode`
    -   Setze `nextNode` auf Nachfolger mit höchster Bewertung
    -   Falls Bewertung von `nextNode` $\leq$ Bewertung von `currNode`: \newline
        Abbruch, melde "*nicht gefunden*"
    -   Setze `currNode` auf `nextNode`
3.  Gehe zu Schritt 2

:::::: notes
:::center
![](images/tafelbeispiel.png){width="90%"}
:::
::::::

[Tafelbeispiel Gradientensuche, Bewertung: Restkostenschätzung]{.bsp}


::: notes
## Beispiel Gradientensuche: $n$-Damen

*   **Ziel**: Setze $n$ Damen auf ein $n \times n$-Spielfeld ohne Konflikte
*   **Start**: Setze $n$ Damen auf ein $n \times n$-Spielfeld (mit Konflikten)
*   **Suche**: Bewege jeweils eine Dame so, daß die Anzahl der Konflikte reduziert wird

![](images/4queens.png)

*Hinweis*: Alle Damen von Anfang an auf dem Brett, werden nur verschoben
=> "[vollständige Zustandsformulierung]{.alert}"

Eigenschaften 8-Damen-Problem ($n=8$)

*   Zustandsraum: $8^8 \approx 17$ Millionen Zustände! (Quelle: @Russell2014)
*   Beginnend mit zufällig erzeugtem Startzustand:
    *   bleibt in 86% der Fälle stecken, d.h.
    *   findet Lösung nur in 14% der Fälle.
*   Beobachtung: Lösung nach durchschnittlich 4 Schritten, oder Verfahren bleibt nach durchschnittlich 3 Schritten stecken.
:::


## Eigenschaften Gradientensuche

::: notes
*   Vollständigkeit: nein
*   Optimalität: nein
*   Komplexität: linear in der Anzahl der zu expandierenden Knoten

\smallskip

[**Zielfunktion (Bewertung) nötig!**]{.alert}
:::

::: center
![](images/hill-climbing.png){width="60%"}
:::

\bigskip

[**Problem**]{.alert}: lokale Maxima und Plateaus

::: notes
*   Lokale Maxima/Minima: Algorithmus findet nur eine suboptimale Lösung
*   Plateaus: Hier muss der Algorithmus mit zufälligen Zügen explorieren


Mögliche Lösungen:

*   Neustart des Algorithmus, wenn kein Fortschritt erzielt wird
*   Rauschen "injizieren"
:::

## Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

\smallskip

*   Gradientenverfahren

    Analogie Bergsteigen: Gehe in Richtung des stärksten Anstiegs der
    Kostenfunktion => **Hill-Climbing**







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
