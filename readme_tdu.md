# TDU: INF701: Künstliche Intelligenz (Winter 2025/26)

<img src="https://cdn.pixabay.com/photo/2018/09/27/09/22/artificial-intelligence-3706562_1280.jpg" width="60%">

Quelle: [“künstliche
intelligenz”](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/)
by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/) on
Pixabay.com ([Pixabay License](https://pixabay.com/de/service/license/))

## Kursbeschreibung

Ausgehend von den Fragen “Was ist *Intelligenz*?” und “Was ist
*künstliche* Intelligenz?” werden wir uns in diesem Modul mit
**verschiedenen Teilgebieten der KI** beschäftigen und uns anschauen,
welche **Methoden und Algorithmen** es gibt und wie diese funktionieren.
Dabei werden wir auch das Gebiet *Machine Learning* berühren, aber auch
andere wichtige Gebiete betrachten. Sie erarbeiten sich im Laufe der
Veranstaltung einen **Methoden-Baukasten** zur Lösung
unterschiedlichster Probleme und erwerben ein grundlegendes Verständnis
für die Anwendung in Spielen, Navigation, Planung, smarten Assistenten,
autonomen Fahrzeugen, …

## Überblick Modulinhalte

1.  Problemlösen
    - Zustände, Aktionen, Problemraum
    - Suche (blind, informiert): Breiten-, Tiefensuche, Best-First,
      Branch-and-Bound, A-Stern
    - Lokale Suche: Gradientenabstieg, Genetische/Evolutionäre
      Algorithmen (GA/EA)
    - Spiele: Minimax, Alpha-Beta-Pruning, Heuristiken
    - Constraints: Backtracking, Heuristiken, Propagation, AC-3
2.  Maschinelles Lernen
    - Merkmalsvektor, Trainingsmenge, Trainingsfehler, Generalisierung
    - Entscheidungsbäume: CAL2, CAL3, ID3, C4.5
    - Neuronale Netze
      - Perzeptron, Lernregel
      - Feedforward Multilayer Perzeptron (MLP), Backpropagation,
        Trainings- vs. Generalisierungsfehler
      - Steuerung des Trainings: Kreuzvalidierung, Regularisierung
      - Ausblick: Support-Vektor-Maschinen
    - Naive Bayes Klassifikator
3.  ~~Inferenz, Logik~~ (**entfällt im W25**)
    - ~~Prädikatenlogik: Modellierung, semantische und formale Beweise,
      Unifikation, Resolution~~
    - ~~Ausblick: Anwendung in Prolog~~

## Team

- [Carsten
  Gips](https://www.hsbi.de/minden/ueber-uns/personenverzeichnis/carsten-gips)
  (HSBI, Sprechstunde nach Vereinbarung)
- [Canan Yıldız](http://people.tau.edu.tr/people.show/cananyildiz/de)
  (TDU)
- N.N. (TDU)

## Kursformat (TDU)

<img src="admin/images/fahrplan.png" width="80%">

| Vorlesung (2 SWS)          | Übung (2 SWS)           |
|:---------------------------|:------------------------|
| Mo, 10:00 - 11:30 Uhr (TR) | G1: wird bekanntgegeben |
| (online, Zoom)             | G2: wird bekanntgegeben |
|                            | G3: wird bekanntgegeben |
|                            | G4: wird bekanntgegeben |
|                            | (online, Google Meet)   |

Durchführung der Vorlesung als *Flipped Classroom*: Sitzungen per Zoom,
Übungen per Google Meet. (Zugangsdaten siehe [Google
Classroom](https://classroom.google.com/c/NzE4Mzk0NDE5ODEz?cjc=fhzfku3))

## Fahrplan (TDU)

| KW | Monat | Tag | Vorlesung | Lead | Abgabe Übung |
|:---|:---|:---|:---|:---|:---|
| 40 | Sep | 30\. | [Orga](https://www.hsbi.de/elearning/data/FH-Bielefeld/lm_data/lm_1358898/index.html#überblick-modulinhalte) (*Zoom*); [Einführung KI](lecture/intro/intro1-overview.md), [Problemlösen](lecture/intro/intro2-problemsolving.md) | Canan, Carsten |  |
| 41 | Okt | 07\. (**12:30 - 13:30** Uhr TR) | [Machine Learning 101](lecture/dtl/dtl1-mlbasics.md), [Perzeptron](lecture/nn/nn01-perceptron.md) | Canan |  |
| 42 |  | 14\. | [Lineare Regression](lecture/nn/nn02-linear-regression.md) | Canan | [Blatt: Perzeptron](homework/sheet-nn-perceptron.md) |
| 43 |  | 21\. | [Logistische Regression](lecture/nn/nn03-logistic-regression.md) | Canan |  |
| 44 |  | 28\. | [Overfitting](lecture/nn/nn04-overfitting.md), [Multilayer Perceptron](lecture/nn/nn05-mlp.md) | Canan | [Blatt: Regression](homework/sheet-nn-regression.md) |
| 45 | Nov | 04\. | [Backpropagation](lecture/nn/nn06-backprop.md) | Canan | [Blatt: MLP](homework/sheet-nn-mlp.md) |
| 46 |  | 11\. | [Training & Testing](lecture/nn/nn07-training-testing.md), [Performanzanalyse](lecture/nn/nn08-testing.md) | Canan | [Blatt: Backpropagation](homework/sheet-nn-backprop.md) |
| 47 |  | 18\. | **Zwischenprüfung** |  |  |
| 48 |  | 25\. | [Tiefensuche](lecture/searching/search1-dfs.md), [Breitensuche](lecture/searching/search2-bfs.md), [Branch-and-Bound](lecture/searching/search3-branchandbound.md), [Best First](lecture/searching/search4-bestfirst.md), [A-Stern](lecture//searching/search5-astar.md) | Carsten |  |
| 49 | Dez | 02\. | [Gradientensuche](lecture/searching/search6-gradient.md), [Simulated Annealing](lecture/searching/search7-annealing.md); [Intro EA/GA](lecture/ea/ea1-intro.md), [Genetische Algorithmen](lecture/ea/ea2-ga.md) | Carsten | [Blatt: Suche](homework/sheet-search.md) |
| 50 |  | 09\. | [Optimale Spiele](lecture/games/games1-intro.md), [Games mit Minimax](lecture/games/games2-minimax.md), [Minimax und Heuristiken](lecture/games/games3-heuristics.md), [Alpha-Beta-Pruning](lecture/games/games4-alphabeta.md) | Carsten | [Blatt: EA/GA](homework/sheet-ea.md) |
| 51 |  | 16\. | [Vorschau Deep Learning (CNN, RNN)](lecture/nn/nn10-cnn.md) | Canan | [Blatt: Games](homework/sheet-games.md) |
| 52 |  | 23\. (**Google Meet**) | [Prüfungsvorbereitung TDU](admin/exams-tdu.md) | Canan |  |
| 01 |  | 30\. (**KEINE Sprechstunde**) | [Machine Learning 101](lecture/dtl/dtl1-mlbasics.md), [CAL2](lecture/dtl/dtl2-cal2.md), [Pruning](lecture/dtl/dtl3-pruning.md), [CAL3](lecture/dtl/dtl4-cal3.md), [Entropie](lecture/dtl/dtl5-entropy.md), [ID3 und C4.5](lecture/dtl/dtl6-id3.md) |  |  |
| 02 | Jan | 06\. | [Einführung Constraints](lecture/csp/csp1-intro.md), [Lösen von diskreten CSP](lecture/csp/csp2-backtrackingsearch.md), [CSP und Heuristiken](lecture/csp/csp3-heuristics.md), [Kantenkonsistenz und AC-3](lecture/csp/csp4-ac3.md) | Carsten | [Blatt: DTL](homework/sheet-dtl.md) |
| 03 |  | 13\. | [Wahrscheinlichkeitstheorie](lecture/naivebayes/nb1-probability.md), [Naive Bayes](lecture/naivebayes/nb2-naivebayes.md) | Carsten | [Blatt: CSP](homework/sheet-csp.md) |

## Prüfungsform, Note und Credits (TDU)

| Prüfung         | Gewicht                       |
|:----------------|-------------------------------|
| Zwischenprüfung | **40 %**                      |
| Endprüfung      | **60 %**                      |
| Übung           | **10 % Bonus für Endprüfung** |

Wenn in der Endprüfung die 40 Punkte Mindestgrenze erreicht wird
(**Prüfungsnote $`\ge`$ 40**), werden **10 % der Übungspunkte als
Bonus** zu der Prüfungsnote hinzugefügt.

Für die Vergabe von Übungspunkten ist eine **erfolgreiche Teilnahme an
der Übung** erforderlich. **Für Details siehe [Prüfung & Noten @
TDU](admin/exams-tdu.md)**.

## Materialien

1.  [“**Artificial Intelligence: A Modern
    Approach**”](http://aima.cs.berkeley.edu/) (*AIMA*). Russell, S. und
    Norvig, P., Pearson, 2020. ISBN
    [978-0134610993](https://fhb-bielefeld.digibib.net/openurl?isbn=978-0134610993).
2.  “Introduction to Artificial Intelligence”. Ertel, W.,
    Springer, 2017. ISBN
    [978-3-319-58487-4](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-58487-4).
    DOI
    [10.1007/978-3-319-58487-4](https://doi.org/10.1007/978-3-319-58487-4).
3.  “An Introduction to Machine Learning”. Kubat, M., Springer, 2017.
    ISBN
    [978-3-319-63913-0](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-63913-0).
    DOI
    [10.1007/978-3-319-63913-0](https://doi.org/10.1007/978-3-319-63913-0).

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

**Exceptions:**

- [“künstliche
  intelligenz”](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/)
  by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/)
  on Pixabay.com ([Pixabay
  License](https://pixabay.com/de/service/license/))

<blockquote><p><sup><sub><strong>Last modified:</strong> 4a1de63 (orga: fix lecture time tdu, 2025-08-29)<br></sub></sup></p></blockquote>
