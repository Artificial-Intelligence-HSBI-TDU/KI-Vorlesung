---
title: "HSBI: IFM 3.2: Grundlagen der KI (Winter 2025/26)"
no_beamer: true
---

<!--  pandoc -s -f markdown -t markdown+smart-grid_tables-multiline_tables-simple_tables --columns=94  readme_hsbi.md  -o xxx.md  -->


![](https://cdn.pixabay.com/photo/2018/09/27/09/22/artificial-intelligence-3706562_1280.jpg){width="60%"}

[["künstliche intelligenz"](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/) by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/) on Pixabay.com ([Pixabay License](https://pixabay.com/de/service/license/))]{.origin}


# Kursbeschreibung

Ausgehend von den Fragen "Was ist _Intelligenz_?" und "Was ist _künstliche_ Intelligenz?"
werden wir uns in diesem Modul mit **verschiedenen Teilgebieten der KI** beschäftigen und
uns anschauen, welche **Methoden und Algorithmen** es gibt und wie diese funktionieren. Dabei
werden wir auch das Gebiet _Machine Learning_ berühren, aber auch andere wichtige Gebiete
betrachten. Sie erarbeiten sich im Laufe der Veranstaltung einen **Methoden-Baukasten** zur
Lösung unterschiedlichster Probleme und erwerben ein grundlegendes Verständnis für die
Anwendung in Spielen, Navigation, Planung, smarten Assistenten, autonomen Fahrzeugen, ...


# Überblick Modulinhalte

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
3.  ~~Inferenz, Logik~~ (**entfällt im W25**)
    *   ~~Prädikatenlogik: Modellierung, semantische und formale Beweise,
        Unifikation, Resolution~~
    *   ~~Ausblick: Anwendung in Prolog~~


# Team

*   [Carsten Gips](https://www.hsbi.de/minden/ueber-uns/personenverzeichnis/carsten-gips) (HSBI, Sprechstunde nach Vereinbarung)
*   [Canan Yıldız](http://people.tau.edu.tr/people.show/cananyildiz/de) (TDU)
*   N.N.(TDU)


# Kursformat (HSBI)

![](admin/images/fahrplan.png){width="80%"}

**Vorlesung (2 SWS)**

| 07.10. - 24.01.                     |
|:------------------------------------|
| Mo, 11:00 - 12:30 Uhr (DE) (online) |
| (*Flipped Classroom*)               |

**Praktikum (2 SWS)**

| Praktikumsgruppe | 07.10. - 24.01.                       |
|:-----------------|:--------------------------------------|
| G1               | Mo, 17:00 bis 18:30 Uhr (DE) (online) |
| G2               | Mo, 15:15 bis 16:45 Uhr (DE) (online) |
| G3               | Di, 09:45 bis 11:15 Uhr (DE) (online) |

Online-Sitzungen per **Zoom** (Zugangsdaten siehe [ILIAS IFM 3.2 GKI (PO23, 3. Semester)]).
Sie _können_ hierzu den Raum J101 bzw. J102 (siehe Stundenplan) nutzen.

[ILIAS IFM 3.2 GKI (PO23, 3. Semester)]: https://www.hsbi.de/elearning/goto.php?target=crs_1400597&client_id=FH-Bielefeld


# Fahrplan (HSBI)

Hier finden Sie einen abonnierbaren [Google Kalender IFM 3.2 GKI (PO23, 3. Semester)] mit allen Terminen der Veranstaltung zum Einbinden in Ihre Kalender-App.

Abgabe der Übungsblätter jeweils **Montag bis 11:00 Uhr** im [ILIAS](https://www.hsbi.de/elearning/goto.php?target=exc_1420535&client_id=FH-Bielefeld). Vorstellung der Lösung im jeweiligen Praktikum in der Abgabewoche.

| Monat                | Woche | Vorlesung                                                                                                    | Lead           | Abgabe Aufgabenblatt          | Vorstellung Praktikum |
|:---------------------|:------|:-------------------------------------------------------------------------------------------------------------|:---------------|:------------------------------|:----------------------|
| Oktober              | 41    | 07.: [Orga] (*Zoom*); [Einführung KI], [Problemlösen]; [Machine Learning 101], [Perzeptron]                  | Carsten, Canan |                               |                       |
|                      | 42    | 14.: [Lineare Regression]                                                                                    | Canan          | 14.: [Blatt: Perzeptron]      | 14. / 15.             |
|                      | 43    | 21.: [Logistische Regression]                                                                                | Canan          |                               |                       |
|                      | 44    | 28.: [Overfitting], [Multilayer Perceptron]                                                                  | Canan          | 28.: [Blatt: Regression]      | 28. / 29.             |
| November             | 45    | 04.: [Backpropagation]                                                                                       | Canan          | 04.: [Blatt: MLP]             | 04. / 05.             |
|                      | 46    | 11.: [Training & Testing], [Performanzanalyse]                                                               | Canan          | 11.: [Blatt: Backpropagation] | 11. / 12.             |
|                      | 47    | 18.: [Machine Learning 101], [CAL2], [Pruning], [CAL3], [Entropie], [ID3 und C4.5]                           | Carsten        |                               |                       |
|                      | 48    | 25.: [Tiefensuche], [Breitensuche], [Branch-and-Bound], [Best First], [A-Stern]                              | Carsten        | 25.: [Blatt: DTL]             | 25. / 26.             |
| Dezember             | 49    | 02.: [Gradientensuche], [Simulated Annealing]; [Intro EA/GA], [Genetische Algorithmen]                       | Carsten        | 02.: [Blatt: Suche]           | 02. / 03.             |
|                      | 50    | 09.: [Optimale Spiele], [Games mit Minimax], [Minimax und Heuristiken], [Alpha-Beta-Pruning]                 | Carsten        | 09.: [Blatt: EA/GA]           | 09. / 10.             |
|                      | 51    | 16.: ~~Projektwoche Semester 1+3~~ Intro Deep Learning und offene Sprechstunde                               | Canan, Carsten |                               |                       |
|                      | 52    | 23.: _Weihnachtspause_                                                                                       |                |                               |                       |
|                      | 01    | 30.: _Weihnachtspause_                                                                                       |                |                               |                       |
| Januar               | 02    | 06.: [Einführung Constraints], [Lösen von diskreten CSP], [CSP und Heuristiken], [Kantenkonsistenz und AC-3] | Carsten        | 06.: [Blatt: Games]           | 06. / 07.             |
|                      | 03    | 13.: [Wahrscheinlichkeitstheorie], [Naive Bayes]                                                             | Carsten        | 13.: [Blatt: CSP]             | 13. / 14.             |
|                      | 04    | 20.: Rückblick (*Zoom*), [Prüfungsvorbereitung HSBI]                                                         | Carsten        | 20.: [Blatt: Naive Bayes]     | 20. / 21.             |
| _(Prüfungsphase I)_  |       | **Klausur**: Di, 04. Feb 2025, 10-18 Uhr (je Klausur 90', Vergabe ca. 2 Wochen vorher)                       |                |                               |                       |
| _(Prüfungsphase II)_ |       | **Klausur**: Di, 01. Apr 2025, 10-16 Uhr (je Klausur 90', Vergabe ca. 2 Wochen vorher)                       |                |                               |                       |


[Google Kalender IFM 3.2 GKI (PO23, 3. Semester)]: https://calendar.google.com/calendar/ical/552fdc6c19e64eda7b36b2d16a88bf4b7e593af2c520afbe1aeeb0bb4f43107d%40group.calendar.google.com/public/basic.ics

[Orga]: https://www.hsbi.de/elearning/data/FH-Bielefeld/lm_data/lm_1358898/index.html#überblick-modulinhalte

[Einführung KI]: lecture/intro/intro1-overview.md
[Problemlösen]: lecture/intro/intro2-problemsolving.md

[Tiefensuche]: lecture/searching/search1-dfs.md
[Breitensuche]: lecture/searching/search2-bfs.md
[Branch-and-Bound]: lecture/searching/search3-branchandbound.md
[Best First]: lecture/searching/search4-bestfirst.md
[A-Stern]: lecture//searching/search5-astar.md
[Gradientensuche]: lecture/searching/search6-gradient.md
[Simulated Annealing]: lecture/searching/search7-annealing.md

[Intro EA/GA]: lecture/ea/ea1-intro.md
[Genetische Algorithmen]: lecture/ea/ea2-ga.md

[Einführung Constraints]: lecture/csp/csp1-intro.md
[Lösen von diskreten CSP]: lecture/csp/csp2-backtrackingsearch.md
[CSP und Heuristiken]: lecture/csp/csp3-heuristics.md
[Kantenkonsistenz und AC-3]: lecture/csp/csp4-ac3.md

[Optimale Spiele]: lecture/games/games1-intro.md
[Games mit Minimax]: lecture/games/games2-minimax.md
[Minimax und Heuristiken]: lecture/games/games3-heuristics.md
[Alpha-Beta-Pruning]: lecture/games/games4-alphabeta.md

[Machine Learning 101]: lecture/dtl/dtl1-mlbasics.md
[CAL2]: lecture/dtl/dtl2-cal2.md
[Pruning]: lecture/dtl/dtl3-pruning.md
[CAL3]: lecture/dtl/dtl4-cal3.md
[Entropie]: lecture/dtl/dtl5-entropy.md
[ID3 und C4.5]: lecture/dtl/dtl6-id3.md

[Perzeptron]: lecture/nn/nn01-perceptron.md
[Lineare Regression]: lecture/nn/nn02-linear-regression.md
[Logistische Regression]: lecture/nn/nn03-logistic-regression.md
[Overfitting]: lecture/nn/nn04-overfitting.md
[Multilayer Perceptron]: lecture/nn/nn05-mlp.md
[Backpropagation]: lecture/nn/nn06-backprop.md
[Training & Testing]: lecture/nn/nn07-training-testing.md
[Performanzanalyse]: lecture/nn/nn08-testing.md
[Vorschau Deep Learning (CNN, RNN)]: lecture/nn/nn10-cnn.md

[Wahrscheinlichkeitstheorie]: lecture/naivebayes/nb1-probability.md
[Naive Bayes]: lecture/naivebayes/nb2-naivebayes.md

<!-- [Einführung Logik]: lecture/logic/logic1-intro.md -->
<!-- [Syntax und Semantik]: lecture/logic/logic2-syntax.md -->
<!-- [Modelle]: lecture/logic/logic3-modelle.md -->
<!-- [Resolutionsbeweise]: lecture/logic/logic4-resolution.md -->

[Prüfungsvorbereitung HSBI]: admin/exams-hsbi.md

[Blatt: Suche]: homework/sheet-search.md
[Blatt: EA/GA]: homework/sheet-ea.md
[Blatt: Games]: homework/sheet-games.md
[Blatt: CSP]: homework/sheet-csp.md
[Blatt: DTL]: homework/sheet-dtl.md
[Blatt: Naive Bayes]: homework/sheet-nb.md
[Blatt: Perzeptron]: homework/sheet-nn-perceptron.md
[Blatt: Regression]: homework/sheet-nn-regression.md
[Blatt: MLP]: homework/sheet-nn-mlp.md
[Blatt: Backpropagation]: homework/sheet-nn-backprop.md


# Prüfungsform, Note und Credits (HSBI)

**Klausur plus Testat**, 5 ECTS

*   **Testat**: Vergabe der Credit-Points

    Kriterien: Mindestens 6 der 10 Aufgabenblätter erfolgreich bearbeitet.

    ("erfolgreich bearbeitet": Bearbeitung individuell (also in 1er Teams),
    je mindestens 60% bearbeitet, fristgerechte Abgabe der Lösungen im ILIAS,
    Vorstellung der Lösungen im Praktikum)

*   **Klausur**: => Modulnote

    Schriftliche Prüfung ("**Klausur**") am Ende des Semesters (in beiden
    Prüfungszeiträumen; [Prüfungsvorbereitung HSBI](admin/exams-hsbi.md)).

Die nächste Klausur für "Grundlagen der KI" wird am **Dienstag, 01. April 2025**
angeboten. Die Klausur wird als digitale Klausur auf dem Prüfungs-ILIAS der HSBI in
Präsenz vor Ort in **Minden im Raum B40** durchgeführt. Die Prüfung für GKI findet zwischen
**10 Uhr bis 16 Uhr** statt (Bekanntgabe der konkreten Startzeit per Mail ca. eine Woche
vor dem Termin) und **dauert 90 Minuten**. Ein DIN-A4-Zettel ist als Hilfsmittel
zugelassen. Der geprüfte Stoff bezieht sich auf den zuletzt durchgeführten Kurs
(Winter 2024/25). Weitere Informationen siehe [Prüfungsvorbereitung HSBI](admin/exams-hsbi.md).


# Materialien

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
