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
3.  ~~Inferenz, Logik~~ (**entfällt im W25**)
    -   ~~Prädikatenlogik: Modellierung, semantische und formale Beweise,
        Unifikation, Resolution~~
    -   ~~Ausblick: Anwendung in Prolog~~

## Team

-   [Canan Yıldız](http://people.tau.edu.tr/people.show/cananyildiz/de) (TDU)
-   [Carsten
    Gips](https://www.hsbi.de/minden/ueber-uns/personenverzeichnis/carsten-gips)
    (HSBI, Sprechstunde nach Vereinbarung)
-   [Halit Canap Demir](https://people.tau.edu.tr/people.show/halit.demir/de) (TDU)
-   [Seza Nihan Bekarlar](https://people.tau.edu.tr/people.show/nihan.bekarlar/de)
    (TDU)

## Kursformat (TDU)

![](admin/images/fahrplan.png){width="80%"}

| Vorlesung (2 SWS)          | Übung (2 SWS)              |
|:---------------------------|:---------------------------|
| Mo, 10:00 - 11:30 Uhr (TR) | G1: Di, 15:30 - 17:30 (TR) |
| (online, Zoom)             | G2: Do, 08:00 - 10:00 (TR) |
|                            | (online, Google Meet)      |

Durchführung der Vorlesung als *Flipped Classroom*: Sitzungen per Zoom, Übungen per
Google Meet. (Zugangsdaten siehe [Google
Classroom](https://classroom.google.com/c/NzE4Mzk0NDE5ODEz?cjc=fhzfku3))

## Fahrplan (TDU)

| Woche  | Thema               | Vorlesung                                                                                                                                                                           | Übung                                                   |
|:-------|:--------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------|
| 14.09. | Orga                | [Orga](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W26/blob/master/readme_tdu.md) (*Zoom*)                                                                     |                                                         |
| 21.09. | CSP                 | [Constraints (CSP)](lecture/csp/readme.md)                                                                                                                                          |                                                         |
| 28.09. | NB                  | [Naive Bayes (NB)](lecture/naivebayes/readme.md)                                                                                                                                    | [Blatt: CSP](homework/sheet-csp.md)                     |
| 05.10. | DTL                 | [Entscheidungsbäume (DTL)](lecture/dtl/readme.md)                                                                                                                                   | [Blatt: Naive Bayes](homework/sheet-nb.md)              |
| 12.10. | EA                  | [Gradientensuche](lecture/searching/search6-gradient.md) & [Simulated Annealing](lecture/searching/search7-annealing.md) \|\| [Evolutionäre Algorithmen (EA)](lecture/ea/readme.md) | [Blatt: DTL](homework/sheet-dtl.md)                     |
| 19.10. | Search              | [Suche (Search)](lecture/searching/readme.md)                                                                                                                                       | [Blatt: EA/GA](homework/sheet-ea.md)                    |
| 26.10. | Games               | [Optimale Spiele (Games)](lecture/games/readme.md)                                                                                                                                  | [Blatt: Suche](homework/sheet-search.md)                |
| 02.11. | ZP                  | **Zwischenprüfung**                                                                                                                                                                 |                                                         |
| 09.11. | Perzeptron          | [Perzeptron](lecture/nn/nn01-perceptron.md)  \|\| [Logistische Regression](lecture/nn/nn03-logistic-regression.md)                                                                  | [Blatt: Games](homework/sheet-games.md)                 |
| 16.11. | Lin. & Log. Regr.   | [Lineare Regression und Gradientenabstieg](lecture/nn/nn02-linear-regression.md) \|\| [Overfitting und Regularisierung](lecture/nn/nn04-overfitting.md)                             | [Blatt: Perzeptron](homework/sheet-nn-perceptron.md)    |
| 23.11. | MLP & Backprop      | [Multilayer Perceptron (MLP)](lecture/nn/nn05-mlp.md) \|\| [Backpropagation](lecture/nn/nn06-backprop.md)                                                                           | [Blatt: Regression](homework/sheet-nn-regression.md)    |
| 30.11. | Train & Test & Eval | [Training & Testing](lecture/nn/nn07-training-testing.md) \|\| [Performanzanalyse](lecture/nn/nn08-testing.md)                                                                      | [Blatt: MLP](homework/sheet-nn-mlp.md)                  |
| 07.12. | RNNs                | Géron, Kapitel 15, S.497-511                                                                                                                                                        | [Blatt: Backpropagation](homework/sheet-nn-backprop.md) |
| 14.12. | Transformers        | Géron, Kapitel 16, S. 549-562                                                                                                                                                       | Géron, Aufgaben Kapitel 15                              |
| 21.12. | Zusammenfassung     | Rückblick (*Google Meet*)                                                                                                                                                           | Géron, Aufgaben Kapitel 16                              |
| 28.12. | PV                  | Prüfungsvorbereitung (*Google Meet*) \| [Prüfungsvorbereitung TDU](admin/exams-tdu.md)                                                                                              |                                                         |

## Prüfungsform, Note und Credits (TDU)

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
