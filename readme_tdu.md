---
no_beamer: true
title: "TDU: INF701: Künstliche Intelligenz (Winter 2025/26)"
---

![](https://cdn.pixabay.com/photo/2018/09/27/09/22/artificial-intelligence-3706562_1280.jpg){width="60%"}

[["künstliche
intelligenz"](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/)
by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/) on Pixabay.com
([Pixabay License](https://pixabay.com/de/service/license/))]{.credits}

# Kursbeschreibung

Ausgehend von den Fragen "Was ist *Intelligenz*?" und "Was ist *künstliche*
Intelligenz?" werden wir uns in diesem Modul mit **verschiedenen Teilgebieten der
KI** beschäftigen und uns anschauen, welche **Methoden und Algorithmen** es gibt und
wie diese funktionieren. Dabei werden wir auch das Gebiet *Machine Learning*
berühren, aber auch andere wichtige Gebiete betrachten. Sie erarbeiten sich im Laufe
der Veranstaltung einen **Methoden-Baukasten** zur Lösung unterschiedlichster
Probleme und erwerben ein grundlegendes Verständnis für die Anwendung in Spielen,
Navigation, Planung, smarten Assistenten, autonomen Fahrzeugen, ...

# Überblick Modulinhalte

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
3.  ~~Inferenz, Logik~~ (**entfällt im W25**)
    -   ~~Prädikatenlogik: Modellierung, semantische und formale Beweise,
        Unifikation, Resolution~~
    -   ~~Ausblick: Anwendung in Prolog~~

# Team

-   [Carsten
    Gips](https://www.hsbi.de/minden/ueber-uns/personenverzeichnis/carsten-gips)
    (HSBI, Sprechstunde nach Vereinbarung)
-   [Canan Yıldız](http://people.tau.edu.tr/people.show/cananyildiz/de) (TDU)
-   N.N. (TDU)

# Kursformat (TDU)

![](admin/images/fahrplan.png){width="80%"}

| Vorlesung (2 SWS): 30.09. - 15.01. | Übung (2 SWS): 30.09. - 15.01. |
|:-----------------------------------|:-------------------------------|
| Mo, 12:00 - 13:30 Uhr (TR)         | G1: wird bekanntgegeben        |
| (online, Zoom)                     | G2: wird bekanntgegeben        |
|                                    | G3: wird bekanntgegeben        |
|                                    | G4: wird bekanntgegeben        |
|                                    | (online, Google Meet)          |

Durchführung der Vorlesung als *Flipped Classroom*: Sitzungen per Zoom, Übungen per
Google Meet. (Zugangsdaten siehe [Google
Classroom](https://classroom.google.com/c/NzE4Mzk0NDE5ODEz?cjc=fhzfku3))

# Fahrplan (TDU)

| KW (Datum)            | Vorbereitung                                                                                                                                                                                        | Präsenz                                                                                                                                              | Abgabe Übung                                            |
|:----------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------|
| KW40 (30. Sep)        | [Einführung KI](lecture/intro/intro1-overview.md), [Problemlösen](lecture/intro/intro2-problemsolving.md)                                                                                          | [Orga](https://www.hsbi.de/elearning/data/FH-Bielefeld/lm_data/lm_1358898/index.html#überblick-modulinhalte) (*Zoom*), Fragen & Diskussion        |                                                         |
| KW41 (07. Okt)        | [Machine Learning 101](lecture/dtl/dtl1-mlbasics.md), [Perzeptron](lecture/nn/nn01-perceptron.md)                                                                                                 | Vertiefung Perzeptron, praktische Übungen (**12:30 - 13:30** Uhr TR)                                                                               |                                                         |
| KW42 (14. Okt)        | [Lineare Regression](lecture/nn/nn02-linear-regression.md)                                                                                                                                         | Anwendungsbeispiele, Fragen & Vertiefung                                                                                                            | [Blatt: Perzeptron](homework/sheet-nn-perceptron.md)    |
| KW43 (21. Okt)        | [Logistische Regression](lecture/nn/nn03-logistic-regression.md)                                                                                                                                   | Vergleich mit linearer Regression, praktische Anwendung                                                                                             |                                                         |
| KW44 (28. Okt)        | [Overfitting](lecture/nn/nn04-overfitting.md), [Multilayer Perceptron](lecture/nn/nn05-mlp.md)                                                                                                    | Strategien gegen Overfitting, MLP-Architektur im Detail                                                                                             | [Blatt: Regression](homework/sheet-nn-regression.md)    |
| KW45 (04. Nov)        | [Backpropagation](lecture/nn/nn06-backprop.md)                                                                                                                                                     | Algorithmus-Schritte durchgehen, Implementierungsdetails                                                                                           | [Blatt: MLP](homework/sheet-nn-mlp.md)                  |
| KW46 (11. Nov)        | [Training & Testing](lecture/nn/nn07-training-testing.md), [Performanzanalyse](lecture/nn/nn08-testing.md)                                                                                        | Best Practices, Metriken-Auswertung                                                                                                                 | [Blatt: Backpropagation](homework/sheet-nn-backprop.md) |
| KW47 (18. Nov)        |                                                                                                                                                                                                     | **Zwischenprüfung**                                                                                                                                 |                                                         |
| KW48 (25. Nov)        | [Tiefensuche](lecture/searching/search1-dfs.md), [Breitensuche](lecture/searching/search2-bfs.md), [Branch-and-Bound](lecture/searching/search3-branchandbound.md)                              | [Best First](lecture/searching/search4-bestfirst.md), [A-Stern](lecture//searching/search5-astar.md), Vergleich der Verfahren                     |                                                         |
| KW49 (02. Dez)        | [Gradientensuche](lecture/searching/search6-gradient.md), [Simulated Annealing](lecture/searching/search7-annealing.md)                                                                            | [Intro EA/GA](lecture/ea/ea1-intro.md), [Genetische Algorithmen](lecture/ea/ea2-ga.md), praktische Anwendung                                        | [Blatt: Suche](homework/sheet-search.md)                |
| KW50 (09. Dez)        | [Optimale Spiele](lecture/games/games1-intro.md), [Games mit Minimax](lecture/games/games2-minimax.md)                                                                                             | [Minimax und Heuristiken](lecture/games/games3-heuristics.md), [Alpha-Beta-Pruning](lecture/games/games4-alphabeta.md), Spielsimulation           | [Blatt: EA/GA](homework/sheet-ea.md)                    |
| KW51 (16. Dez)        | [Vorschau Deep Learning (CNN, RNN)](lecture/nn/nn10-cnn.md)                                                                                                                                        | Diskussion aktueller Trends, offene Fragen                                                                                                          | [Blatt: Games](homework/sheet-games.md)                 |
| KW52 (23. Dez)        |                                                                                                                                                                                                     | [Prüfungsvorbereitung TDU](admin/exams-tdu.md) (**Google Meet**)                                                                                    |                                                         |
| KW01 (30. Dez)        | [Machine Learning 101](lecture/dtl/dtl1-mlbasics.md), [CAL2](lecture/dtl/dtl2-cal2.md), [Pruning](lecture/dtl/dtl3-pruning.md)                                                                    | [CAL3](lecture/dtl/dtl4-cal3.md), [Entropie](lecture/dtl/dtl5-entropy.md), [ID3 und C4.5](lecture/dtl/dtl6-id3.md) (**KEINE Sprechstunde**)       |                                                         |
| KW02 (06. Jan)        | [Einführung Constraints](lecture/csp/csp1-intro.md), [Lösen von diskreten CSP](lecture/csp/csp2-backtrackingsearch.md)                                                                            | [CSP und Heuristiken](lecture/csp/csp3-heuristics.md), [Kantenkonsistenz und AC-3](lecture/csp/csp4-ac3.md), praktische Übungen                   | [Blatt: DTL](homework/sheet-dtl.md)                     |
| KW03 (13. Jan)        | [Wahrscheinlichkeitstheorie](lecture/naivebayes/nb1-probability.md)                                                                                                                                | [Naive Bayes](lecture/naivebayes/nb2-naivebayes.md), Anwendungsbeispiele                                                                            | [Blatt: CSP](homework/sheet-csp.md)                     |

# Prüfungsform, Note und Credits (TDU)

| Prüfung         | Gewicht                       |
|:----------------|-------------------------------|
| Zwischenprüfung | **40 %**                      |
| Endprüfung      | **60 %**                      |
| Übung           | **10 % Bonus für Endprüfung** |

Wenn in der Endprüfung die 40 Punkte Mindestgrenze erreicht wird (**Prüfungsnote
$\ge$ 40**), werden **10 % der Übungspunkte als Bonus** zu der Prüfungsnote
hinzugefügt.

Für die Vergabe von Übungspunkten ist eine **erfolgreiche Teilnahme an der Übung**
erforderlich. **Für Details siehe [Prüfung & Noten @ TDU](admin/exams-tdu.md)**.

# Materialien

1.  ["**Artificial Intelligence: A Modern Approach**"](http://aima.cs.berkeley.edu/)
    (*AIMA*). Russell, S. und Norvig, P., Pearson, 2020. ISBN
    [978-0134610993](https://fhb-bielefeld.digibib.net/openurl?isbn=978-0134610993).
2.  "Introduction to Artificial Intelligence". Ertel, W., Springer, 2017. ISBN
    [978-3-319-58487-4](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-58487-4).
    DOI [10.1007/978-3-319-58487-4](https://doi.org/10.1007/978-3-319-58487-4).
3.  "An Introduction to Machine Learning". Kubat, M., Springer, 2017. ISBN
    [978-3-319-63913-0](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-63913-0).
    DOI [10.1007/978-3-319-63913-0](https://doi.org/10.1007/978-3-319-63913-0).
