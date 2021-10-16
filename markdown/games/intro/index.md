---
type: lecture-cg
title: "Einführung Optimale Spiele"
menuTitle: "Optimale Spiele"
author: "Carsten Gips (FH Bielefeld)"
weight: 1
readings:
  - key: "Russell2020"
    comment: "Minimax: Abschnitte 5.1 und 5.2"
  - key: "Ertel2017"
quizzes:
  - link: TODO
    name: "Selbsttest Intro Spiele (Kahoot)
assignments:
  - topic: sheet03
youtube:
  - id: TODO
fhmedia:
  - link: TODO
    name: "Direktlink FH-Medienportal: KI Einführung Optimale Spiele"
---


## Backgammon: Weiss hat 6+5 gewürfelt und hat 4 legale Züge

::: center
![](images/backgammon-position.png){width="40%"}

[Quelle: "Artificial Intelligence: A Modern Approach (Figures from text)" [@Russell2020figs, Fig. 5.12, S. 47], Wiedergabe mit freundlicher Erlaubnis der Autoren]{.origin}
:::

\bigskip

[**Was ist der beste Zug?!**]{.alert}


## Motivation: Unterschied zu Suche?!

::: center
![](images/tttEnd.png){width="30%"}
:::

\pause

\bigskip
=> Mehrere [**konkurrierende**]{.alert} Agenten an Suche beteiligt!

=> (Re-) Aktion des Gegners unbekannt/nicht vorhersehbar.


## Spiele und Umgebungen

|                      | Deterministisch   | Zufallskomponente        |
|:---------------------|:------------------|:-------------------------|
| Voll beobachtbar     | Schach, Go, ...   | Backgammon, Monopoly     |
| Partiell beobachtbar | Schiffe-versenken | Bridge, Poker, Skat, ... |


\bigskip
=> Bis auf Roboterfußball in KI traditionell keine physischen Spiele!


## Brettspiele sind interessant für KI

*   Brettspiele gut abstrakt darstellbar:
    *   Zustände einfach repräsentierbar
    *   Aktionen wohldefiniert (und i.d.R. sehr einfach)
    *   Realisierung als Suchproblem möglich

\medskip

*   **Problem**: Suchbäume werden in Praxis riesig

    *   **Schach**: Im Mittel 35 Aktionen von jeder Position; oft mehr als
        50 Züge pro Spieler \newline (Suchbäume mit mehr als 100 Ebenen):
        $35^{100} \approx 10^{154}$ mögliche Knoten!

        \smallskip

    *   **Go**: Im Mittel 200 Aktionen; mehr als 300 Züge:
        $200^{300} \approx 10^{700}$ Knoten im Suchbaum!

    [Quelle: [@Russell2020]]{.origin}


## Eigenschaften guter Spielalgorithmen

*   Zeit begrenzt
    *   Irgendeine gute Entscheidung treffen! => Bewertungsfunktion [(auch für Zwischenzustände)]{.notes}

\smallskip

*   Speicher begrenzt
    *   Evaluierungsfunktion für Zwischenzustände
    *   Löschen von irrelevanten Zweigen

\smallskip

*   Strategien nötig
    *   Vorausschauend spielen (Züge "vorhersehen")

## Wrap-Up

TODO







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
