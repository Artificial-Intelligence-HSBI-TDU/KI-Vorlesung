---
title: "Einführung Optimale Spiele"
author: "Carsten Gips (HSBI)"
readings:
  - "@Russell2020: Einführung Spiele: Abschnitt 6.1"
  - "@Ertel2017"
tldr: |
  Spiele können als Suchproblem betrachtet werden. Dabei sind in der Regel mehrere Spieler ("Agenten") beteiligt. Bei manchen
  Spielen ist die Umgebung (der Spielzustand) vollständig einsehbar, bei anderen nur teilweise (Kartenspiele). Bei manchen
  Spielen kommt eine Zufallskomponente zum Wirken.

  Spiele sind in der KI deshalb so interessant, weil bei der Suche riesige Suchbäume entstehen (bzw. durchsucht werden müssten).
  Da die Ressourcen normalerweise begrenzt sind (denken Sie an die Reaktionszeit auf einen Zug des Gegners), muss man hier
  intelligente Lösungen finden. (Einige davon werden wir in den folgenden Sitzungen anschauen).
outcomes:
  - k2: "Spiele als Suchproblem"
  - k2: "Eigenschaften guter Spielalgorithmen"
assignments:
  - topic: sheet-games
youtube:
  - link: "https://youtu.be/wVYhbgtzxhs"
    name: "VL Einführung Optimale Spiele"
fhmedia:
  - link: "https://www.hsbi.de/medienportal/m/6d02dc45505b838df7eaa0a5d8c4a65d608a2898f699716db3576caa9abf421debb61c3d5fc4c5effb0b5213b76c573df50d6aff203199eba8d66548c3238ba3"
    name: "VL Einführung Optimale Spiele"
---


# Backgammon: Zwei Spieler, was ist der beste Zug?

<!-- TODO
![](https://live.staticflickr.com/3670/11267311625_e4758ff425_o_d.jpg){width="60%"}
-->

[["position-backgammon-decembre"](https://www.flickr.com/photos/83436399@N04/11267311625) by [serialgamer_fr](https://www.flickr.com/photos/83436399@N04) on Flickr.com ([CC BY 2.0](https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=rich))]{.origin}

::: notes
Zwei Spieler, ein Spielstand und ein Würfelergebnis: **Was ist jetzt der beste Zug?!**
:::


# Motivation: Unterschied zu Suche?!

![](images/tttEnd.png){width="30%"}

\pause

\bigskip
=> Mehrere **konkurrierende** Agenten an Suche beteiligt!

=> (Re-) Aktion des Gegners unbekannt/nicht vorhersehbar.


# Spiele und Umgebungen

|                      | Deterministisch   | Zufallskomponente        |
|:---------------------|:------------------|:-------------------------|
| Voll beobachtbar     | Schach, Go, ...   | Backgammon, Monopoly     |
| Partiell beobachtbar | Schiffe-versenken | Bridge, Poker, Skat, ... |


\bigskip
=> Bis auf Roboterfußball in KI traditionell keine physischen Spiele!


# Brettspiele sind interessant für KI

*   Brettspiele gut abstrakt darstellbar:
    *   Zustände einfach repräsentierbar
    *   Aktionen wohldefiniert (und i.d.R. sehr einfach)
    *   Realisierung als Suchproblem möglich

\bigskip

*   **Problem**: Suchbäume werden in Praxis riesig

    Beispiel **Schach**:
    -   Im Mittel 35 Aktionen (*branching factor*) von jeder Position
    -   Oft mehr als 40 Züge pro Spieler => Suchbäume mit mehr als 80 Ebenen
    -   $35^{80} \approx 10^{123}$ mögliche Knoten!
    -   (Aber "nur" rund $10^{40}$ _verschiedene_ Zustände)

    [[@Russell2020, pp. 193-196]]{.origin}


# Eigenschaften guter Spielalgorithmen

*   Zeit begrenzt
    *   Irgendeine gute Entscheidung treffen! => Bewertungsfunktion [(auch für Zwischenzustände)]{.notes}

\smallskip

*   Speicher begrenzt
    *   Evaluierungsfunktion für Zwischenzustände
    *   Löschen von irrelevanten Zweigen

\smallskip

*   Strategien nötig
    *   Vorausschauend spielen (Züge "vorhersehen")

# Wrap-Up

*   Spiele kann man als Suchproblem betrachten
*   Merkmale:
    -   Mehrere Agenten beteiligt
    -   Beobachtbarkeit der Umgebung
    -   Zufallskomponente
    -   Spielstrategie
*   Problem: Riesige Spielbäume
*   Umgang mit begrenzten Ressourcen (Zeit, Speicher)
