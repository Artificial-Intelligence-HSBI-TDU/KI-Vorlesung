# HSBI: IFM 3.2: Grundlagen der KI (Winter 2025/26)

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

## Kursformat (HSBI)

<img src="admin/images/fahrplan.png" width="80%">

| Vorlesung (2 SWS): bis 26.10. | Vorlesung (2 SWS): ab 26.10. | Praktikum (2 SWS) |
|:---|:---|:---|
| Mo, 09:00 - 10:30 Uhr (DE) | Mo, 08:00 - 09:30 Uhr (DE) | G1: Mo, 10:30 - 12:00 Uhr (DE) |
| (online, Zoom) | (online, Zoom) | G2: Mo, 13:30 - 15:00 Uhr (DE) |
|  |  | G3: Mo, 15:00 - 16:30 Uhr (DE) |
|  |  | G4: Mo, 16:30 - 18:00 Uhr (DE) |
|  |  | (online, Zoom) |

Durchführung der Vorlesung als *Flipped Classroom*. Alle
Online-Sitzungen per Zoom. Zugangsdaten siehe
[ILIAS](https://www.hsbi.de/elearning/goto.php/crs/1555856).

## Fahrplan (HSBI)

Hier finden Sie einen abonnierbaren [Google
Kalender](https://calendar.google.com/calendar/ical/552fdc6c19e64eda7b36b2d16a88bf4b7e593af2c520afbe1aeeb0bb4f43107d%40group.calendar.google.com/public/basic.ics)
mit allen Terminen der Veranstaltung zum Einbinden in Ihre Kalender-App.

Abgabe der Übungsblätter jeweils **Montag bis 10:00 Uhr** im
[ILIAS](https://www.hsbi.de/elearning/goto.php/exc/1582797). Vorstellung
der Lösung im jeweiligen Praktikum in der Abgabewoche.

| Woche | Thema | Vorlesung: Selbststudium (Vorbereitung) | Vorlesung: Gemeinsame Sitzung | Praktikum | AI Connect |
|:---|:---|:---|:---|:---|:---|
| 06.10. | Orga, Intro | [Einführung KI](lecture/intro/intro1-overview.md) \| [Problemlösen](lecture/intro/intro2-problemsolving.md) | [Orga](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/blob/master/readme_hsbi.md) (*Zoom*) \|\| Einführung Jupyter-Notebooks |  |  |
| 13.10. | Search | [Tiefensuche](lecture/searching/search1-dfs.md) \| [Breitensuche](lecture/searching/search2-bfs.md) \| [Branch-and-Bound](lecture/searching/search3-branchandbound.md) \| [Best First](lecture/searching/search4-bestfirst.md) | [A-Stern](lecture/searching/search5-astar.md) |  |  |
| 20.10. | EA | [Gradientensuche](lecture/searching/search6-gradient.md) \| [Simulated Annealing](lecture/searching/search7-annealing.md) \|\| [Intro EA/GA](lecture/ea/ea1-intro.md) | [Genetische Algorithmen](lecture/ea/ea2-ga.md) | [Blatt: Search](homework/sheet-search.md) |  |
| 27.10. | Games | [Optimale Spiele](lecture/games/games1-intro.md) \| [Games mit Minimax](lecture/games/games2-minimax.md) \| [Minimax und Heuristiken](lecture/games/games3-heuristics.md) | [Alpha-Beta-Pruning](lecture/games/games4-alphabeta.md) | [Blatt: EA/GA](homework/sheet-ea.md) |  |
| 03.11. | DTL | [Machine Learning 101](lecture/dtl/dtl1-mlbasics.md) \| [CAL2](lecture/dtl/dtl2-cal2.md) \| [Pruning](lecture/dtl/dtl3-pruning.md) \| [CAL3](lecture/dtl/dtl4-cal3.md) | [Entropie](lecture/dtl/dtl5-entropy.md) \| [ID3 und C4.5](lecture/dtl/dtl6-id3.md) | [Blatt: Games](homework/sheet-games.md) |  |
| 10.11. | CSP | [Einführung Constraints](lecture/csp/csp1-intro.md) \| [Lösen von diskreten CSP](lecture/csp/csp2-backtrackingsearch.md) \| [CSP und Heuristiken](lecture/csp/csp3-heuristics.md) | [Kantenkonsistenz und AC-3](lecture/csp/csp4-ac3.md) \| [Min-Conflicts Heuristik](lecture/csp/csp5-minconflicts.md) | [Blatt: DTL](homework/sheet-dtl.md) |  |
| 17.11. | Perzeptron | [Perzeptron](lecture/nn/nn01-perceptron.md) | Perzeptron Lernalgorithmus Beispiel | [Blatt: CSP](homework/sheet-csp.md) |  |
| 24.11. | Lin. Regr. | [Lineare Regression und Gradientenabstieg](lecture/nn/nn02-linear-regression.md) | Gradientenabstieg Beispiel | [Blatt: Perzeptron](homework/sheet-nn-perceptron.md) |  |
| 01.12. | Log. Regr. | [Logistische Regression](lecture/nn/nn03-logistic-regression.md) | **ab 09:00**: Logistische Regression Beispiel |  | **Mo, 01.12., 08:00 Uhr: Kick-Off und Team-Building** |
| 08.12. | MLP | [Overfitting und Regularisierung](lecture/nn/nn04-overfitting.md) \|\| [Multilayer Perceptron (MLP)](lecture/nn/nn05-mlp.md) | **ab 09:00**: MLP Beispiel |  | **Mo, 08.12., 08:00 Uhr: Project Launch** |
| 15.12. | Backprop | [Backpropagation](lecture/nn/nn06-backprop.md) | Backpropagation Beispiel |  | **Fr, 19.12., 10:30 Uhr: Team-Präsentationen** |
| *22.12.* |  |  | *Weihnachtspause* |  |  |
| *29.12.* |  |  | *Weihnachtspause* |  |  |
| 05.01. | Train&Test | [Training & Testing](lecture/nn/nn07-training-testing.md) | [Performanzanalyse](lecture/nn/nn08-testing.md) | [Blatt: MLP](homework/sheet-nn-mlp.md) |  |
| 12.01. | NB | [Wahrscheinlichkeitstheorie](lecture/naivebayes/nb1-probability.md) \| [Naive Bayes](lecture/naivebayes/nb2-naivebayes.md) | **TODO**: Bayes’sche Inferenz/Netze | [Blatt: Backprop](homework/sheet-nn-backprop.md) |  |
| 19.01. | PV | [Prüfungsvorbereitung HSBI](admin/exams-hsbi.md) | Rückblick (*Zoom*) | [Blatt: Naive Bayes](homework/sheet-nb.md) |  |

## Prüfungsform, Note und Credits (HSBI)

**(Digitale) Klausur plus Studienleistung (Portfolio)**, 5 ECTS

- **Studienleistung**: “Portfolio” - Kriterien je Person:

  1.  Teilnahme an der Internationalen Projektwoche “AI Connect” mit
      aktiver Beteiligung (Team-Building, Kick-Off, Teamarbeit,
      Vortrag/Video)
  2.  Mind. fünf Übungsblätter erfolgreich bearbeitet
  3.  Video-Vortrag zum erfolgreich bearbeiteten Mini-Projekt (“AI
      Connect”) am Fr, 19.12., ab 10:30 Uhr, a 2 Minuten (pro Team)

  Je Kriterium: Abgabe eines Post Mortem im ILIAS (**jede Person
  individuell**)

- **Gesamtnote**: (Digitale) Klausur im B40 (90 Minuten)

<details>

<summary><strong>Hinweise</strong></summary>

- Die Bearbeitung der Leistungen erfolgt individuell (außer “AI Connect”
  Projektwoche).

- Für die “AI Connect” Projektwoche werden gemischte Teams aus den
  beteiligten Hochschulen gebildet.

- Die Post Mortems sind individuell zu erstellen und abzugeben.

- “Aktive Beteiligung” umfasst Anwesenheit und sachbezogene Beiträge;
  Anwesenheit/Beteiligung werden dokumentiert.

- “Erfolgreiche Bearbeitung” eines Blattes umfasst Bearbeitung aller
  Aufgaben des Blattes und fristgerechte Abgabe des ausreichenden Post
  Mortems im ILIAS. Die intensive Beschäftigung mit den Aufgaben muss
  erkennbar sein.

- **Post Mortem**: Jede Person beschreibt individuell(!) die Bearbeitung
  des jeweiligen Kriteriums bzw. die Teilnahme am “AI
  Connect”-Mini-Projekt zurückblickend mit mind. 200 bis max. 400
  Wörtern (Nutzlast; Überschriften und Links zählen nicht mit). Gehen
  Sie dabei aussagekräftig und nachvollziehbar auf folgende Punkte ein:

  1.  Zusammenfassung: Was wurde gemacht bzw. was wurde auf dem Meeting
      besprochen?
  2.  Details: Kurze Beschreibung besonders interessanter Aspekte.
  3.  Reflexion: Was war der schwierigste Teil? Wie haben Sie dieses
      Problem gelöst?
  4.  Reflexion: Was haben Sie gelernt oder (besser) verstanden?
  5.  Team: Mit wem haben Sie zusammengearbeitet?
  6.  Link zu Ihrem Repo mit den relevanten Artefakten (Lösung, Slides
      für den Vortrag, …).

  Für die “AI Connect”-Meetings passen Sie bitte die Punkte (1) bis (4)
  und (5) entsprechend inhaltlich an, (6) entfällt.

  Die Post Mortems geben Sie bitte pro Person bis spätestens zur
  jeweiligen Deadline im
  [ILIAS](https://www.hsbi.de/elearning/goto.php/exc/1582797) ab.

  Siehe auch
  https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/discussions/3.

</details>

## Materialien

1.  [“**Artificial Intelligence: A Modern
    Approach**”](http://aima.cs.berkeley.edu/) (*AIMA*). Russell, S. und
    Norvig, P., Pearson, 2021. ISBN
    [978-0134610993](https://fhb-bielefeld.digibib.net/openurl?isbn=978-0134610993).
2.  “Grundkurs Künstliche Intelligenz”. Ertel, W., Springer, 2025. ISBN
    [978-3-658-44955-1](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-658-44955-1).
    DOI
    [10.1007/978-3-658-44955-1](https://doi.org/10.1007/978-3-658-44955-1).
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

<blockquote><p><sup><sub><strong>Last modified:</strong> 10f17df (lecture: update to 2025 edition of Ertel, 2025-09-27)<br></sub></sup></p></blockquote>
