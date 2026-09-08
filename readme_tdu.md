---
no_beamer: true
title: "TDU: INF701: Künstliche Intelligenz (Winter 2026/27)"
---

# Syllabus TDU

![](https://cdn.pixabay.com/photo/2018/09/27/09/22/artificial-intelligence-3706562_1280.jpg){width="60%"}

[["künstliche
intelligenz"](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/)
by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/) on Pixabay.com
([Pixabay License](https://pixabay.com/de/service/license/))]{.credits}

## Kursbeschreibung

Ausgehend von den Fragen "Was ist *Intelligenz*?" und "Was ist *künstliche*
Intelligenz?" werden wir uns in diesem Modul mit **verschiedenen Teilgebieten der
KI** beschäftigen und uns anschauen, welche **Methoden und Algorithmen** es gibt und
wie diese funktionieren. Dabei werden wir auch das Gebiet *Machine Learning*
berühren, aber auch andere wichtige Gebiete betrachten. Sie erarbeiten sich im Laufe
der Veranstaltung einen **Methoden-Baukasten** zur Lösung unterschiedlichster
Probleme und erwerben ein grundlegendes Verständnis für die Anwendung in Spielen,
Navigation, Planung, smarten Assistenten, autonomen Fahrzeugen, ...

## Überblick Modulinhalte

1.  Problemlösen
    -   Zustände, Aktionen, Problemraum
    -   Suche (blind, informiert): Breiten-, Tiefensuche, Best-First,
        Branch-and-Bound, A-Stern
    -   Lokale Suche: Gradientenabstieg, Genetische/Evolutionäre Algorithmen (GA/EA)
    -   Spiele: Minimax, Alpha-Beta-Pruning, Heuristiken
    -   Constraints: Backtracking, Heuristiken, Propagation, AC-3
2.  Maschinelles Lernen
    -   Merkmalsvektor, Trainingsmenge, Trainingsfehler, Generalisierung
    -   Entscheidungsbäume: CAL2, CAL3, ID3, C4.5
    -   Neuronale Netze
        -   Perzeptron, Lernregel
        -   Feedforward Multilayer Perzeptron (MLP), Backpropagation, Trainings-
            vs. Generalisierungsfehler
        -   Steuerung des Trainings: Kreuzvalidierung, Regularisierung
        -   Ausblick: Support-Vektor-Maschinen
    -   Naive Bayes Klassifikator
3.  ~~Inferenz, Logik~~ (**entfällt im W26**)
    -   ~~Prädikatenlogik: Modellierung, semantische und formale Beweise,
        Unifikation, Resolution~~
    -   ~~Ausblick: Anwendung in Prolog~~

## Team

-   [Canan Yıldız](http://people.tau.edu.tr/people.show/cananyildiz/de) (TDU)
-   [Carsten
    Gips](https://www.hsbi.de/minden/ueber-uns/personenverzeichnis/carsten-gips)
    (HSBI, Sprechstunde nach Vereinbarung)

## Kursformat (TDU)

![](admin/images/fahrplan.png){width="80%"}

| Vorlesung (2 SWS) bis 25.10. | Vorlesung (2 SWS) ab 26.10. | Übung (2 SWS)              |
|:-----------------------------|:----------------------------|:---------------------------|
| Mo, 10:00 - 11:30 Uhr (TR)   | Mo, 11:00 - 12:30 Uhr (TR)  | G1: Di, 15:30 - 17:30 (TR) |
| (Zoom)                       | (Zoom)                      | G2: Do, 08:00 - 10:00 (TR) |
|                              |                             | (Google Meet)              |

Durchführung der Vorlesung als *Flipped Classroom*: Sitzungen per Zoom, Übungen per
Google Meet. (Zugangsdaten siehe [Google
Classroom](https://classroom.google.com/c/NzE4Mzk0NDE5ODEz?cjc=fhzfku3))

## Fahrplan (TDU)

| Woche  | Thema           | Vorlesung                                                                                                                                                                                                                                                                                                                                 | Übung                                                   |
|:-------|:----------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------|
| 14.09. | Orga            | [Orga](readme_tdu.md) \|\| [Einführung KI](lecture/intro/intro1-overview.md) \| [Einführung Jupyter Notebook](lecture/intro/intro3-jupyternotebooks.md)                                                                                                                                                                                   | \-                                                      |
| 21.09. | CSP             | [Einführung Constraints](lecture/csp/csp1-intro.md) \| [Lösen von diskreten CSP](lecture/csp/csp2-backtrackingsearch.md) \| [CSP und Heuristiken](lecture/csp/csp3-heuristics.md) \| [Kantenkonsistenz und AC-3](lecture/csp/csp4-ac3.md) \| [Min-Conflicts Heuristik](lecture/csp/csp5-minconflicts.md)                                  | [Blatt: CSP](homework/sheet-csp.md)                     |
| 28.09. | NB              | [Wahrscheinlichkeitstheorie](lecture/naivebayes/nb1-probability.md) \| [Naive Bayes](lecture/naivebayes/nb2-naivebayes.md) \| [Textklassifikation mit NB](lecture/naivebayes/nb3-nb-text.md)                                                                                                                                              | [Blatt: Naive Bayes](homework/sheet-nb.md)              |
| 05.10. | DTL             | [Machine Learning 101](lecture/dtl/dtl1-mlbasics.md) \| [CAL2](lecture/dtl/dtl2-cal2.md) \| [Entropie](lecture/dtl/dtl5-entropy.md) \| [ID3 und C4.5](lecture/dtl/dtl6-id3.md) \| [Random Forest](lecture/dtl/dtl7-randomforest.md)                                                                                                       | [Blatt: DTL](homework/sheet-dtl.md)                     |
| 12.10. | EA              | **ab 11:15**: [Intro EA/GA](lecture/ea/ea1-intro.md) \| [Genetische Algorithmen](lecture/ea/ea2-ga.md)                                                                                                                                                                                                                                    | [Blatt: EA/GA](homework/sheet-ea.md)                    |
| 19.10. | Search          | [Problemlösen](lecture/intro/intro2-problemsolving.md) \| [Tiefensuche](lecture/searching/search1-dfs.md) \| [Breitensuche](lecture/searching/search2-bfs.md) \| [Branch-and-Bound](lecture/searching/search3-branchandbound.md) \| [Best First](lecture/searching/search4-bestfirst.md) \| [A-Stern](lecture/searching/search5-astar.md) | [Blatt: Suche](homework/sheet-search.md)                |
| 26.10. | Games           | [Optimale Spiele](lecture/games/games1-intro.md) \| [Games mit Minimax](lecture/games/games2-minimax.md) \| [Minimax und Heuristiken](lecture/games/games3-heuristics.md) \| [Alpha-Beta-Pruning](lecture/games/games4-alphabeta.md)                                                                                                      | [Blatt: Games](homework/sheet-games.md)                 |
| 02.11. | ZP              | **Zwischenprüfung**                                                                                                                                                                                                                                                                                                                       | \-                                                      |
| 09.11. | Perzeptron      | [Perzeptron](lecture/nn/nn01-perceptron.md)                                                                                                                                                                                                                                                                                               | [Blatt: Perzeptron](homework/sheet-nn-perceptron.md)    |
| 16.11. | Regression      | [Lineare Regression und Gradientenabstieg](lecture/nn/nn02-linear-regression.md) \| [Logistische Regression](lecture/nn/nn03-logistic-regression.md)                                                                                                                                                                                      | [Blatt: Regression](homework/sheet-nn-regression.md)    |
| 23.11. | MLP             | [Multilayer Perceptron (MLP)](lecture/nn/nn05-mlp.md) \| [Backpropagation](lecture/nn/nn06-backprop.md)                                                                                                                                                                                                                                   | [Blatt: MLP](homework/sheet-nn-mlp.md)                  |
| 30.11. | Train&Test      | [Overfitting und Regularisierung](lecture/nn/nn04-overfitting.md) \| [Training & Testing](lecture/nn/nn07-training-testing.md) \| [Performanzanalyse](lecture/nn/nn08-testing.md)                                                                                                                                                         | [Blatt: Backpropagation](homework/sheet-nn-backprop.md) |
| 07.12. | RNN             | [RNN](lecture/nn/nn11-rnn.md)                                                                                                                                                                                                                                                                                                             | [Blatt: TODO]()                                         |
| 14.12. | Transformer     | [Transformer](lecture/nn/nn12-transformer.md)                                                                                                                                                                                                                                                                                             | \-                                                      |
| 21.12. | Zusammenfassung | **Google Meet:** Rückblick                                                                                                                                                                                                                                                                                                                | \-                                                      |
| 28.12. | PV              | **Google Meet:** [Prüfungsvorbereitung TDU](admin/exams-tdu.md)                                                                                                                                                                                                                                                                           |                                                         |

## Prüfungsform, Note und Credits (TDU)

| Prüfung         | Gewicht                       |
|:----------------|-------------------------------|
| Zwischenprüfung | **40 %**                      |
| Endprüfung      | **60 %**                      |

**Für Details siehe [Prüfung & Noten @ TDU](admin/exams-tdu.md)**.

## Materialien

1.  ["**Artificial Intelligence: A Modern Approach**"](http://aima.cs.berkeley.edu/)
    (*AIMA*). Russell, S. und Norvig, P., Pearson, 2021. ISBN
    [978-0134610993](https://fhb-bielefeld.digibib.net/openurl?isbn=978-0134610993).
2.  "Grundkurs Künstliche Intelligenz". Ertel, W., Springer, 2025. ISBN
    [978-3-658-44955-1](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-658-44955-1).
    DOI [10.1007/978-3-658-44955-1](https://doi.org/10.1007/978-3-658-44955-1).
3.  "An Introduction to Machine Learning". Kubat, M., Springer, 2017. ISBN
    [978-3-319-63913-0](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-63913-0).
    DOI [10.1007/978-3-319-63913-0](https://doi.org/10.1007/978-3-319-63913-0).
4. TODO Gerome
