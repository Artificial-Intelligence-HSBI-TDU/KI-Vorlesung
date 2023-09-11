---
archetype: "home"
title: "IFM 5.14 / INF701: KI (W23)"
---


# IFM 5.14 / INF701: Künstliche Intelligenz (Winter 2023/24)

![](https://cdn.pixabay.com/photo/2018/09/27/09/22/artificial-intelligence-3706562_1280.jpg){width="60%"}

[Quelle: ["künstliche intelligenz"](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/) by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/) on Pixabay.com ([Pixabay License](https://pixabay.com/de/service/license/))]{.origin}


## Kursbeschreibung

Ausgehend von den Fragen "Was ist _Intelligenz_?" und "Was ist _künstliche_ Intelligenz?"
werden wir uns in diesem Modul mit **verschiedenen Teilgebieten der KI** beschäftigen und
uns anschauen, welche **Methoden und Algorithmen** es gibt und wie diese funktionieren. Dabei
werden wir auch das Gebiet _Machine Learning_ berühren, aber auch andere wichtige Gebiete
betrachten. Sie erarbeiten sich im Laufe der Veranstaltung einen **Methoden-Baukasten** zur
Lösung unterschiedlichster Probleme und erwerben ein grundlegendes Verständnis für die
Anwendung in Spielen, Navigation, Planung, smarten Assistenten, autonomen Fahrzeugen, ...


## Überblick Modulinhalte

1.  Problemlösen
    *   Zustände, Aktionen, Problemraum
    *   Suche (blind, informiert): Breiten-, Tiefensuche, Best-First,
        Branch-and-Bound, A-Stern
    *   Lokale Suche: Gradientenabstieg, Genetische/Evolutionäre Algorithmen (GA/EA)
    *   Spiele: Minimax, Alpha-Beta-Pruning, Heuristiken
    *   Constraints: Backtracking, Heuristiken, Propagation, AC-3

2.  Maschinelles Lernen
    *   Merkmalsvektor, Trainingsmenge, Trainingsfehler, Generalisierung
    *   Entscheidungsbäume: CAL2, CAL3, ID3, C4.5
    *   Neuronale Netze
        *   Perzeptron, Lernregel
        *   Feedforward Multilayer Perzeptron (MLP), Backpropagation,
            Trainings- vs. Generalisierungsfehler
        *   Steuerung des Trainings: Kreuzvalidierung, Regularisierung
        *   Ausblick: Support-Vektor-Maschinen
    *   Naive Bayes Klassifikator

3.  ~~Inferenz, Logik~~ (**entfällt im W23**)
    *   ~~Prädikatenlogik: Modellierung, semantische und formale Beweise,
        Unifikation, Resolution~~
    *   ~~Ausblick: Anwendung in Prolog~~


## Team

*   [Carsten Gips](https://www.hsbi.de/minden/ueber-uns/personenverzeichnis/carsten-gips) (HSBI)
*   [Canan Yıldız](http://people.tau.edu.tr/people.show/cananyildiz/de) (TDU)
*   [Ayşe Betül Yüce](http://people.tau.edu.tr/people.show/abyuce/de) (TDU)


## Kursformat

![](admin/images/ki_fahrplan_2023-2024.png){width="80%"}

### Vorlesung: 2 SWS

:::::: {.tabs groupid="hochschule"}
::: {.tab title="HSBI"}

| 09.10.23 - 27.10.23        | 30.10.23 - 26.01.24        |
|:---------------------------|:---------------------------|
| Mo, 10:00 - 11:30 Uhr (DE) | Mo, 09:00 - 10:30 Uhr (DE) |
| online/J101                | online/J101                |

Durchführung als **Flipped Classroom**: Sitzungen per Zoom (**Zugangsdaten siehe [ILIAS]**)

:::
::: {.tab title="TDU"}

| 02.10.23 - 12.01.24        |
|:---------------------------|
| Mo, 11:00 - 12:30 Uhr (TR) |
| online                     |

Durchführung als **Flipped Classroom**: Sitzungen per Zoom (**Zugangsdaten siehe [Google Classroom]**)

:::
::::::

### Praktikum/Übung: 2 SWS

:::::: {.tabs groupid="hochschule"}
::: {.tab title="HSBI"}

| Praktikumsgruppe | 23.10.23 - 19.01.24          |
|:-----------------|:-----------------------------|
| G1               | XX, XX:XX bis XX:XX Uhr (DE) |
| G2               | XX, XX:XX bis XX:XX Uhr (DE) |
|                  | online/XXXX                  |

Sitzungen per Zoom (**Zugangsdaten siehe [ILIAS]**)

:::
::: {.tab title="TDU"}

| Übungsgruppe | 16.10.23 - 12.01.24          |
|:-------------|:-----------------------------|
| G1           | XX, XX:XX bis XX:XX Uhr (TR) |
| G2           | XX, XX:XX bis XX:XX Uhr (TR) |
| G3           | XX, XX:XX bis XX:XX Uhr (TR) |
|              | online                       |

Sitzungen per Zoom (**Zugangsdaten siehe [Google Classroom]**)

:::
::::::

[ILIAS]: https://www.hsbi.de/elearning/goto.php?target=crs_1254525&client_id=FH-Bielefeld
[Google Classroom]: https://classroom.google.com/c/NjMzNDM4MDk1NTM5

### Prüfungsform, Note und Credits

:::::: {.tabs groupid="hochschule"}
::: {.tab title="HSBI"}

Prüfungsform HSBI: **Klausur plus Testat**, 5 ECTS

*   **Testat**: Vergabe der Credit-Points

    Für die Vergabe der Credit-Points ist die regelmäßige und erfolgreiche
    Teilnahme am Praktikum erforderlich, welche am Ende des Semesters durch
    ein Testat bescheinigt wird.

    Kriterien: Sie haben mind. 6 der 10 Aufgabenblätter _jeweils_ ausreichend
    (mind. 60%) bearbeitet und die Lösung im Praktikum vorgestellt.

*   **Klausur**: => Modulnote

    Schriftliche Prüfung ("**Klausur**") am Ende des Semesters (in beiden
    Prüfungszeiträumen; [Prüfungsvorbereitung HSBI](admin/exams-hsbi.md)).

:::
::: {.tab title="TDU"}

**Notenzusammensetzung TDU**

<!--
| Prüfung         | Gewicht |
|:----------------|---------|
| Übung (UE)      | 40 %    |
| Endprüfung (EP) | 60 %    |
-->

*   **Endprüfung 60%**

    Die Endprüfung ist als schriftliche Prüfung auf dem Campus vorgesehen.

    Es wird keine Zwischenprüfung stattfinden.

*   **Übung 40%**

    Für die Vergabe von Punkten ist die **erfolgreiche Teilnahme an der Übung** erforderlich.

    Erfolgreiche Teilnahme bedeutet:

    1.  Aufgaben bearbeiten und hochladen, und
    2.  In Übungsstunde anwesend sein, gegebenenfalls eigene Lösung vorstellen, und
    3.  Feedback zu den Lösungen anderer geben. Für Details siehe
        [FAQ](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/discussions).

:::
::::::


## Materialien

### Literatur

1.  ["**Artificial Intelligence: A Modern Approach**"](http://aima.cs.berkeley.edu/) (_AIMA_).
    Russell, S. und Norvig, P., Pearson, 2020.
    ISBN [978-0134610993](https://fhb-bielefeld.digibib.net/openurl?isbn=978-0134610993).

2.  "Introduction to Artificial Intelligence".
    Ertel, W., Springer, 2017.
    ISBN [978-3-319-58487-4](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-58487-4).
    DOI [10.1007/978-3-319-58487-4](https://doi.org/10.1007/978-3-319-58487-4).

3.  "An Introduction to Machine Learning".
    Kubat, M., Springer, 2017.
    ISBN [978-3-319-63913-0](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-63913-0).
    DOI [10.1007/978-3-319-63913-0](https://doi.org/10.1007/978-3-319-63913-0).

### Tools

*   [github.com/aimacode](https://github.com/aimacode)
*   [WEKA](https://www.cs.waikato.ac.nz/ml/weka/)
*   [scikit-learn](https://scikit-learn.org)


## Fahrplan

### Vorlesung

:::::: {.tabs groupid="hochschule"}
::: {.tab title="HSBI"}

| Woche | Datum                                   | Themen                                                                                                        | Lead    | Start Bearbeitung |
|:-----:|:----------------------------------------|:--------------------------------------------------------------------------------------------------------------|:--------|:------------------|
|  41   | Mo, 09.10.23 (**09:00 - 10:00** Uhr DE) | Orga HSBI (**Zoom**) \|\| [Einführung KI] \| [Problemlösen]                                                   | Carsten |                   |
|  42   | Mo, 16.10.23                            | [Tiefensuche] \| [Breitensuche] \| [Branch-and-Bound] \| [Best First] \| [A-Stern]                            | Carsten | [B01]             |
|  43   | Mo, 23.10.23                            | [Gradientensuche] \| [Simulated Annealing] \|\| [Intro EA/GA] \| [Genetische Algorithmen]                     | Carsten | [B02]             |
|  44   | Mo, 30.10.23                            | [Optimale Spiele] \| [Minimax] \| [Minimax und Heuristiken] \| [Alpha-Beta-Pruning]                           | Carsten | [B03]             |
|  45   | Mo, 06.11.23                            | [Einführung Constraints] \| [Lösen von diskreten CSP] \| [CSP und Heuristiken] \| [Kantenkonsistenz und AC-3] | Carsten | [B04]             |
|  46   | Mo, 13.11.23                            | [Wahrscheinlichkeitstheorie] \| [Naive Bayes]                                                                 | Carsten | [B06]             |
|  47   | Mo, 20.11.23                            | [Machine Learning 101] \| [CAL2] \| [Pruning] \| [CAL3] \| [Entropie] \| [ID3 und C4.5]                       | Carsten | [B05]             |
|  48   | Mo, 27.11.23                            | [Perzeptron]                                                                                                  | Canan   | [B07]             |
|  49   | Mo, 04.12.23                            | [Lineare Regression]                                                                                          | Canan   | [B08]             |
|  50   | Mo, 11.12.23                            | [Logistische Regression]                                                                                      | Canan   |                   |
|  51   | Mo, 18.12.23                            | [Overfitting] \| [Multilayer Perceptron]                                                                      | Canan   | [B09]             |
|  02   | Mo, 08.01.24                            | [Backpropagation]                                                                                             | Canan   | [B10]             |
|  03   | Mo, 15.01.24                            | [Training & Testing] \| [Performanzanalyse]                                                                   | Canan   |                   |
|  04   | Mo, 22.01.24                            | Rückblick (**Zoom**) \| [Prüfungsvorbereitung HSBI]                                                           | Carsten |                   |

:::
::: {.tab title="TDU"}

| Woche | Datum        | Themen                                                                                                        | Lead           | Start Bearbeitung |
|:-----:|:-------------|:--------------------------------------------------------------------------------------------------------------|:---------------|:------------------|
|  40   | Mo, 02.10.23 | Orga TDU (**Zoom**) \|\| [Einführung KI] \| [Problemlösen]                                                    | Canan, Carsten |                   |
|  41   | Mo, 09.10.23 | [Machine Learning 101] \| [CAL2] \| [Pruning] \| [CAL3] \| [Entropie] \| [ID3 und C4.5]                       | Carsten        | [B05]             |
|  42   | Mo, 16.10.23 | [Tiefensuche] \| [Breitensuche] \| [Branch-and-Bound] \| [Best First] \| [A-Stern]                            | Carsten        | [B01]             |
|  43   | Mo, 23.10.23 | [Gradientensuche] \| [Simulated Annealing] \|\| [Intro EA/GA] \| [Genetische Algorithmen]                     | Carsten        | [B02]             |
|  44   | Mo, 30.10.23 | [Optimale Spiele] \| [Minimax] \| [Minimax und Heuristiken] \| [Alpha-Beta-Pruning]                           | Carsten        | [B03]             |
|  45   | Mo, 06.11.23 | [Einführung Constraints] \| [Lösen von diskreten CSP] \| [CSP und Heuristiken] \| [Kantenkonsistenz und AC-3] | Carsten        | [B04]             |
|  46   | Mo, 13.11.23 | [Wahrscheinlichkeitstheorie] \| [Naive Bayes]                                                                 | Carsten        | [B06]             |
|  47   | Mo, 20.11.23 | **Zwischenprüfung**                                                                                           |                |                   |
|  48   | Mo, 27.11.23 | [Perzeptron]                                                                                                  | Canan          | [B07]             |
|  49   | Mo, 04.12.23 | [Lineare Regression]                                                                                          | Canan          | [B08]             |
|  50   | Mo, 11.12.23 | [Logistische Regression]                                                                                      | Canan          |                   |
|  51   | Mo, 18.12.23 | [Overfitting] \| [Multilayer Perceptron]                                                                      | Canan          | [B09]             |
|  52   | Mo, 25.12.23 | [Backpropagation]                                                                                             | Canan          | [B10]             |
|  02   | Mo, 08.01.24 | [Training & Testing] \| [Performanzanalyse] \|\| [Prüfungsvorbereitung TDU]                                   | Canan          |                   |

:::
::::::

[Einführung KI]: lecture/intro/intro-ai.md
[Problemlösen]: lecture/intro/problems.md

[Tiefensuche]: lecture/search/uninformed/dfs.md
[Breitensuche]: lecture/search/uninformed/bfs.md
[Branch-and-Bound]: lecture/search/informed/branchandbound.md
[Best First]: lecture/search/informed/bestfirst.md
[A-Stern]: lecture//search/informed/astar.md
[Gradientensuche]: lecture/search/local/gradient.md
[Simulated Annealing]: lecture/search/local/annealing.md

[Intro EA/GA]: lecture/ea/intro-ea.md
[Genetische Algorithmen]: lecture/ea/ga.md

[Einführung Constraints]: lecture/csp/intro-csp.md
[Lösen von diskreten CSP]: lecture/csp/backtrackingsearch.md
[CSP und Heuristiken]: lecture/csp/heuristics-csp.md
[Kantenkonsistenz und AC-3]: lecture/csp/ac3.md

[Optimale Spiele]: lecture/games/intro-games.md
[Minimax]: lecture/games/minimax.md
[Minimax und Heuristiken]: lecture/games/heuristics-minimax.md
[Alpha-Beta-Pruning]: lecture/games/alphabeta.md

[Machine Learning 101]: lecture/dtl/mlbasics.md
[CAL2]: lecture/dtl/cal2.md
[Pruning]: lecture/dtl/pruning.md
[CAL3]: lecture/dtl/cal3.md
[Entropie]: lecture/dtl/entropy.md
[ID3 und C4.5]: lecture/dtl/id3.md

[Perzeptron]: lecture/nn/nn1_perceptron.md
[Lineare Regression]: lecture/nn/nn2_linear_regression.md
[Logistische Regression]: lecture/nn/nn3_logistic_regression.md
[Overfitting]: lecture/nn/nn4_overfitting.md
[Multilayer Perceptron]: lecture/nn/nn5_mlp.md
[Backpropagation]: lecture/nn/nn6_backprop.md
[Training & Testing]: lecture/nn/nn7_training_testing.md
[Performanzanalyse]: lecture/nn/nn8_testing.md
<!-- [Large Language Models]: lecture/nn/nn9_llm.md -->

[Wahrscheinlichkeitstheorie]: lecture/naivebayes/probability.md
[Naive Bayes]: lecture/naivebayes/nb.md

<!-- [Einführung Logik]: lecture/logic/intro-logic.md -->
<!-- [Syntax und Semantik]: lecture/logic/syntax.md -->
<!-- [Modelle]: lecture/logic/modelle.md -->
<!-- [Resolutionsbeweise]: lecture/logic/resolution.md -->

[Prüfungsvorbereitung HSBI]: admin/exams-hsbi.md
[Prüfungsvorbereitung TDU]: admin/exams-tdu.md

### Praktikum/Übung

:::::: {.tabs groupid="hochschule"}
::: {.tab title="HSBI"}

| Woche | Blatt                  | Abgabe ILIAS                                                                                                                                                                                                       | Vorstellung Praktikum |
|:-----:|:-----------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:----------------------|
|  43   | [B01]: Suche           | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2023        |
|  44   | [B02]: EA/GA           | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2023        |
|  45   | [B03]: Minimax         | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2023        |
|  46   | [B04]: CSP             | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2023        |
|  47   | [B06]: NB              | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2023        |
|  48   | [B05]: DTL             | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2023        |
|  49   | [B07]: Perzeptron      | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2023        |
|  51   | [B08]: Lin./Log. Regr. | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2023        |
|  02   | [B09]: MLP             | XX, XX.XX.2024, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2024        |
|  03   | [B10]: Backpropagation | XX, XX.XX.2024, XX:XX Uhr ([Link](https://www.hsbi.de/elearning/ilias.php?ref_id=1258633&target=1258633&cmd=showOverview&cmdClass=ilobjexercisegui&cmdNode=cl:p3&baseClass=ilexercisehandlergui#il_mhead_t_focus)) | XX, XX.XX.2024        |

:::
::: {.tab title="TDU"}

| Woche | Blatt                  | Abgabe Google Classroom                                    | Vorstellung Übung |
|:-----:|:-----------------------|:-----------------------------------------------------------|:------------------|
|  42   | [B05]: DTL             | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  43   | [B01]: Suche           | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  44   | [B02]: EA/GA           | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  45   | [B03]: Minimax         | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  46   | [B04]: CSP             | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  48   | [B06]: NB              | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  49   | [B07]: Perzeptron      | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  51   | [B08]: Lin./Log. Regr. | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  52   | [B09]: MLP             | XX, XX.XX.2023, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2023    |
|  02   | [B10]: Backpropagation | XX, XX.XX.2024, XX:XX Uhr ([Link](https://www.google.de/)) | XX, XX.XX.2024    |

:::
::::::

[B01]: homework/sheet01.md
[B02]: homework/sheet02.md
[B03]: homework/sheet03.md
[B04]: homework/sheet04.md
[B05]: homework/sheet05.md
[B06]: homework/sheet06.md
[B07]: homework/sheet07.md
[B08]: homework/sheet08.md
[B09]: homework/sheet09.md
[B10]: homework/sheet10.md
<!-- [B11]: homework/sheet11.md -->
<!-- [P1]: homework/poster1.md -->
<!-- [P2]: homework/poster2.md -->


## Förderungen und Kooperationen

### Kooperation zw. HSBI und TDU

Über das Projekt ["Digital Mobil @ FH Bielefeld"] der Fachhochschule Bielefeld (HSBI) ist
im Sommer 2020 eine Kooperation mit der Türkisch-Deutschen Universität in Istanbul (TDU)
im Modul "Künstliche Intelligenz" gestartet.

Wir werden in diesem Semester die Vorlesungen und auch die Übungen/Praktika wieder im
Co-Teaching durchführen. In den Zoom-Sitzungen nehmen deshalb alle Studierenden gemeinsam
(TDU und HSBI) teil.

["Digital Mobil @ FH Bielefeld"]: https://www.hsbi.de/en/digitalmobil

### Kooperation mit dem DigikoS-Projekt

Diese Vorlesung wurde zudem vom Projekt ["Digitalbaukasten für kompetenzorientiertes Selbststudium"]
(_DigikoS_) unterstützt. Ein vom DigikoS-Projekt ausgebildeter Digital Learning Scout hat
insbesondere die Koordination der digitalen Gruppenarbeiten, des Peer-Feedbacks und der
Postersessions in ILIAS technisch und inhaltlich begleitet. DigikoS wird als Verbundprojekt
von der Stiftung Innovation in der Hochschullehre gefördert.

["Digitalbaukasten für kompetenzorientiertes Selbststudium"]: https://www.digikos.de







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
