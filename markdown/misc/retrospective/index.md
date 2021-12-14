---
type: lecture-cg
title: "Rückblick"
author: "Carsten Gips (FH Bielefeld)"
hidden: true
readings:
  - key: "Russell2020"
youtube:
  - id: TODO
fhmedia:
  - link: "TODO"
    name: "Direktlink FH-Medienportal: Rückblick"
---


## Ausgangspunkt: Was ist Intelligenz

::: center
![Humanoider Roboter beim RoboCup 2013](figs/orga/robocup){height="90%"}\
[Quelle: ["AvB - RoboCup 2013 - Eindhoven"](https://www.flickr.com/photos/80267257@N05/10151827605) by [RoboCup2013](https://www.flickr.com/photos/80267257@N05), licensed under [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=rich)]{.origin}
:::


## Definitionsversuche und Sichtweisen

\bigskip

> Artificial Intelligence is the study of how to make computers do things at
> which, at the moment, people are better.
>
> \hfill -- Elaine Rich ("Artificial Intelligence", McGraw-Hill, 1983)

\bigskip
\bigskip

*   Verhalten vs. Denken
    *   "schwache KI": intelligent **wirkende** Maschinen
    *   "starke KI": **denkende** Maschinen

*  Menschliches Vorbild vs. rein rational

\bigskip
\bigskip
\smallskip

\blueArrow Möglichst breiter Überblick über Methoden

\blueArrow Motivation: Wie funktioniert ... beispielsweise das Gehirn?


## Rückblende Themen

1)  Problemlösen
    *   Zustände, Aktionen, Problemraum
    *   Suche (blind, informiert): Breiten-, Tiefensuche, Best-First,
        Branch-and-Bound, A-Stern
    *   Lokale Suche: Gradientenabstieg, Genetische/Evolutionäre Algorithmen (GA/EA)
    *   Spiele: Minimax, Alpha-Beta-Pruning, Heuristiken
    *   Constraints: Backtracking, Heuristiken, Propagation, AC-3

\smallskip

2)  Maschinelles Lernen
    *   Merkmalsvektor, Trainingsmenge, Trainingsfehler, Generalisierung
    *   Entscheidungsbäume: CAL2, CAL3, ID3, C4.5
    *   Neuronale Netze
        -   Perzeptron, Lernregel
        -   Feedforward Multilayer Perzeptron (MLP), Backpropagation,
            Trainings- vs. Generalisierungsfehler
        -   Steuerung des Trainings: Crossvalidierung, Regularisierung
        -   Ausblick: Support-Vektor-Maschinen
    *   Naive Bayes Klassifikator

\smallskip

::: notes
3)  ~~Inferenz, Logik~~ [(entfällt im W21 wg. der Corona-Verkürzung des Semesters)]{.alert}
    *   Prädikatenlogik: Modellierung, semantische und formale Beweise,
        Unifikation, Resolution
    *   Ausblick: Anwendung in Prolog
:::

[[Anmerkung Logik/Inferenz im W21]{.bsp}]{.slides}
