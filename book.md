# IFM 3.2 / INF701: Künstliche Intelligenz (Winter 2025/26)

<a id="id-da39a3ee5e6b4b0d3255bfef95601890afd80709"></a>

## Syllabus

<p align="center"><img src="https://cdn.pixabay.com/photo/2018/09/27/09/22/artificial-intelligence-3706562_1280.jpg" width="60%" /></p>

Quelle: ["künstliche
intelligenz"](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/)
by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/) on
Pixabay.com ([Pixabay License](https://pixabay.com/de/service/license/))

### Kursbeschreibung

Ausgehend von den Fragen "Was ist *Intelligenz*?" und "Was ist
*künstliche* Intelligenz?" werden wir uns in diesem Modul mit
**verschiedenen Teilgebieten der KI** beschäftigen und uns anschauen,
welche **Methoden und Algorithmen** es gibt und wie diese funktionieren.
Dabei werden wir auch das Gebiet *Machine Learning* berühren, aber auch
andere wichtige Gebiete betrachten. Sie erarbeiten sich im Laufe der
Veranstaltung einen **Methoden-Baukasten** zur Lösung
unterschiedlichster Probleme und erwerben ein grundlegendes Verständnis
für die Anwendung in Spielen, Navigation, Planung, smarten Assistenten,
autonomen Fahrzeugen, ...

[**zur TDU-Variante**](#id-b21a245fb1bac510210f7712bce0dbd9e2a468b5)

[**zur HSBI-Variante**](#id-f4b85a8855bfcf6dc9299224bc5aa73488d6ab79)

### Förderungen und Kooperationen

#### Kooperation mit SEECS/NUST, CST/RUB, TDU und HSBI

Im Winter 2025 laden wir Sie zur internationalen, online durchgeführten
Projektwoche "AI Connect" mit spannenden Challenges rund um das Thema
Künstliche Intelligenz ein, die wir gemeinsam mit der [Hochschule
Bielefeld (HSBI)](https://www.hsbi.de/), der [Türkisch-Deutschen
Universität in Istanbul (TDU)](https://www.tau.edu.tr/en), der [School
of Electrical Engineering & Computer Science (SEECS/NUST) in
Pakistan](https://seecs.nust.edu.pk/) und dem [College of Science and
Technology in Bhutan (CST/RUB)](https://cst.edu.bt/) für unsere
Studierenden organisieren.

#### Kooperation zw. HSBI und TDU

Über das Projekt ["Digital Mobil @ FH
Bielefeld"](https://www.hsbi.de/en/digitalmobil) der Fachhochschule
Bielefeld (HSBI) ist im Sommer 2020 eine Kooperation mit der
Türkisch-Deutschen Universität in Istanbul (TDU) im Modul "Künstliche
Intelligenz" gestartet.

Wir werden in diesem Semester die Vorlesungen wieder im Co-Teaching
durchführen. In den Zoom-Sitzungen nehmen deshalb alle Studierenden
gemeinsam (TDU und HSBI) teil.

#### Kooperation mit dem DigikoS-Projekt

Diese Vorlesung wurde zudem vom Projekt ["Digitalbaukasten für
kompetenzorientiertes Selbststudium"](https://www.digikos.de)
(*DigikoS*) unterstützt. Ein vom DigikoS-Projekt ausgebildeter Digital
Learning Scout hat insbesondere die Koordination der digitalen
Gruppenarbeiten, des Peer-Feedbacks und der Postersessions in ILIAS
technisch und inhaltlich begleitet. DigikoS wird als Verbundprojekt von
der Stiftung Innovation in der Hochschullehre gefördert.

------------------------------------------------------------------------

### LICENSE

<p align="center"><img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png"  /></p>

Unless otherwise noted, [this
work](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung)
by [Canan Yıldız](https://github.com/cyildiz), [Carsten
Gips](https://github.com/cagix) and
[contributors](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/graphs/contributors)
is licensed under [CC BY-SA
4.0](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/LICENSE.md).
See the
[credits](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/CREDITS.md)
for a detailed list of contributing projects.

<a id="id-b21a245fb1bac510210f7712bce0dbd9e2a468b5"></a>

## TDU: INF701: Künstliche Intelligenz (Winter 2025/26)

### Syllabus TDU

<p align="center"><img src="https://cdn.pixabay.com/photo/2018/09/27/09/22/artificial-intelligence-3706562_1280.jpg" width="60%" /></p>

Quelle: ["künstliche
intelligenz"](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/)
by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/) on
Pixabay.com ([Pixabay License](https://pixabay.com/de/service/license/))

#### Kursbeschreibung

Ausgehend von den Fragen "Was ist *Intelligenz*?" und "Was ist
*künstliche* Intelligenz?" werden wir uns in diesem Modul mit
**verschiedenen Teilgebieten der KI** beschäftigen und uns anschauen,
welche **Methoden und Algorithmen** es gibt und wie diese funktionieren.
Dabei werden wir auch das Gebiet *Machine Learning* berühren, aber auch
andere wichtige Gebiete betrachten. Sie erarbeiten sich im Laufe der
Veranstaltung einen **Methoden-Baukasten** zur Lösung
unterschiedlichster Probleme und erwerben ein grundlegendes Verständnis
für die Anwendung in Spielen, Navigation, Planung, smarten Assistenten,
autonomen Fahrzeugen, ...

#### Überblick Modulinhalte

1.  Problemlösen
    -   Zustände, Aktionen, Problemraum
    -   Suche (blind, informiert): Breiten-, Tiefensuche, Best-First,
        Branch-and-Bound, A-Stern
    -   Lokale Suche: Gradientenabstieg, Genetische/Evolutionäre
        Algorithmen (GA/EA)
    -   Spiele: Minimax, Alpha-Beta-Pruning, Heuristiken
    -   Constraints: Backtracking, Heuristiken, Propagation, AC-3
2.  Maschinelles Lernen
    -   Merkmalsvektor, Trainingsmenge, Trainingsfehler, Generalisierung
    -   Entscheidungsbäume: CAL2, CAL3, ID3, C4.5
    -   Neuronale Netze
        -   Perzeptron, Lernregel
        -   Feedforward Multilayer Perzeptron (MLP), Backpropagation,
            Trainings- vs. Generalisierungsfehler
        -   Steuerung des Trainings: Kreuzvalidierung, Regularisierung
        -   Ausblick: Support-Vektor-Maschinen
    -   Naive Bayes Klassifikator
3.  ~~Inferenz, Logik~~ (**entfällt im W25**)
    -   ~~Prädikatenlogik: Modellierung, semantische und formale
        Beweise, Unifikation, Resolution~~
    -   ~~Ausblick: Anwendung in Prolog~~

#### Team

-   [Canan Yıldız](http://people.tau.edu.tr/people.show/cananyildiz/de)
    (TDU)
-   [Carsten
    Gips](https://www.hsbi.de/minden/ueber-uns/personenverzeichnis/carsten-gips)
    (HSBI, Sprechstunde nach Vereinbarung)
-   [Halit Canap
    Demir](https://people.tau.edu.tr/people.show/halit.demir/de) (TDU)
-   [Seza Nihan
    Bekarlar](https://people.tau.edu.tr/people.show/nihan.bekarlar/de)
    (TDU)

#### Kursformat (TDU)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/admin/images/fahrplan.png" width="80%" /></p>

| Vorlesung (2 SWS)          | Übung (2 SWS)              |
|:---------------------------|:---------------------------|
| Mo, 10:00 - 11:30 Uhr (TR) | G1: Di, 15:30 - 17:30 (TR) |
| (online, Zoom)             | G2: Do, 08:00 - 10:00 (TR) |
|                            | (online, Google Meet)      |

Durchführung der Vorlesung als *Flipped Classroom*: Sitzungen per Zoom,
Übungen per Google Meet. (Zugangsdaten siehe [Google
Classroom](https://classroom.google.com/c/NzE4Mzk0NDE5ODEz?cjc=fhzfku3))

#### Fahrplan (TDU)

| Woche | Thema | Vorlesung: Selbststudium (Vorbereitung) | Vorlesung: Gemeinsame Sitzung | Übung | [AI Connect](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/discussions/16) |
|:--|:---|:------------------------|:--------------|:--------|:-----------------|
| 15.09. | Orga | [Einführung KI](#id-ca2e904964509a28710797d2f876c625f54f64ea) | [Orga](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/blob/master/readme_tdu.md) (*Zoom*) |  |  |
| 22.09. | CSP | [Einführung Constraints](#id-84f051404cae6b3a63ddc230ad80cb495047845f) \| [Lösen von diskreten CSP](#id-3b6247c92b0af037c1f0c4837facaaa1b25420c3) \| [CSP und Heuristiken](#id-aef0213ac4bbd41501955f0ec950c44d1756a5cf) | [Kantenkonsistenz und AC-3](#id-a9b47eac39d203917d2689bbfad8003315b2990c) \| [Min-Conflicts Heuristik](#id-9d0480f68cb0e1adb81cdc4b9b357168511b77d5) |  |  |
| 29.09. | NB | [Wahrscheinlichkeitstheorie](#id-cd12d8faa8a855e40fd112b32dc98078382d90aa) \| [Naive Bayes](#id-cd72f1bd942f6b05157da80ba479a7a493d898c1) | [Textklassifikation mit NB](#id-6e322bc628d8ff7a4faa38fa42a09770217ab4fb) | [Blatt: CSP](#id-97b1dd75d6bb5e4678ebee3df7fe5a521e52d6e2) |  |
| 06.10. | Intro | [Problemlösen](#id-7a896d9c036ef29a6574730757ae03cd7c0d3e26) | **ab 10:45**: [Einführung Jupyter-Notebooks](#id-37999e3f5ed2a133fbaf6ee91fdb94138df2391d) | [Blatt: Naive Bayes](#id-8b661cb2908035ca0da1b1837f2b800c4381ebad) |  |
| 13.10. | Search | [Tiefensuche](#id-3263461a899091090f8d87ea7f7f3f25bf8255eb) \| [Breitensuche](#id-d08f602e3cf0c02bc97cd5125053645dfe917271) \| [Branch-and-Bound](#id-0712fba7e7ca1e4684ed9b6de19345ba86fba471) \| [Best First](#id-0a43351a075c7504b755675510f9395b5dd8c092) | [A-Stern](#id-53af5b698d302efe7ce547dd76c249d8ebd26df5) |  |  |
| 20.10. | EA | [Gradientensuche](#id-3e0f73b743e74f106aacc68840406273348f8341) \| [Simulated Annealing](#id-bafda494229223827755dbbffb5862eeb7e31262) \|\| [Intro EA/GA](#id-aa3481a03ed2e17666ced54325637e0551022587) | [Genetische Algorithmen](#id-c99ae5cae334ccb182fc61d94707f8e7cdf363c9) | [Blatt: Suche](#id-ab3ff3658bdafaf1ee5c17c11ffae098b587c048) |  |
| 27.10. | Games | [Optimale Spiele](#id-f669cc4761526fb137b102a84bf0b7a3c8e1b51a) \| [Games mit Minimax](#id-5438da7280b20127b14a6fc6336d798d64ef51d6) \| [Minimax und Heuristiken](#id-a9ac054922401b7eb9285dc81c4d01960ce147ec) | [Alpha-Beta-Pruning](#id-c8c274bfbd36e9fdbf8c47df5f99c064b06d9ff3) | [Blatt: EA/GA](#id-cb2cf09f6031a168fc7c9094c3ee2d9df377e9f0) |  |
| 03.11. | DTL | [Machine Learning 101](#id-82f362361464406c7ba09ef4a0893a4e32983b94) \| [CAL2](#id-4807e4a11529854b6d77f86cd3ca37caabc11cc9) \| [Pruning](#id-19ffac22140785b62f48ef3e44c1bde3a43d2054) \| [CAL3](#id-1867142959094a5c852b79c1c6f3caed8e931b63) | [Entropie](#id-f085a6c9977296f3811e103376badb06ee228d84) \| [ID3 und C4.5](#id-0d69ce52eac18a7d932147cc42b20bcd98d267f3) | [Blatt: Games](#id-999c549c4e5cc5a8e810d1e55e7b21a1e3c85906) |  |
| 10.11. | ZP |  | **Zwischenprüfung** |  |  |
| 17.11. | Perzeptron | [Perzeptron](#id-e3a8542d0a1d7b0c7eb04d713c7976160d0eaf84) | Perzeptron Lernalgorithmus Beispiel | [Blatt: DTL](#id-4a134eae1417a20b6726b2fdc2b1dfd28a683e29) |  |
| 24.11. | Lin. Regr. | [Lineare Regression und Gradientenabstieg](#id-52f9015d59d2dde3e4f18acb1be26aa3c10759ab) | Gradientenabstieg Beispiel | [Blatt: Perzeptron](#id-509c9bafc24171e16bb93dfcd473d2b9bae04d15) |  |
| 01.12. | Log. Regr. | [Logistische Regression](#id-c320456aa6e007de53f56d63d12b19d7351a2f77) | **ab 11:00**: Logistische Regression Beispiel |  | **Mo, 01.12., 10:00 Uhr: Kick-Off und Team-Building** [Warm-up Task](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/discussions/20) |
| 08.12. | MLP | [Overfitting und Regularisierung](#id-ff282a3dce4dd000d38f923a472a928c94b93436) \|\| [Multilayer Perceptron (MLP)](#id-94eb0e9e9c19bba8118b63b08886a14024a2acf3) | **ab 11:00**: MLP Beispiel | [Blatt: Regression](#id-715e7fb7bfa3ef282899962cfa93c2f3da8c95bc) | **Mo, 08.12., 10:00 Uhr: Project Launch** |
| 15.12. | Backprop | [Backpropagation](#id-f08c9adef34314d8e7af05e5874f87e61cfd93a9) | Backpropagation Beispiel | [Blatt: MLP](#id-cba17b43f628a8fbf19e217d186183ebcd63bad5) | **Fr, 19.12., 12:30 Uhr: Team-Präsentationen** |
| 22.12. | Train&Test | [Training & Testing](#id-59d01c7aa50822d6f5b2f5f0413bf60ad710fcdf) | [Performanzanalyse](#id-754af026d5303aa4a872ce1693668530aefee309) | [Blatt: Backpropagation](#id-670c545ed4052dcfd1d123a2ba8b68b3154acccc) |  |
| 29.12. | PV |  | Rückblick (*Zoom*) \| [Prüfungsvorbereitung TDU](#id-a9a587e6c5156b582e9029de040daaab2e66903b) |  |  |

#### Prüfungsform, Note und Credits (TDU)

| Prüfung         | Gewicht                       |
|:----------------|-------------------------------|
| Zwischenprüfung | **40 %**                      |
| Endprüfung      | **60 %**                      |
| Übung           | **10 % Bonus für Endprüfung** |

Wenn in der Endprüfung die 40 Punkte Mindestgrenze erreicht wird
(**Prüfungsnote $\ge$ 40**), werden **10 % der Übungspunkte als Bonus**
zu der Prüfungsnote hinzugefügt.

Für die Vergabe von Übungspunkten ist eine **erfolgreiche Teilnahme an
der Übung** erforderlich. **Für Details siehe [Prüfung & Noten @
TDU](#id-a9a587e6c5156b582e9029de040daaab2e66903b)**.

#### Materialien

1.  ["**Artificial Intelligence: A Modern
    Approach**"](http://aima.cs.berkeley.edu/) (*AIMA*). Russell, S. und
    Norvig, P., Pearson, 2021. ISBN
    [978-0134610993](https://fhb-bielefeld.digibib.net/openurl?isbn=978-0134610993).
2.  "Grundkurs Künstliche Intelligenz". Ertel, W., Springer, 2025. ISBN
    [978-3-658-44955-1](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-658-44955-1).
    DOI
    [10.1007/978-3-658-44955-1](https://doi.org/10.1007/978-3-658-44955-1).
3.  "An Introduction to Machine Learning". Kubat, M., Springer, 2017.
    ISBN
    [978-3-319-63913-0](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-63913-0).
    DOI
    [10.1007/978-3-319-63913-0](https://doi.org/10.1007/978-3-319-63913-0).

<a id="id-f4b85a8855bfcf6dc9299224bc5aa73488d6ab79"></a>

## HSBI: IFM 3.2: Grundlagen der KI (Winter 2025/26)

### Syllabus HSBI

<p align="center"><img src="https://cdn.pixabay.com/photo/2018/09/27/09/22/artificial-intelligence-3706562_1280.jpg" width="60%" /></p>

Quelle: ["künstliche
intelligenz"](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/)
by [Gerd Altmann (geralt)](https://pixabay.com/de/users/geralt-9301/) on
Pixabay.com ([Pixabay License](https://pixabay.com/de/service/license/))

#### Kursbeschreibung

Ausgehend von den Fragen "Was ist *Intelligenz*?" und "Was ist
*künstliche* Intelligenz?" werden wir uns in diesem Modul mit
**verschiedenen Teilgebieten der KI** beschäftigen und uns anschauen,
welche **Methoden und Algorithmen** es gibt und wie diese funktionieren.
Dabei werden wir auch das Gebiet *Machine Learning* berühren, aber auch
andere wichtige Gebiete betrachten. Sie erarbeiten sich im Laufe der
Veranstaltung einen **Methoden-Baukasten** zur Lösung
unterschiedlichster Probleme und erwerben ein grundlegendes Verständnis
für die Anwendung in Spielen, Navigation, Planung, smarten Assistenten,
autonomen Fahrzeugen, ...

#### Überblick Modulinhalte

1.  Problemlösen
    -   Zustände, Aktionen, Problemraum
    -   Suche (blind, informiert): Breiten-, Tiefensuche, Best-First,
        Branch-and-Bound, A-Stern
    -   Lokale Suche: Gradientenabstieg, Genetische/Evolutionäre
        Algorithmen (GA/EA)
    -   Spiele: Minimax, Alpha-Beta-Pruning, Heuristiken
    -   Constraints: Backtracking, Heuristiken, Propagation, AC-3
2.  Maschinelles Lernen
    -   Merkmalsvektor, Trainingsmenge, Trainingsfehler, Generalisierung
    -   Entscheidungsbäume: CAL2, CAL3, ID3, C4.5
    -   Neuronale Netze
        -   Perzeptron, Lernregel
        -   Feedforward Multilayer Perzeptron (MLP), Backpropagation,
            Trainings- vs. Generalisierungsfehler
        -   Steuerung des Trainings: Kreuzvalidierung, Regularisierung
        -   Ausblick: Support-Vektor-Maschinen
    -   Naive Bayes Klassifikator
3.  ~~Inferenz, Logik~~ (**entfällt im W25**)
    -   ~~Prädikatenlogik: Modellierung, semantische und formale
        Beweise, Unifikation, Resolution~~
    -   ~~Ausblick: Anwendung in Prolog~~

#### Team

-   [Carsten
    Gips](https://www.hsbi.de/minden/ueber-uns/personenverzeichnis/carsten-gips)
    (HSBI, Sprechstunde nach Vereinbarung)
-   [Canan Yıldız](http://people.tau.edu.tr/people.show/cananyildiz/de)
    (TDU)

#### Kursformat (HSBI)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/admin/images/fahrplan.png" width="80%" /></p>

| Vorlesung (2 SWS): bis 26.10. | Vorlesung (2 SWS): ab 26.10. | Praktikum (2 SWS) |
|:-----------------------|:----------------------|:------------------------|
| Mo, 09:00 - 10:30 Uhr (DE) | Mo, 08:00 - 09:30 Uhr (DE) | G1: Mo, 10:00 - 11:30 Uhr (DE) |
| (online, Zoom) | (online, Zoom) | G2: Mo, 13:30 - 15:00 Uhr (DE) |
|  |  | G3: Mo, 15:00 - 16:30 Uhr (DE) |
|  |  | G4: Mo, 16:30 - 18:00 Uhr (DE) |
|  |  | (online, Zoom) |

Durchführung der Vorlesung als *Flipped Classroom*. Alle
Online-Sitzungen per Zoom. Zugangsdaten siehe
[ILIAS](https://www.hsbi.de/elearning/goto.php/crs/1555856).

#### Fahrplan (HSBI)

Hier finden Sie einen abonnierbaren [Google
Kalender](https://calendar.google.com/calendar/ical/552fdc6c19e64eda7b36b2d16a88bf4b7e593af2c520afbe1aeeb0bb4f43107d%40group.calendar.google.com/public/basic.ics)
mit allen Terminen der Veranstaltung zum Einbinden in Ihre Kalender-App.

Abgabe der Übungsblätter jeweils **Montag bis 10:00 Uhr** im
[ILIAS](https://www.hsbi.de/elearning/goto.php/exc/1582797). Vorstellung
der Lösung im jeweiligen Praktikum in der Abgabewoche.

| Woche | Thema | Vorlesung: Selbststudium (Vorbereitung) | Vorlesung: Gemeinsame Sitzung | Praktikum | [AI Connect](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/discussions/16) |
|:---|:---|:---------------------|:-------------------|:-------|:---------------|
| 06.10. | Orga, Intro | [Einführung KI](#id-ca2e904964509a28710797d2f876c625f54f64ea) \| [Problemlösen](#id-7a896d9c036ef29a6574730757ae03cd7c0d3e26) | [Orga](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/blob/master/readme_hsbi.md) (*Zoom*) \|\| [Einführung Jupyter-Notebooks](#id-37999e3f5ed2a133fbaf6ee91fdb94138df2391d) |  |  |
| 13.10. | Search | [Tiefensuche](#id-3263461a899091090f8d87ea7f7f3f25bf8255eb) \| [Breitensuche](#id-d08f602e3cf0c02bc97cd5125053645dfe917271) \| [Branch-and-Bound](#id-0712fba7e7ca1e4684ed9b6de19345ba86fba471) \| [Best First](#id-0a43351a075c7504b755675510f9395b5dd8c092) | [A-Stern](#id-53af5b698d302efe7ce547dd76c249d8ebd26df5) |  |  |
| 20.10. | EA | [Gradientensuche](#id-3e0f73b743e74f106aacc68840406273348f8341) \| [Simulated Annealing](#id-bafda494229223827755dbbffb5862eeb7e31262) \|\| [Intro EA/GA](#id-aa3481a03ed2e17666ced54325637e0551022587) | [Genetische Algorithmen](#id-c99ae5cae334ccb182fc61d94707f8e7cdf363c9) | [Blatt: Search](#id-ab3ff3658bdafaf1ee5c17c11ffae098b587c048) |  |
| 27.10. | Games | [Optimale Spiele](#id-f669cc4761526fb137b102a84bf0b7a3c8e1b51a) \| [Games mit Minimax](#id-5438da7280b20127b14a6fc6336d798d64ef51d6) \| [Minimax und Heuristiken](#id-a9ac054922401b7eb9285dc81c4d01960ce147ec) | [Alpha-Beta-Pruning](#id-c8c274bfbd36e9fdbf8c47df5f99c064b06d9ff3) | [Blatt: EA/GA](#id-cb2cf09f6031a168fc7c9094c3ee2d9df377e9f0) |  |
| 03.11. | DTL | [Machine Learning 101](#id-82f362361464406c7ba09ef4a0893a4e32983b94) \| [CAL2](#id-4807e4a11529854b6d77f86cd3ca37caabc11cc9) \| [Pruning](#id-19ffac22140785b62f48ef3e44c1bde3a43d2054) \| [CAL3](#id-1867142959094a5c852b79c1c6f3caed8e931b63) | [Entropie](#id-f085a6c9977296f3811e103376badb06ee228d84) \| [ID3 und C4.5](#id-0d69ce52eac18a7d932147cc42b20bcd98d267f3) | [Blatt: Games](#id-999c549c4e5cc5a8e810d1e55e7b21a1e3c85906) |  |
| 10.11. | CSP | [Einführung Constraints](#id-84f051404cae6b3a63ddc230ad80cb495047845f) \| [Lösen von diskreten CSP](#id-3b6247c92b0af037c1f0c4837facaaa1b25420c3) \| [CSP und Heuristiken](#id-aef0213ac4bbd41501955f0ec950c44d1756a5cf) | [Kantenkonsistenz und AC-3](#id-a9b47eac39d203917d2689bbfad8003315b2990c) \| [Min-Conflicts Heuristik](#id-9d0480f68cb0e1adb81cdc4b9b357168511b77d5) | [Blatt: DTL](#id-4a134eae1417a20b6726b2fdc2b1dfd28a683e29) |  |
| 17.11. | Perzeptron | [Perzeptron](#id-e3a8542d0a1d7b0c7eb04d713c7976160d0eaf84) | Perzeptron Lernalgorithmus Beispiel | [Blatt: CSP](#id-97b1dd75d6bb5e4678ebee3df7fe5a521e52d6e2) |  |
| 24.11. | Lin. Regr. | [Lineare Regression und Gradientenabstieg](#id-52f9015d59d2dde3e4f18acb1be26aa3c10759ab) | Gradientenabstieg Beispiel | [Blatt: Perzeptron](#id-509c9bafc24171e16bb93dfcd473d2b9bae04d15) |  |
| 01.12. | Log. Regr. | [Logistische Regression](#id-c320456aa6e007de53f56d63d12b19d7351a2f77) | **ab 09:00**: Logistische Regression Beispiel |  | **Mo, 01.12., 08:00 Uhr: Kick-Off und Team-Building** [Warm-up Task](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/discussions/20) |
| 08.12. | MLP | [Overfitting und Regularisierung](#id-ff282a3dce4dd000d38f923a472a928c94b93436) \|\| [Multilayer Perceptron (MLP)](#id-94eb0e9e9c19bba8118b63b08886a14024a2acf3) | **ab 09:00**: MLP Beispiel |  | **Mo, 08.12., 08:00 Uhr: Project Launch** |
| 15.12. | Backprop | [Backpropagation](#id-f08c9adef34314d8e7af05e5874f87e61cfd93a9) | Backpropagation Beispiel |  | **Fr, 19.12., 10:30 Uhr: Team-Präsentationen** |
| *22.12.* |  |  | *Weihnachtspause* |  |  |
| *29.12.* |  |  | *Weihnachtspause* |  |  |
| 05.01. | Train&Test | [Training & Testing](#id-59d01c7aa50822d6f5b2f5f0413bf60ad710fcdf) | [Performanzanalyse](#id-754af026d5303aa4a872ce1693668530aefee309) | [Blatt: MLP](#id-cba17b43f628a8fbf19e217d186183ebcd63bad5) |  |
| 12.01. | NB | [Wahrscheinlichkeitstheorie](#id-cd12d8faa8a855e40fd112b32dc98078382d90aa) \| [Naive Bayes](#id-cd72f1bd942f6b05157da80ba479a7a493d898c1) | [Textklassifikation mit NB](#id-6e322bc628d8ff7a4faa38fa42a09770217ab4fb) | [Blatt: Backprop](#id-670c545ed4052dcfd1d123a2ba8b68b3154acccc) |  |
| 19.01. | PV | [Prüfungsvorbereitung HSBI](#id-b84558cce3a2e0f317eaa3c5c23c6f26a9cc2232) | Rückblick (*Zoom*) | [Blatt: Naive Bayes](#id-8b661cb2908035ca0da1b1837f2b800c4381ebad) |  |

#### Prüfungsform, Note und Credits (HSBI)

**(Digitale) Klausur plus Studienleistung (Portfolio)**, 5 ECTS

-   **Studienleistung**: "Portfolio" - Kriterien je Person:

    1.  Teilnahme an der Internationalen Projektwoche "AI Connect" mit
        aktiver Beteiligung (Meeting 1: Team-Building/Kick-Off, Meeting
        2: Project Launch, Teamarbeit, Meeting 3: Team-Präsentationen
        (Vortrag/Video))
    2.  Mind. fünf Übungsblätter erfolgreich bearbeitet
    3.  Video-Vortrag zum erfolgreich bearbeiteten Mini-Projekt ("AI
        Connect") am Fr, 19.12., ab 10:30 Uhr, a 2 Minuten (pro Team)

    Je Kriterium: Abgabe eines Post Mortem im ILIAS (**jede Person
    individuell**)

-   **Gesamtnote**: (Digitale) Klausur im B40 (90 Minuten)

<details>
<summary><strong>Hinweise</strong></summary>

-   Die Bearbeitung der Leistungen erfolgt individuell (außer "AI
    Connect" Projektwoche).
-   Für die "AI Connect" Projektwoche werden gemischte Teams aus den
    beteiligten Hochschulen gebildet.
-   Die Post Mortems sind individuell zu erstellen und abzugeben.
-   "Aktive Beteiligung" umfasst Anwesenheit und sachbezogene Beiträge;
    Anwesenheit/Beteiligung werden dokumentiert.
-   "Erfolgreiche Bearbeitung" eines Blattes umfasst Bearbeitung aller
    Aufgaben des Blattes und fristgerechte Abgabe des ausreichenden Post
    Mortems im ILIAS. Die intensive Beschäftigung mit den Aufgaben muss
    erkennbar sein.

<!-- -->

-   **Post Mortem**: Jede Person beschreibt individuell(!) die
    Bearbeitung des jeweiligen Kriteriums bzw. die Teilnahme an den drei
    Meetings des "AI Connect"-Mini-Projekts zurückblickend mit mind. 150
    bis max. 400 Wörtern (Nutzlast; Überschriften und Links zählen nicht
    mit). Gehen Sie dabei aussagekräftig und nachvollziehbar auf
    folgende Punkte ein:

    1.  Zusammenfassung: Was wurde gemacht bzw. was wurde auf dem
        Meeting besprochen?
    2.  Details: Kurze Beschreibung besonders interessanter Aspekte.
    3.  Reflexion: Was war der schwierigste Teil? Wie haben Sie dieses
        Problem gelöst?
    4.  Reflexion: Was haben Sie gelernt oder (besser) verstanden?
    5.  Link zu Ihrem Repo mit den relevanten Artefakten (Lösung, Slides
        für den Vortrag, ...).

    Für die "AI Connect"-Meetings passen Sie bitte die Punkte (1)
    bis (4) entsprechend inhaltlich an, (5) entfällt für die ersten
    beiden Meetings (für das dritte Meeting (Team-Präsentation) geben
    Sie bitte einen Link zu Ihrem Repo mit den Artefakten (Lösung,
    Vortrag, Video) an).

    Die Post Mortems geben Sie bitte pro Person bis spätestens zur
    jeweiligen Deadline im
    [ILIAS](https://www.hsbi.de/elearning/goto.php/exc/1582797) ab.

    Siehe auch
    https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung-W25/discussions/3.

</details>

#### Materialien

1.  ["**Artificial Intelligence: A Modern
    Approach**"](http://aima.cs.berkeley.edu/) (*AIMA*). Russell, S. und
    Norvig, P., Pearson, 2021. ISBN
    [978-0134610993](https://fhb-bielefeld.digibib.net/openurl?isbn=978-0134610993).
2.  "Grundkurs Künstliche Intelligenz". Ertel, W., Springer, 2025. ISBN
    [978-3-658-44955-1](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-658-44955-1).
    DOI
    [10.1007/978-3-658-44955-1](https://doi.org/10.1007/978-3-658-44955-1).
3.  "An Introduction to Machine Learning". Kubat, M., Springer, 2017.
    ISBN
    [978-3-319-63913-0](https://fhb-bielefeld.digibib.net/openurl?isbn=978-3-319-63913-0).
    DOI
    [10.1007/978-3-319-63913-0](https://doi.org/10.1007/978-3-319-63913-0).

<a id="id-af09e2fcaf4589921086150d991647b7b52abd03"></a>

## Vorlesungsunterlagen

<a id="id-4fdfb3eca407836764bfebacc39d6ee752c6bee5"></a>

### Einführung KI

Was ist Intelligenz? Was ist künstliche Intelligenz? Woran kann man das
erkennen? Wie kann man eine Welt (ein Problem) modellieren, um es dann
anschließend lösen zu können?

<a id="id-ca2e904964509a28710797d2f876c625f54f64ea"></a>

#### Intro: Was ist Künstliche Intelligenz?

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> KI ist ein altes und modernes Forschungsgebiet, welches periodisch
> Hype-Zeiten erlebt hat und sich aktuell wieder in einer Hoch-Phase
> befindet. Wer heute "KI" sagt, meint meist Maschinelles Lernen oder
> (noch genauer) eine Form von *Deep Learning*. Dabei gibt es in der KI
> viele weitere Gebiete: Suche (Problemlösen), Spiele,
> Constraintprobleme, Entscheidungsbäume, ..., um nur einige zu nennen.
>
> Der *Turing-Test* (Alan Turin, 1950) hat gewissermaßen die modernen
> Zweige der KI begründet, u.a. *Wissensrepräsentation*, *Logisches
> Schließen*, *Maschinelles Lernen*, *Verarbeitung natürlicher Sprache*,
> *Computer Vision* und *Robotik*. Dabei ist zwischen *starker KI* und
> *schwacher KI* zu unterscheiden.
>
> Häufig werden die Gebiete in einem Diagramm eingeordnet, wobei die
> x-Achse Verhalten vs. Denken und die y-Achse Rational vs. Menschlich
> aufspannen. So kann man beispielsweise Logik dem rationalen Denken
> zuordnen oder die Erforschung kognitiver Prozesse dem Quadranten
> menschliches Denken.
>
> Wenn man sich die Geschichte der KI anschaut, beobachtet man bei fast
> allen Themen, dass sie in der Vergangenheit eine Hype-Phase erlebt
> haben und dabei die oft stark überzogenen Erwartungen enttäuscht haben
> und danach meist nur wenig Beachtung erfuhren. Nach einer Weile kamen
> die Themen wieder "auf die Tagesordnung", diesmal mit vernünftigen
> Erwartungen.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Einführung](https://youtu.be/oETxokgYdDk)
>
> </details>

##### Was ist (künstliche) Intelligenz?

<p align="center"><img src="https://live.staticflickr.com/2889/10151827605_911e35be10_c_d.jpg" width="60%" /></p>

Quelle: [AvB - RoboCup 2013 -
Eindhoven](https://www.flickr.com/photos/80267257@N05/10151827605) by
[RoboCup2013](https://www.flickr.com/photos/80267257@N05) on Flickr.com
([CC BY
2.0](https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=rich))

-   Was ist (künstliche) Intelligenz?
-   Ist [Commander Data](https://en.wikipedia.org/wiki/Data_(Star_Trek))
    intelligent?
-   Woran erkennen Sie das?

##### Definition Intelligenz

> Intelligenz (von lat. *intellegere* "verstehen", wörtlich "wählen
> zwischen ..." von lat. *inter* "zwischen" und *legere* "lesen,
> wählen") ist in der Psychologie ein Sammelbegriff für die **kognitive
> Leistungsfähigkeit** des Menschen. Da einzelne kognitive Fähigkeiten
> unterschiedlich stark ausgeprägt sein können und keine Einigkeit
> besteht, wie diese zu bestimmen und zu unterscheiden sind, gibt es
> **keine allgemeingültige Definition der Intelligenz**.
>
> Quelle: ["Intelligenz"](https://de.wikipedia.org/wiki/Intelligenz) by
> [Cumtempore](https://de.wikipedia.org/wiki/Benutzer:Cumtempore) and
> [others](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Intelligenz?uselang=de)
> on Wikipedia ([CC BY-SA
> 3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode))

Das ist spannend: Es gibt keine allgemeingültige Definition für den
Begriff "Intelligenz". Damit wird es schwierig, auch "Künstliche
Intelligenz" zu definieren ...

Aber wir können aus dieser Definition auf Wikipedia mitnehmen, dass es
um kognitive Fähigkeiten geht. Verstehen und im weiteren Sinne Denken
sind bereits im Begriff enthalten und damit auch Teil der kognitiven
Fähigkeiten.

Schauen wir uns nun noch die Definition von "kognitiven Fähigkeiten"
genauer an.

> Zu den **kognitiven Fähigkeiten** eines Menschen zählen die
> **Wahrnehmung**, die Aufmerksamkeit, die Erinnerung, das **Lernen**,
> das **Problemlösen**, die Kreativität, das **Planen**, die
> Orientierung, die Imagination, die **Argumentation**, die
> Introspektion, der Wille, das Glauben und einige mehr. Auch Emotionen
> haben einen wesentlichen kognitiven Anteil.
>
> Quelle: ["Kognition"](https://de.wikipedia.org/wiki/Kognition) by
> [Arbraxan](https://de.wikipedia.org/wiki/User:Arbraxan) and
> [others](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Kognition?uselang=de)
> on Wikipedia ([CC BY-SA
> 3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode))

Zu den kognitiven Fähigkeiten und damit zur Intelligenz zählen also eine
Reihe von Fähigkeiten, die man Menschen im allgemeinen zuschreibt.
Lernen und Problemlösen und Planen sind Dinge, die vermutlich jeder
direkt mit dem Begriff Intelligenz verbindet. Interessanterweise gehören
auf auch Aufmerksamkeit und Wahrnehmung und Orientierung mit dazu --
Fähigkeiten, die beispielsweise in der Robotik sehr wichtig sind.
Kreativität und Vorstellung zählen aber auch mit in den Bereich der
kognitiven Fähigkeiten und damit zum Begriff Intelligenz. In der KI
werden diese Gebiete zunehmend interessant, etwa beim Komponieren von
Musik und beim Erzeugen von Bildern oder Texten. Mit Emotionen
beschäftigt sich die KI-Forschung aktuell nur am Rande, etwa bei der
Erkennung von Emotionen in Texten. Andere Gebiete der kognitiven
Fähigkeiten wie Glaube und Wille spielen derzeit keine Rolle in der KI.

##### Versuch einer Definition für "KI"

> Ziel der KI ist es, Maschinen zu entwickeln, die sich verhalten, als
> verfügten sie über Intelligenz.
>
> -- John McCarthy (1955)

Einwand:
[Braitenberg-Vehikel](https://en.wikipedia.org/wiki/Braitenberg_vehicle)
zeigen so etwas wie "intelligentes" Verhalten, sind aber noch lange
nicht intelligent! Bezieht sich nur auf *Verhalten*!

> KI ist die Fähigkeit digitaler Computer oder computergesteuerter
> Roboter, Aufgaben zu lösen, die normalerweise mit den höheren
> intellektuellen Verarbeitungsfähigkeiten von Menschen in Verbindung
> gebracht werden ...
>
> -- Encyclopedia Britannica

Einwand: Dann wäre aber auch Auswendig-Lernen oder das Multiplizieren
langer Zahlen als intelligent zu betrachten! Bezieht sich vor allem auf
"*Denken*"!

> Artificial Intelligence is the study of how to make computers do
> things at which, at the moment, people are better.
>
> -- Elaine Rich ("Artificial Intelligence", McGraw-Hill, 1983)

Quelle: nach ([Ertel 2025](#ref-Ertel2025), pp. 1-3)

Dazu gehört auch

-   Anpassung an sich verändernde Situationen
-   Erkennung von Bildern und Gesichtern und Emotionen
-   Erkennung von Sprache
-   Umgang mit kontextbehafteten, unvollständigen Informationen
-   Ausräumen von Geschirrspülern ;-)
-   Über Emotionen und Empathie verfügen

> [!TIP]
>
> **KI-Grundverordnung der EU**
>
> Die EU hat am 13. Juni 2024 die sog. "KI-Verordnung" verabschiedet
> ("VERORDNUNG (EU) 2024/1689 DES EUROPÄISCHEN PARLAMENTS UND DES
> RATES", [Document 32024R1689: Verordnung (EU) 2024/1689 des
> Europäischen Parlaments und des Rates vom 13. Juni 2024 zur Festlegung
> harmonisierter Vorschriften für künstliche Intelligenz und zur
> Änderung der Verordnungen (EG) Nr. 300/2008, (EU) Nr. 167/2013, (EU)
> Nr. 168/2013, (EU) 2018/858, (EU) 2018/1139 und (EU) 2019/2144 sowie
> der Richtlinien 2014/90/EU, (EU) 2016/797 und (EU) 2020/1828
> (Verordnung über künstliche Intelligenz) (Text von Bedeutung für den
> EWR)](https://eur-lex.europa.eu/legal-content/DE/TXT/?uri=CELEX:32024R1689)).
>
> Dort finden Sie unter Artikel 3 "Begriffsbestimmungen" unter Absatz 1
> eine Begriffsdefinition. Ein "KI-System" wird darin als ein
> maschinengestütztes System definiert, in irgendeiner Art für einen
> autonomen Betrieb ausgelegt ist und eine gewisse Anpassungsfähigkeit
> haben kann. Zusätzlich soll das "KI-System" aus den Eingaben
> Vorhersagen und Entscheidungen zu treffen oder auch Inhalte erzeugen
> und mit der physischen oder digitalen Umwelt interagieren können.
>
> Quelle: [VERORDNUNG (EU) 2024/1689 DES EUROPÄISCHEN PARLAMENTS UND DES
> RATES](https://eur-lex.europa.eu/legal-content/DE/TXT/?uri=CELEX:32024R1689),
> Art. 3 Abs. 1
>
> Interessant ist, dass dabei nicht explizit auf Softwaresysteme
> eingegangen wird. Später im Text finden sich Hinweise, dass sich ein
> KI-System vermutlich als Software repräsentiert, auch kommen Modelle
> und Daten vor. Bei den Modellen kommt der Begriff des Lernens vor, in
> allen derzeit üblichen Varianten (überwachtes Lernen, unüberwachtes
> Lernen, Reinforcement Learning). Große Teile des Dokuments
> beschäftigen sich mit weitreichenden Bestimmungen für Akteure, die ein
> KI-System zur Verfügung stellen wollen.
>
> Lesen Sie selbst: [VERORDNUNG (EU) 2024/1689 DES EUROPÄISCHEN
> PARLAMENTS UND DES
> RATES](https://eur-lex.europa.eu/legal-content/DE/TXT/?uri=CELEX:32024R1689).

##### Alan Turing 1950: Turing-Test (begründet Zweige der KI)

-   Wann verhält sich eine Maschine intelligent?

<p align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Turing_Test_version_3.png" width="20%" /></p>

Quelle: [Turing Test version
3.png](https://commons.wikimedia.org/wiki/File:Turing_Test_version_3.png)
by [Bilby](https://commons.wikimedia.org/wiki/User:Bilby) on Wikimedia
Commons ([Public
Domain](https://en.wikipedia.org/wiki/en:public_domain))

Zum Bestehen des Turing-Tests ist (u.a.) erforderlich:

-   *Wissensrepräsentation*: Speichern des gesammelten Wissens **=\>**
    **Wissensbasierte Systeme**
-   *Logisches Schließen*: Beantworten von Fragen mit Hilfe des
    vorhandenen Wissens **=\>** **Logik, Resolution**
-   *Maschinelles Lernen*: Anpassung an veränderliches Umfeld **=\>**
    **Musteranalyse und Mustererkennung und Mustervorhersage**
-   *Verarbeitung natürlicher Sprache*: Erfolgreiche Kommunikation,
    beispielsweise in Englisch **=\>** **NLP**

"Totaler Turing-Test": zusätzlich **Computer Vision** (Erkennen von
Objekten) und **Robotik** (Manipulation von Objekten)

Damit begründet der Turing-Test die Gebiete der KI.

**Problem**: Der Turing-Test ist nicht reproduzierbar, nicht konstruktiv
und nicht mathematisch analysierbar ... Außerdem wird durch den
Turing-Test im Wesentlichen nur Funktionalität geprüft, nicht ob
Intention oder Bewusstsein vorhanden ist.

##### Starke vs. schwache KI

###### "Schwache KI"

-   Simulation intelligenten Verhaltens
-   Lösung konkreter Probleme
-   Adaptives Verhalten ("Lernen")
-   Umgang mit Unsicherheit und unvollständigen Informationen

###### "Starke KI"

-   Eigenschaften der "schwachen KI"
-   Intelligenz nach menschlichen Maßstäben (auf "Augenhöhe")
-   Bewusstsein
-   Emotionen (?)
-   Empathie

> [!TIP]
>
> **Frage**
>
> Wie würden Sie Systeme wie ChatGPT einordnen? Woran machen Sie das
> fest?

##### Typische Ansätze in der KI

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/intro/images/dimensionen-ki.png" width="40%" /></p>

Untersuchung von

-   Verhalten vs. Denken
-   Rational vs. menschlich

Motivation dabei

-   Menschliche Intelligenz verstehen
-   Intelligente/intelligent wirkende Systeme bauen

Damit erhält man vier Kombinationen:

-   Menschliches Denken
-   Rationales Denken
-   Rationales Verhalten
-   Menschliches Verhalten

###### Menschliches Denken: Kognitive Modellierung

-   Welche kognitiven Fähigkeiten sind für intelligentes Verhalten
    nötig? Wie laufen Denkprozesse im Gehirn ab?
-   Erfordert Theorien über interne Aktivitäten des Gehirns
-   Ansätze:
    -   top-down: Vorhersage und Test von menschlichem Verhalten
    -   bottom-up: Auswertung neurobiologischer Daten
-   Wissenschaftszweige: Kognitionswissenschaft (Verbindung der
    Computermodelle der KI mit den Experimenten und Theorien der
    Psychologie), Neurobiologie/-informatik

> [!TIP]
>
> **Neuronale bzw. Konnektionistische KI**
>
> Die Schule der sogenannten "**Neuronalen bzw. Konnektionistischen
> KI**" verfolgt den Ansatz, die biologischen Prozesse im Gehirn zu
> verstehen und nachzubauen (bottom-up Ansatz) und auf reale Probleme
> anzuwenden.
>
> Dank massiver Rechenleistung, riesigen Datenmengen und geeigneten
> Modellen (Deep Learning) kann diese Tradition aktuell große Erfolge
> vorzeigen.

###### Rationales Denken: Aristoteles: Was sind korrekte Argumente und Denkprozesse? =\> Wie sollen wir denken?

Beispiel:

    Fakt: Sokrates ist ein Mensch.
    Fakt: Alle Menschen sind sterblich.
    Folgerung: Sokrates ist sterblich.

-   Formalisierte Problembeschreibung
-   Problemlösung durch *logische Prozesse*
-   Verbindung von moderner KI zur Mathematik und Philosophie

> [!TIP]
>
> **Symbolische KI**
>
> Die Schule der sogenannten "**Symbolische KI**" verfolgt den
> top-down-Ansatz, mit Hilfe formaler Beweise Schlüsse zu ziehen und
> damit Fragen zu beantworten bzw. Probleme zu lösen. Dabei wird die
> betrachtete "Welt", also Gedanken, Konzepte und Beziehungen zwischen
> Objekten durch Symbole und Formeln repräsentiert, ähnlich der Art und
> Weise, wie Menschen logisch denken und kommunizieren.
>
> Das Hauptproblem dieser Tradition liegt im Aufwand bei der geeigneten
> Formalisierung der realen Welt.

###### Rationales Verhalten: Das "Richtige" tun

-   Das "Richtige": Verhalten zum Erzielen des besten (erwarteten)
    Ergebnisses (unter Berücksichtigung der verfügbaren Informationen)

    Ein System ist rational, wenn es das seinen Kenntnissen nach
    "Richtige" macht.

-   Denken ist nicht unbedingt notwendig (zb. Reflexe können auch
    rationales Verhalten sein)

-   Interessant: "richtige" Handlung unter unvollständigen/unsicheren
    Informationen

> [!TIP]
>
> **Statistische KI**
>
> Die Schule der sogenannten "**Statistischen KI**" verfolgt einen
> Ansatz, der sich stark auf statistische Methoden und Modelle stützt,
> um Muster in Daten zu erkennen und Entscheidungen zu treffen, also um
> aus großen Datenmengen Erkenntnisse zu gewinnen und Vorhersagen zu
> treffen.
>
> Aus der Analyse von Datenpunkten und deren Merkmalen werden
> Wahrscheinlichkeiten für bestimmte Ereignisse berechnet,
> beispielsweise in Regressionsanalysen, Klassifizierungsverfahren oder
> Zeitreihenanalysen.
>
> Diese Tradition spielt eine zentrale Rolle in zahlreichen
> Anwendungsbereichen wie Gesundheitswesen, Finanzen, Marketing und
> vielen weiteren.

###### Menschliches Verhalten: Na ja, Sie wissen schon ;-)

##### Modelle, Lernen und Vorhersagen

In der Informatik allgemein und auch in der KI versuchen wir, Probleme
der realen Welt mit Hilfe von künstlichen Systemen (Algorithmen,
Software) zu lösen. Dafür brauchen wir zunächst ein abstraktes
mathematisches **Modell** der Welt, in der wir uns bewegen. Das Modell
sollte alle für das zu lösende Problem relevanten Aspekte der Welt
repräsentieren - und möglichst nicht mehr als diese, um unnötige
Komplexität zu vermeiden. Es kommt häufig vor, dass selbst die
relevanten Aspekte zu umfangreich oder teilweise sogar unbekannt sind
und nicht vollständig dargestellt werden können. Modelle stellen also
eine Abstraktion der echten Welt dar und sind *verlustbehaftet*. Es gibt
viele verschiedene Modelle.

*Beispiel*: Wir möchten von Bielefeld nach Minden fahren. Neben den
offensichtlichen Parametern (Womit wollen wir fahren? Wo genau ist der
Startpunkt, wo genau der Zielpunkt? Wann wollen wir fahren?) spielen in
der realen Welt unendlich viele Aspekte eine Rolle: Farben, Gerüche,
Licht, Beschaffenheit der einzelnen Straßen, exakte Positionen auf der
Straße/im Ort ... Sind diese wirklich relevant für dieses Problem? Am
Ende wird es wichtig sein, eine abstrakte Darstellung zu finden, die
irgendwie die Städte und Dörfer repräsentiert und die Verbindungen
dazwischen. Und vermutlich muss ich wissen, wie lang die Strecken
jeweils sind (oder wie lange ich brauche oder wieviel Geld mich das
Abfahren kostet). Es scheint also so zu sein, dass eine Abstraktion des
Problems als *Graph* sinnvoll ist: Die Knoten entsprechen den Orten, die
Kanten den Straßen (oder Bahnlinien o.ä.). An den Kanten sind Kosten
annotiert (Kilometer, Zeit, ...). Damit ignorieren wir die Komplexität
der realen Welt und fokussieren uns auf die Aspekte, die zur Lösung des
Problems wichtig sind. Behalten Sie im Gedächtnis, dass unser Modell
verlustbehaftet ist und wir damit tatsächlich nur das Wegeproblem lösen
können! Wenn wir Wege vergessen haben oder falsch bewertet haben, wird
unser Algorithmus später möglicherweise nicht die gewünschte Lösung
finden! Wir schauen uns das Thema Modellierung am Beispiel des
Problemlösens und insbesondere für Suchprobleme in der Lektion
[Problemlösen](#id-7a896d9c036ef29a6574730757ae03cd7c0d3e26) noch
genauer an.

Ein Modell kann Parameter haben. Im obigen Beispiel wären dies die Werte
an den Kanten. Es kann sein, dass diese Werte nicht im Vorfeld bekannt
sind, sondern aus einem Datensatz extrahiert werden müssen. Dies nennt
man **Lernen**: Das Modell wird (besser gesagt: die Parameter des
Modells werden) an das Problem angepasst. Dafür gibt es unterschiedliche
Algorithmen. In der Regel benötigt man ein Ziel für den
Adaptionsprozess: eine sogenannte Ziel- oder Kostenfunktion. Anpassen
der Modellparameter mit Hilfe von Daten und einer Zielfunktion bedeutet
auch, dass man das Ziel möglicherweise nie zu 100% erreicht, sondern nur
in die Nähe kommt. Je nach Problem kann man auch nur eine Modellfamilie
vorgeben und den konkreten Aufbau des Modells im Trainingsprozess
erarbeiten lassen.

*Wichtig*: Lernen bietet sich immer dann an, wenn eine analytische
Lösung nicht möglich ist (fehlende Informationen, Komplexität des
Problems). Das bedeutet im Umkehrschluss aber auch: Wenn eine
analytische Lösung bekannt ist (oder zu finden ist), dann gibt es keinen
Grund für den Einsatz von adaptiven Systemen!

Mit dem Modell der Welt kann nun das Problem gelöst werden. Dazu wird
das Modell mit Daten versorgt (im obigen Beispiel: Start und Ziel) und
ein passender Algorithmus kann auf dem Modell die Lösung berechnen. Dies
kann eine **Vorhersage** sein, welchen Weg ich nehmen soll, wie lange es
dauern wird, welchen Spielzug ich als nächstes machen sollte, ob in
einem Bild eine Katze zu sehen ist, ... Es könnte aber auch im Fall von
sogenannten *generativen Modellen* ein erzeugter Text oder ein erzeugtes
Bild sein.

*Hinweis*: In manchen Quellen wird dieser Vorgang auch "Inferenz"
genannt. Da dieser Begriff aus der Logik stammt und mit bestimmten
Prozessen zur Schlussfolgerung verbunden ist, möchte ich in diesem
Skript diesen Begriff nicht für das Generieren einer Vorhersage nutzen.

##### Modellkomplexität

In der KI werden sehr unterschiedliche Modelle betrachtet, die auch eine
sehr unterschiedliche Komplexität aufweisen.

Besonders einfache Modelle sind Modelle, die für einen Input direkt
einen Output berechnen. Für jeden Input wird eine feste Berechnung
durchgeführt, es erfolgt kein Backtracking und es gibt keine (inneren)
Zustände. Dies ähnelt dem reflexartigen Verhalten in biologischen
Vorbildern, weshalb diese Modell oft auch "*reflex-based models*"
genannt werden. In diese Kategorie fallen beispielsweise [lineare
Regression](#id-52f9015d59d2dde3e4f18acb1be26aa3c10759ab) und das
[Perzeptron](#id-e3a8542d0a1d7b0c7eb04d713c7976160d0eaf84), aber auch
Modelle mit vielen Parametern wie ein [Multilagen-Perzeptron
(MLP)](#id-94eb0e9e9c19bba8118b63b08886a14024a2acf3) oder die daraus
abgeleiteten Deep Neural Networks.

In der nächst komplexeren Stufe haben die Modelle einen internen Zustand
("*state-based models*"). Darüber wird ein Zustand der betrachteten Welt
modelliert. Zwischen den Zuständen gibt es Übergänge (sogenannte
Aktionen), so dass sich hier ein Graph aufspannt (der sogenannte
Problemgraph, vgl.
[Problemlösen](#id-7a896d9c036ef29a6574730757ae03cd7c0d3e26)). In diese
Klasse fallen die typischen Suchprobleme (wie
[Breitensuche](#id-d08f602e3cf0c02bc97cd5125053645dfe917271),
[Tiefensuche](#id-3263461a899091090f8d87ea7f7f3f25bf8255eb),
[A\*](#id-53af5b698d302efe7ce547dd76c249d8ebd26df5)), aber auch
[Spiele](#id-8f8b06dd42bba87fdbb232132c43d31fe1f102e7) mit
Zufallskomponente oder mit gegnerischen Mitspielern.

Noch eine Stufe komplexer sind Modelle mit Variablen ("*variable-based
models*"). Während es bei den zustandsbasierten Modellen immer (auch) um
den Weg zwischen den Zuständen geht und damit um eine prozedurale
Beschreibung, wie von einem Startzustand zu einem Zielzustand zu
gelangen ist, steht bei Modellen mit Variablen nur die Lösung im
Vordergrund: Das Modell enthält verschiedene Variablen, denen ein
passender Wert aus einem Wertebereich zugeordnet werden muss. Wie diese
Belegung entsteht, ist am Ende nicht mehr so interessant. Denken Sie
beispielsweise an ein Sudoku oder die Erstellung eines Stundenplans. Die
Variablen sind entsprechend die einzelnen Felder, gesucht ist eine
insgesamt korrekte Belegung aller Felder. In diese Klasse fallen
[Constraint Satisfaction Probleme
(CSP)](#id-febf03ee88f1ee559549a97eb9973ff5644d0a0a), aber auch
Bayes'sche Netze und die sogenannte ["lokale
Suche"](#id-3e0f73b743e74f106aacc68840406273348f8341).

Auf der höchsten Komplexitätsstufe stehen logische Modelle. Hier wird
Wissen über die Welt in Form von Fakten und Regeln modelliert, und über
eine entsprechende Anfrage wird daraus mit Hilfe von formal definierten
Beweisen eine korrekte Antwort generiert. Dies nennt man auch
"*Inferenz*". Hier kommt beispielsweise das Prädikatenkalkül zum Einsatz
oder die Programmiersprache Prolog.

##### Kurzer Geschichtsüberblick -- Wichtigste Meilensteine

-   1943: McCulloch/Pitts: binäres Modell eines Neurons
-   1950: Turing-Test
-   1956: Dartmouth Workshop (Minsky, McCarthy, ...) -- McCarthy schlägt
    den Begriff "Artificial Intelligence" vor
-   1960er: Symbolische KI (Theorembeweiser), Blockwelt, LISP
-   1970er: Wissensbasierte System (Expertensysteme)
-   1980er: zunächst kommerzieller Erfolg der Expertensysteme, später
    Niedergang ("KI-Eiszeit"); Zuwendung zu Neuronalen Netzen
-   1990er: Formalisierung der KI-Methoden, Einführung probabilistischer
    Methoden (Bayes'sches Schließen), verstärkte mathematische
    Fundierung
-   heute: friedliche Koexistenz verschiedener Paradigmen und Methoden;
    Rückkehr zu "Human-Level AI" (McCarthy, Minsky, Nilsson, Winston);
    Rückkehr zu Neuronalen Netzen (CNN/RNN)

Siehe auch Abbildung 1.3 in ([Ertel 2025, 8](#ref-Ertel2025)) ...

##### Wrap-Up

-   Definition von "Intelligenz" nicht ganz einfach
-   Dimensionen: Denken vs. Verhalten, menschlich vs. rational
-   Ziele der KI: Verständnis menschlicher Fähigkeiten, Übertragen auf
    künstliche Systeme

Schauen Sie sich zur Einführung auch gern das YouTube-Video [Overview
Artificial Intelligence Course \| Stanford
CS221](https://youtu.be/J8Eh7RqggsU) an. (Vorsicht: Das ist recht lang.)

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Kapitel 1:
>     Introduction
> -   Ertel ([2025](#ref-Ertel2025)): Kapitel 1: Introduction
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k1: Ich kenne verschiedene Aspekte, die zur Intelligenz gerechnet
>     werden
> -   k1: Ich kenne den Turing-Test und kann Aufbau, Gebiete, Kritik
>     wiedergeben
> -   k1: Ich kenne verschiedene Gebiete der KI sowie deren Zielsetzung
> -   k1: Ich kann starke vs. schwache KI unterscheiden
> -   k1: Ich kenne wichtige Strömungen in der KI und ihre zeitliche
>     Einordnung
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest KI Einführung
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106585&client_id=FH-Bielefeld)
>
> </details>

<a id="id-7a896d9c036ef29a6574730757ae03cd7c0d3e26"></a>

#### Intro: Problemlösen

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Um ein Problem lösen zu können, muss es zunächst geeignet dargestellt
> werden. In der KI betrachten wir Zustände einer Welt, auf die Aktionen
> angewendet werden können und die die betrachtete Welt in den/einen
> Folgezustand bringen. Hier muss unterschieden werden zwischen
> deterministischen und stochastischen Welten, ebenso spielt die
> Beobachtbarkeit durch den Agenten (die die Welt betrachtende und durch
> die Aktionen auf die Welt einwirkende Instanz) eine Rolle: Kann der
> Agent die Welt komplett beobachten, nur einen Teil davon oder gar
> nichts? Es spielt auch eine Rolle, ob es diskrete Zustände gibt, oder
> ob man mit kontinuierlichen Variablen zu tun hat. Gibt es nur einen
> Agenten oder können mehrere Agenten beteiligt sein ... (In dieser
> Veranstaltung werden wir uns auf deterministische und voll
> beobachtbare Welten mit diskreten Zuständen konzentrieren.)
>
> Dies alles muss bei der Modellierung betrachtet werden. Es empfiehlt
> sich, die Zustände und die Aktionen so abstrakt wie möglich zu
> beschreiben. Anderenfalls kann später die Lösung des Problems
> zumindest stark erschwert werden.
>
> Durch das wiederholte Anwenden der Aktionen auf den Startzustand bzw.
> auf die sich daraus ergebenden Folgezustände wird der Zustandsraum
> aufgebaut. Dabei ist zu beachten, dass Aktionen Vorbedingungen haben
> können, d.h. unter Umständen nicht auf alle Zustände angewendet werden
> können. Die entstehende Struktur (Zustandsraum) kann man formal als
> Graph repräsentieren: Die Zustände werden durch die Knoten und die
> Aktionen als (gerichtete) Kanten im Graph dargestellt (=\>
> Problemgraph).
>
> Das Problemlösen entspricht nun einer Suche im Problemgraphen: Man
> sucht einen Weg von einem Startknoten zu einem Zielknoten, d.h. eine
> Folge von Aktionen, die den Start- in den Zielzustand überführen. Der
> Weg entspricht dann der Lösung des Problems. Normalerweise will man
> eine bestimmte Qualität der Lösungen haben: Es sollen die kürzesten
> Wege (also die mit den wenigsten Zwischenstationen/Knoten) oder die
> billigsten Wege (die Summe der an den Kanten annotierten Gewichte soll
> minimal sein) gefunden werden.
>
> Zur Suche kann man bei den in dieser Veranstaltung betrachteten
> deterministischen Problemen mit diskreten Zuständen den einfachen
> "Tree-Search"-Algorithmus (Benennung in Anlehnung an ([Russell und
> Norvig 2021](#ref-Russell2021))) einsetzen, der allerdings
> Wiederholungen und Schleifen zulässt. Mit zwei Erweiterungen wird
> daraus der "Graph-Search"-Algorithmus (Benennung in Anlehnung an
> ([Russell und Norvig 2021](#ref-Russell2021))), der die wiederholte
> Untersuchung von bereits besuchten Knoten vermeidet. In beiden
> Algorithmen wird eine zentrale Datenstruktur eingesetzt (im ([Russell
> und Norvig 2021](#ref-Russell2021)) auch "Frontier" genannt), die die
> als Nächstes zu untersuchenden Knoten hält und die damit die Grenze
> zwischen dem bereits untersuchten Teil des Graphen und dem unbekannten
> Teil des Graphen bildet. Je nach Art der Datenstruktur und je nach den
> betrachteten Kosten ergeben sich eine Reihe unterschiedlicher
> Suchalgorithmen, die wir in einer späteren Sitzung betrachten.
>
> Die Suchverfahren können im Hinblick auf Optimalität, Vollständigkeit
> und Komplexität beurteilt werden.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Problemlösen](https://youtu.be/IhUmUUzR9lQ)
>
> </details>

##### Motivation: Roboter in einer Bibliothek

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/intro/images/problem.png" width="40%" /></p>

**Aktionen:**

-   Right (R)
-   Left (L)
-   Take (T)
-   Drop (D)

**Wahrnehmungen:**

-   In welchem Raum bin ich?
-   Habe ich das Buch?

**Aufgabe:** Das Buch aus der Bibliothek holen und in den Kopiererraum
bringen.

Bemerkungen zur Umwelt:

-   Beobachtbarkeit der Umwelt kann variieren: "voll beobachtbar" bis zu
    "unbeobachtbar"
-   Umwelt kann "deterministisch" oder "stochastisch" sein: Führt eine
    Aktion in einem Zustand immer zum selben Folgezustand?
-   Wann erfolgt die Rückmeldung an den Agenten über die Auswirkung der
    Aktionen? Sofort ("sequentiell") oder erst am Ende einer
    Aktionsfolge ("episodisch")?
-   Wird die Umwelt nur durch die Aktionen des Agenten verändert
    ("statisch")? Oder verändert sich die Umwelt zwischen den Aktionen
    eines Agenten, beispielsweise durch andere Agenten ("dynamisch")?
-   Gibt es diskrete Zustände (wie im Beispiel)?

##### Zustände der Bibliotheks-Welt

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/intro/images/states.png" width="55%" /></p>

**Problem:** Gegeben einen Startzustand, wie komme ich zum Ziel?

-   Welche Aktionen können in einem Zustand (zb. Nr. 4) angewendet
    werden?
-   Welche Aktionen können in den Folgezuständen angewendet werden?

Ergebnis:

-   Zustandsraum: Menge aller von den Startzuständen aus erreichbaren
    Zustände
-   Problemgraph: Repräsentation der Zustände und Aktionen als Knoten
    und (gerichtete) Kanten

##### Suche im Problemgraphen

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/intro/images/state-space.png" width="60%" /></p>

-   Durch die Suche im Problemgraphen wird ein Suchbaum aufgespannt
-   Varianten: Zustände können in einem Pfad wiederholt vorkommen
    vs. Wiederholungen werden ausgeschlossen

##### Definition Zustand und Aktion

**Zustand:**
:   (Formale) Beschreibung eines Zustandes der Welt

**Aktion:**

:   (Formale) Beschreibung einer durch Agenten ausführbaren Aktion

    -   Anwendbar auf bestimmte Zustände
    -   Überführt Welt in neuen Zustand ("Nachfolge-Zustand")

**Geeignete Abstraktionen wählen für Zustände und Aktionen!**

**Anmerkung:** ([Russell und Norvig 2021](#ref-Russell2021))
unterscheidet zw. Aktionen und Transitionsmodell; hier nur Aktionen!
D.h. die Aktionen und das Übergangsmodell aus dem ([Russell und Norvig
2021](#ref-Russell2021)) werden direkt zusammen betrachtet. Bei den hier
diskutierten Problemen ist das ohne Nachteile möglich, es wird lediglich
etwas Flexibilität genommen bzw. Komplexität vermieden (je nach
Sichtweise :-) ...

##### Definition Problem

Ein Problem besteht aus:

**Startzustände**
:   Menge $S_A \subset S$

**Aktionen**
:   Menge von Funktionen $\mathop{\text{op}}: S \to S$

**Zustandsraum**
:   Menge aller Zustände $S$, die durch (wiederholte) Anwendung von
    Aktionen von den Startzuständen aus erreichbar sind

<!-- -->

**Zieltest**
:   Funktion $\mathop{\text{goal}}: S \to \{0,1\}$

**Zielzustände**
:   Menge $S_E \subseteq S$ mit
    $\forall x \in S_E : \mathop{\text{goal}}(x)=1$

<!-- -->

**Kosten**

:   **Gesamtkosten**: $f(n) = g(n) + h(n)$

    -   $n \in S$ auf dem aktuellen Weg erreichter Knoten
    -   $g(n)$ tatsächliche Kosten für den Weg vom Start bis zu Knoten
        $n$
    -   $h(n)$ geschätzte Restkosten für den Weg von Knoten $n$ zum Ziel

##### Hinweis: Unterschied Zustand und Knoten bzw. Zustandsraum und Problemgraph

-   Zustände und Aktionen kann man als einen Graph darstellen:
    **Problemgraph**
    -   Zustände werden als Knoten im Graphen abgebildet
    -   Aktionen werden als (gerichtete) Kanten im Graphen abgebildet
-   Unterscheidung "Zustand" und "Knoten":
    -   Zustand: Beschreibung/Modellierung eines Zustandes der Welt
    -   Knoten: Datenstruktur, Bestandteil des Graphen, *symbolisiert*
        einen Zustand

Das bedeutet, dass der Problemgraph eine Repräsentation des
Zustandsraumes ist.

Die beiden Begriffe werden normalerweise synonym verwendet, sofern
eindeutig ist, was gemeint ist.

##### Definition Problemlösen

Problemlösen

:   Wegesuche im Graph vom Startknoten zu einem Zielknoten

    -   Spannt den **Suchbaum** auf

<!-- -->

**Lösung**

:   Folge von Aktionen, die Start- in Zielzustand überführen

    Ergebnis des Problemlösens

##### Suche: Einfache Basisvariante

1.  Füge Startknoten in leere Datenstruktur (Stack, Queue, ...) ein
2.  Entnehme Knoten aus der Datenstruktur:
    -   Knoten ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Expandiere alle Nachfolger des Knotens und füge diese in die
        Datenstruktur ein
3.  Falls die Datenstruktur leer ist: Abbruch, melde "*nicht gefunden*"
4.  Gehe zu Schritt 2

Für die in dieser Veranstaltung betrachteten deterministischen Probleme
mit diskreten Zuständen ist diese Basisvariante der Suche eine Art
generischer Suchalgorithmus: Durch die Variation der eingesetzten
Datenstruktur und durch die Betrachtung unterschiedlicher Kosten erhält
man die in den nächsten Sitzungen betrachteten verschiedenen klassischen
Suchalgorithmen.

**Anmerkung**: Für Handsimulation besserer Überblick, wenn statt der
Knoten immer **partielle Wege** in Datenstruktur gespeichert werden!

**Anmerkung**: Im ([Russell und Norvig 2021, Abschn. 3.3.3,
S.92](#ref-Russell2021)) wird ein Algorithmus mit den vorgestellten
Eigenschaften als "**tree-like search**" bezeichnet. In Anlehnung an
([Russell und Norvig 2021](#ref-Russell2021)) wird diese Basisvariante
der Suche in dieser Lehrveranstaltung kurz als "Tree-Search"-Algorithmus
bezeichnet.

**Anmerkung**: Im ([Russell und Norvig 2021](#ref-Russell2021)) wird für
die Datenstruktur, mit der die Suche arbeitet, auch "*Frontier*"
genannt. Hier werden alle Knoten gehalten, die in einem der nächsten
Schritte betrachtet werden sollen, d.h. diese Knoten bilden die Grenze
zwischen dem bereits untersuchten Teil des Graphen und dem noch
unbekannten Teil des Graphen (deshalb auch "Frontier").

##### Erweiterung der Suche: Vermeiden von Wiederholungen

1.  Füge Startknoten in leere Datenstruktur (Stack, Queue, ...) ein
2.  Entnehme Knoten aus der Datenstruktur:
    -   Knoten ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Markiere aktuellen Knoten, und
    -   Expandiere alle Nachfolger des Knotens und füge alle
        unmarkierten Nachfolger, die noch nicht in der Datenstruktur
        sind, in die Datenstruktur ein
3.  Falls die Datenstruktur leer ist: Abbruch, melde "*nicht gefunden*"
4.  Gehe zu Schritt 2

Dieser Algorithmus ist eine Erweiterung der einfachen Basisvariante der
Suche:

1.  Man markiert bereits besuchte (expandierte) Knoten und besucht diese
    nie wieder (man würde diese bei einer Expansion nicht wieder in die
    Datenstruktur aufnehmen).
2.  Außerdem vermeidet man, dass ein Knoten mehrfach in der
    Datenstruktur vorkommt: Dies würde bedeuten, dass man hier
    verschiedene Wege vom Start zu diesem Knoten in der Datenstruktur
    hat, die dann auch alle weiter untersucht werden müssten. In der
    Regel reicht aber ein Weg vom Start zu einem Zwischenknoten (meist
    wird der kürzeste genommen, dazu in einer späteren Sitzung mehr).

**Anmerkung**: Für Handsimulation besserer Überblick, wenn statt der
Knoten immer **partielle Wege** in Datenstruktur gespeichert werden!

**Anmerkung**: Im ([Russell und Norvig 2021, Abschn. 3.3.3,
S.92](#ref-Russell2021)) wird ein Algorithmus mit den vorgestellten
Eigenschaften als "**graph search**" bezeichnet. In Anlehnung an
([Russell und Norvig 2021](#ref-Russell2021)) wird diese erweiterter
Variante der Suche in dieser Lehrveranstaltung kurz als
"Graph-Search"-Algorithmus bezeichnet.

##### Bewertung von Suchalgorithmen

**Vollständigkeit**
:   Findet der Algorithmus eine Lösung, wenn es eine gibt?

**Optimalität**
:   Findet der Algorithmus die beste Lösung?

**Zeitkomplexität**
:   Wie lange dauert es eine Lösung zu finden?

**Speicherkomplexität**
:   Wieviel Speicher benötigt die Suche?

**Größen zur Bewertung:**

-   **b**: Verzweigungsfaktor
-   **d**: Ebene (Tiefe) des höchsten Lösungsknotens
-   **m**: Länge des längsten Pfades

##### Wrap-Up

-   Begriffe "Problem", "Zustand", "Aktion", "Zustandsraum",
    "Problemgraph", "Suchbaum"

<!-- -->

-   Problemlösen: Suche in Graphen nach Weg vom Start zum Ziel
    -   Suche spannt einen Suchbaum auf
    -   Unterschiedliche Kostenfunktionen möglich
    -   Suchalgorithmen: Einfache Basisvariante, Erweiterung mit
        Vermeidung von Redundanzen
    -   Beurteilung der Suchverfahren: Optimalität, Vollständigkeit,
        Komplexität

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Problemlösen:
>     Kapitel 3.1 - 3.3
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Definition "Problem" erklären und dabei die
>     Begriffe Zustand, Aktion, Zustandsraum, Problemgraph und Suchbaum
>     erläutern
> -   k2: Ich kann Problemlösen als Suche nach Wegen im Problemgraph
>     erklären
> -   k2: Ich kann den Unterschied zw. Tree-Search und Graph-Search an
>     einem Beispiel erklären
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Problemlösen
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106586&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> Drei Elben und drei Orks befinden sich an einem Ufer eines Flusses und
> wollen diesen überqueren. Es steht dazu ein Pferd zur Verfügung,
> welches maximal zwei Wesen tragen kann. Das Pferd kann den Fluss nicht
> allein überqueren.
>
> Gesucht ist eine Möglichkeit, alle Elben und Orks über den Fluss zu
> bringen. Dabei darf zu keiner Zeit an keinem Ufer die Anzahl der sich
> dort befindlichen Orks größer sein als die der dort wartenden Elben,
> da es sonst zu Konflikten zwischen beiden Gruppen kommt.
>
> 1.  Formalisieren Sie das Problem (Zustände, Aktionen, Start- und
>     Endzustand).
> 2.  Skizzieren Sie den Problemgraph.
>
> </details>

<a id="id-37999e3f5ed2a133fbaf6ee91fdb94138df2391d"></a>

#### Intro: Einführung in Jupyter-Notebooks

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
> [Video-Mitschnitt "Einführung in
> Jupyter-Notebooks](https://youtu.be/m9y9m-HQTys)
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
> [starter.ipynb](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/intro/files/jupyter_starter.ipynb)
> </details>

<a id="id-7e0889f2e946cbc33338bb7a15cb59307023a51c"></a>

### Constraintsolving

Was haben [Typ-Inferenz](https://en.wikipedia.org/wiki/Type_inference),
[Sudoku](https://en.wikipedia.org/wiki/Sudoku), das
[8-Queens-Problem](https://en.wikipedia.org/wiki/Eight_queens_puzzle),
das [Einfärben von
Landkarten](https://en.wikipedia.org/wiki/Graph_coloring) und das
[Erstellen von
Stundenplänen](https://en.wikipedia.org/wiki/Resource_allocation)
gemeinsam?

Es handelt sich um eine bestimmte Art von Suchproblemen, wobei den
Parametern (Variablen) Werte so zugewiesen werden müssen, dass
Einschränkungen bzw. Relationen zwischen den Variablen gelten.

<a id="id-84f051404cae6b3a63ddc230ad80cb495047845f"></a>

#### CSP: Einführung Constraints

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Ein Constraintproblem (CSP) besteht aus Variablen, die über
> Einschränkungen ("Constraints") verbunden sind. Jeder Variable wird
> eine Domäne (Wertebereich) zugeordnet.
>
> Die Constraints können sich auf eine einzelne Variable beziehen
> ("unäre Constraints"), auf zwei Variablen ("binäre Constraints") oder
> auf mehr Variablen. Ein CSP kann als Graph dargestellt werden.
>
> Eine "Belegung" ist eine Zuweisung von Werten an Variablen aus deren
> Domäne. Eine "konsistente" Belegung erfüllt die Constraints, eine
> "vollständige" Belegung belegt alle Variablen.
>
> Eine Lösung für ein CSP ist eine vollständige und konsistente
> Belegung.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Intro CSP](https://youtu.be/eFyo4Xh59ns)
>
> </details>

##### Motivation: Einfärben von Landkarten

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/map.png" width="50%" /></p>

Die Skizze soll eine Landkarte mit verschiedenen Ländern darstellen. Die
Aufgabe lautet: Färbe jedes Land mit einer Farbe ein, um die
Übersichtlichkeit zu erhöhen. Verwende dabei so wenig wie möglich
unterschiedliche Farben. Aneinander grenzende Länder müssen
unterschiedliche Farben bekommen (=\> *Constraint*).

##### Einfärben von Landkarten: Formalisierung

-   **Variablen**: A, B, C, D, E, F
-   **Werte**: $\lbrace red, green, blue \rbrace$
-   **Constraints**: Benachbarte Regionen müssen unterschiedliche Farben
    haben

<!-- -->

-   **Mögliche Lösung**: Zuweisung an Variablen ("Belegung")
    $\lbrace \mathop{\text{A}} = red, \mathop{\text{B}} = blue, \mathop{\text{C}} = green,
    \mathop{\text{D}} = red, \mathop{\text{E}} = blue, \mathop{\text{F}} = blue \rbrace$

##### Definition: Constraint Satisfaction Problem (CSP)

-   Ein CSP $\langle V, D, C \rangle$ besteht aus:
    -   Menge von **Variablen**
        $V = \lbrace V_1, V_2, \ldots, V_n \rbrace$
    -   Je $V_i$ nicht leere **Domäne**
        $D_i = \lbrace d_{i,1}, d_{i,2}, \ldots, d_{i,m_i} \rbrace$
    -   Menge von **Constraints**
        $C = \lbrace C_1, C_2, \ldots, C_p \rbrace$ (Randbedingungen,
        Abhängigkeiten zwischen Variablen)

<!-- -->

-   Zuweisung/Belegung (*Assignment*) $\alpha$:
    -   Zuweisung von Werten an (einige/alle) Variablen:
        $\alpha = \lbrace X=a, Y=b, \ldots \rbrace$ (aus den jeweiligen
        Wertebereichen)
    -   **Konsistente Belegung**: Randbedingungen sind nicht verletzt
    -   **Vollständige Belegung**: Alle Variablen sind belegt

<!-- -->

-   **Lösung** eines CSP: Vollständige und konsistente Belegung

##### Constraint-Graph

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/map_graph.png" width="80%" /></p>

Ein CSP kann man auch als Constraint-Graph darstellen. Die Variablen
werden zu Knoten im Graph, die Constraints zu Kanten zwischen den
Knoten. Dadurch kann man die aus dem Problemlösen bekannten Algorithmen
anwenden ...

##### Constraints -- Arität

Die *Arität* betrifft hier die "Stelligkeit": Wie viele Variablen stehen
in einem Constraint miteinander in Beziehung? (Also wie viele Parameter
hat ein Constraint?)

-   **unär**: betrifft einzelne Variablen Beispiel:
    $\mathop{\text{A}} \neq red$

<!-- -->

-   **binär**: betrifft Paare von Variablen Beispiel:
    $\mathop{\text{A}} \neq \mathop{\text{B}}$

<!-- -->

-   **höhere Ordnung**: betrifft 3 oder mehr Variablen

<!-- -->

-   **Präferenzen**: "soft constraints" Beispiel: "rot ist besser als
    grün"

    Abbildung über Gewichtung =\> Constraint-Optimierungsproblem (COP)

##### Constraints -- Wertebereiche

-   **Endliche Domänen**: $d$ Werte =\> $O(d^n)$ mögliche Zuweisungen
    (exponentiell in der Zahl der Variablen)

<!-- -->

-   **Unendliche Domänen**: reelle Zahlen, natürliche Zahlen =\> Keine
    Auflistung der erlaubten Wertekombinationen mehr möglich =\>
    Übergang zu Gleichungen/Ungleichungen: $job_1+5<job_2$
    -   lineare Constraints
    -   nichtlineare Constraints

**Historische Unterscheidung**:

-   **Constraint Satisfaction**: endliche Domänen, kombinatorische
    Methoden
-   **Constraint Solving**: unendliche Domänen

##### CSP sind überall ...

-   Stundenpläne (Klassen, Räume, Zeiten)
-   Konfiguration (Computer, Autos, ...)
-   Fahrpläne (Zug, Flug, ...)
-   Planung von komplexen Projekten
-   Sudoku :-)
-   ...

##### Wrap-Up

-   Definitionen und Begriffe:
    -   Variable, (un-) endliche Domänen, Wertemenge
    -   Constraint, Arität, CSP
    -   Zuweisung, Lösung, ...

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
> Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte den
> Abschnitt 5.1 "Defining Constraint Satisfaction Problems".
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Definitionen im Zusammenhang mit Constraints und
>     CSP erklären: Variable, Domäne, Constraint, Arität, CSP, Zuweisung
> -   k3: Ich kann Probleme als CSP formulieren
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Intro CSP
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106572&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Problem 1**
>
> Drei Personen - Paul, George und John - sind zu einem Abendessen
> eingeladen und sollen an einer Seite des Tisches auf drei
> nebeneinander liegenden Plätzen platziert werden. George und John
> können sich nicht besonders gut leiden, weshalb sie nicht direkt
> nebeneinander gesetzt werden dürfen.
>
> Formulieren Sie das Platzierungsproblem als Constraint-Problem. Geben
> Sie Variablen, Domänen und Constraints an.
>
> **Problem 2**
>
> Betrachten Sie das Problem
> [ex_2](https://github.com/aimacode/aima-exercises/blob/master/markdown/6-Constraint-Satisfaction-Problems/exercises/ex_2/question.md)
> aus den [AIMA Excercises](https://github.com/aimacode/aima-exercises).
>
> Sei $n=3$. Diskutieren Sie die Fragen (1), (2) und (3) und geben Sie
> Lösungsvorschläge an.
>
> **Problem 3**
>
> Formulieren Sie [Sudoku](https://en.wikipedia.org/wiki/Sudoku) als CSP
> und geben Sie Variablen, Domänen und Constraints an.
> </details>

<a id="id-3b6247c92b0af037c1f0c4837facaaa1b25420c3"></a>

#### CSP: Lösen von diskreten CSP

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
> CSP's mit endlichen Domänen lassen sich mit einer Backtracking-Suche
> lösen. Dabei wird schrittweise eine Variablen ausgewählt und dann ein
> Wert aus deren Wertebereich für die Belegung ausgewählt. Danach ruft
> sich die Backtracking-Suche rekursiv auf. Falls dabei keine Lösung
> gefunden werden kann, erfolgt Backtracking und die Belegung wird
> schließlich rückgängig gemacht und durch die nächste Möglichkeit
> ersetzt.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL BT-Suche für CSP](https://youtu.be/DIY7F2ycyqA)
>
> </details>

##### Einfärben von Landkarten als CSP

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/map_graph.png" width="80%" /></p>

##### Endliche Domänen: Formulierung als Suchproblem

``` python
def BT_Search(assignment, csp):
    if complete(assignment, csp): return assignment

    var = VARIABLES(csp, assignment)

    for value in VALUES(csp, var):
        if consistent(value, var, assignment, csp):
            assignment += {var = value}

            if INFERENCE(csp, assignment, var) != failure:
                result = BT_Search(assignment, csp)
                if result != failure: return result

            assignment -= {var = value}

    return failure
```

Quelle: Backtracking-Search: Eigener Code basierend auf einer Idee nach
([Russell und Norvig 2021](#ref-Russell2021), p. 176, fig. 5.5)

Hierbei handelt es sich um eine etwas angepasste Tiefensuche: Starte mit
leerem Assignment und weise schrittweise Variablen passende Werte zu und
mache notfalls Backtracking.

##### BT-Suche für CSP am Beispiel Landkartenfärbeproblem

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/map_progress.png" width="80%" /></p>

##### Wrap-Up

-   Lösung von CSP mit endlichen Domänen mit Hilfe der
    Backtracking-Suche

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
> Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte den
> Abschnitt 5.3 "Backtracking Search for CSPs".
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann CSP mit endlichen Domänen mit Hilfe der BT-Suche
>     lösen
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> Sei ein Constraintproblem definiert durch
> $V = \lbrace a, b, c, d, e \rbrace$,
> $D_{a} = D_{b} = D_{c} = D_{e} = \lbrace 1,2,3 \rbrace, D_{d} = \lbrace 1,2 \rbrace$,
> und $C = \lbrace c_1, c_2, c_3, c_4, c_5 \rbrace$
>
> mit
>
> -   $c_1=\left((a,b), \ne\right)$,
> -   $c_2=\left((b,c), \ne\right)$,
> -   $c_3=\left((a,c), \ne\right)$,
> -   $c_4=\left((c,d), =\right)$, und
> -   $c_5=\left((b,e), <\right)$.
>
> 1.  Zeichen Sie den Constraint-Graph.
> 2.  Zeigen Sie, wie der BT-Search-Algorithmus eine Lösung für das
>     Problem findet.
>
> </details>

<a id="id-aef0213ac4bbd41501955f0ec950c44d1756a5cf"></a>

#### CSP: Heuristiken

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> CSP's mit endlichen Domänen lassen sich mit einer Backtracking-Suche
> lösen. Dabei gibt es einige Freiheitsgrade: Auswahl der nächsten
> Variable und Wahl des nächsten Werts. Hier können Heuristiken die
> Suche beschleunigen.
>
> Zur Wahl der als nächstes zu betrachtenden Variable kann die **Minimum
> Remaining Values (MRV)**-Heuristik eingesetzt werden: Wähle die
> Variable mit wenigsten freien Werten. Bei Gleichstand bei der MRV kann
> man mit der **Gradheuristik** die Variable mit den meisten Constraints
> zu offenen (noch nicht belegten) Variablen wählen.
>
> Bei der Wahl des Wertes kann die **Least Constraining Value
> (LCV)**-Heuristik genutzt werden: Wähle den Wert, der für die
> verbleibenden Variablen die wenigsten Werte ungültig macht.
>
> Während die MRV relativ leicht umzusetzen ist, muss man für die LCV
> alle Constraints zu den Nachbarn auswerten.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL CSP, Heuristiken](https://youtu.be/pgXf0oV8lhE)
>
> </details>

##### VARIABLES: Variablen-Sortierung, Welche Variable soll betrachtet werden?

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/bt_search_mrv.png" width="65%" /></p>

**VARIABLES**: Welche Variable zuerst ausprobieren?

**Minimum Remaining Values (MRV)**: (vgl. ([Russell und Norvig 2021,
177](#ref-Russell2021)))

-   Wähle Variable mit wenigsten freien Werten (die am meisten
    eingeschränkte Variable)

    =\> reduziert den Verzweigungsgrad

Beispiel:

1.  Freie Auswahl, alle haben gleich viele freie Werte (jeweils 3) =\>
    wähle A
2.  B und C haben nur noch zwei freie Werte =\> wähle B (oder C)
3.  C hat nur noch einen Wert, D noch zwei, der Rest drei =\> wähle C

##### VARIABLES: Gleichstand bei MRV

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/bt_search_mrv.png" width="65%" /></p>

**VARIABLES**: Welche Variable zuerst ausprobieren?

**Gradheuristik**: Erweiterung von *MRV* bei *Gleichstand* (vgl.
([Russell und Norvig 2021, 177](#ref-Russell2021)))

-   Wähle Variable mit meisten Constraints auf offene (noch nicht
    zugewiesene) Variablen

    =\> reduziert den Verzweigungsgrad in späteren Schritten

Beispiel:

1.  MRV: Alle haben gleich viele freie Werte (jeweils 3) =\>
    Gradheuristik: B, C und D haben die meisten Verbindungen
    (Constraints) auf offene Variablen =\> wähle B (oder C oder D)
2.  MRV: A, C und D haben nur noch zwei freie Werte =\> Gradheuristik: C
    und D haben je zwei Constraints auf noch offene Variablen =\> wähle
    C (oder D)
3.  MRV: A und D haben beide nur noch einen Wert =\> Gradheuristik: D
    hat die meisten Verbindungen (Constraints) auf offene Variablen =\>
    wähle D

##### VALUES: Werte-Sortierung, Welchen Wert soll ich ausprobieren?

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/bt_search_lcv.png" width="65%" /></p>

**VALUES**: Welchen Wert zuerst ausprobieren?

**Least Constraining Value (LCV)**: (vgl. ([Russell und Norvig 2021,
177](#ref-Russell2021)))

-   Wähle Wert, der für verbleibende Variablen die wenigsten Werte
    ungültig macht

    =\> verringert die Wahrscheinlichkeit für Backtracking

Beispiel:

1.  Sei A gewählt: Alle Werte machen in den anderen Variablen einen Wert
    ungültig =\> freie Wahl des Wertes =\> wähle beispielsweise rot
2.  Sei B gewählt: Alle Werte machen in den anderen Variablen einen Wert
    ungültig =\> freie Wahl des Wertes =\> wähle beispielsweise grün
3.  Sei D gewählt: Verbleibende Werte rot und blau
    -   Wahl von rot würde für C einen Wert übrig lassen (blau)
    -   Wahl von blau würde für C **keinen** Wert übrig lassen =\> LCV:
        Wahl von rot!

**Hinweis**: Diese Heuristik ist in der Praxis sehr aufwändig zu
berechnen! Man müsste für jeden Wert die noch offenen Constraints
anschauen und berechnen, wie viele Werte damit jeweils ungültig gemacht
werden. Die Idee ist aber dennoch interessant, und möglicherweise kann
man sie für ein reales Problem so adaptieren, dass bei der Umsetzung nur
wenig zusätzlicher Aufwand entsteht.

##### Wrap-Up

-   Verbesserung der BT-Suche mit Heuristiken: MRV, Gradheuristik, LCV

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
> Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte den
> Abschnitt 5.3 "Backtracking Search for CSPs".
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann die BT-Suche mit verschiedenen Heuristiken
>     verbessern: MRV, Gradheuristik, LCV
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest CSP, Heuristiken
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106573&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Problem 1**
>
> Sei $D=\lbrace 0, \ldots, 5 \rbrace$, und ein Constraintproblem
> definiert durch $\langle
> \lbrace v_1, v_2, v_3, v_4 \rbrace, \lbrace D_{v_1} = D_{v_2} = D_{v_3} = D_{v_4} = D \rbrace,
> \lbrace c_1, c_2, c_3, c_4 \rbrace \rangle$
>
> mit
>
> -   $c_1=\left((v_1,v_2), \lbrace (x,y) \in D^2 | x+y = 3 \rbrace\right)$,
> -   $c_2=\left((v_2,v_3), \lbrace (x,y) \in D^2 | x+y \le 3 \rbrace\right)$,
> -   $c_3=\left((v_1,v_3), \lbrace (x,y) \in D^2 | x \le y \rbrace\right)$
>     und
> -   $c_4=\left((v_3,v_4), \lbrace (x,y) \in D^2 | x \ne y \rbrace\right)$.
>
> 1.  Zeichen Sie den Constraint-Graph.
> 2.  Welche Variable würde bei der Anwendung von *MRV* und
>     *Gradheuristik* im ersten Schritt bei der Suche mit der BT-Search
>     ausgewählt?
> 3.  Geben Sie eine Lösung für das Problem an.
>
> **Problem 2**
>
> Sei ein Constraintproblem definiert durch
> $V = \lbrace a, b, c, d, e \rbrace$,
> $D_{a} = D_{b} = D_{c} = D_{e} = \lbrace 1,2,3 \rbrace, D_{d} = \lbrace 1,2 \rbrace$,
> und $C = \lbrace c_1, c_2, c_3, c_4, c_5 \rbrace$
>
> mit
>
> -   $c_1=\left((a,b), \ne\right)$,
> -   $c_2=\left((b,c), \ne\right)$,
> -   $c_3=\left((a,c), \ne\right)$,
> -   $c_4=\left((c,d), =\right)$, und
> -   $c_5=\left((b,e), <\right)$.
>
> 1.  Zeichen Sie den Constraint-Graph.
> 2.  Welche Variable würde bei der Anwendung der Heuristik *MRV* im
>     ersten Schritt bei der Suche mit der BT-Search ausgewählt?
> 3.  Gegeben die (partielle) Belegung $d=1$ und $c=1$, welche Variable
>     würde mit *MRV* ausgewählt werden?
> 4.  Was würde die *Gradheuristik* jeweils ändern?
>
> </details>

<a id="id-a9b47eac39d203917d2689bbfad8003315b2990c"></a>

#### CSP: Kantenkonsistenz und AC-3

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Bei der Backtracking-Suche werden schrittweise Variablen belegt. Dabei
> kann eine Belegung eine Lösung im weiteren Verlauf der Suche unmöglich
> machen, so dass (viel) Backtracking notwendig wird.
>
> Beim **Forward Checking** entfernt man nach der Belegung einer
> Variablen in allen Nachbarvariablen die durch die aktuelle Belegung
> inkonsistent gewordenen Werte. Wenn dabei ein Wertebereich leer wird,
> führt die aktuelle Belegung nicht zu einer Lösung und kann sofort
> zurückgenommen werden. Allerdings findet man mit Forward Checking
> nicht alle Inkonsistenzen.
>
> Bei der **Kantenkonsistenz** prüft man, ob zu jedem Wert aus dem
> Wertebereich einer Variablen in den Nachbarvariablen mindestens ein
> passender (konsistenter) Wert existiert. Dabei werden die Constraints
> nacheinander betrachtet (nicht gleichzeitig). Wenn dies nicht der Fall
> ist, wird der Wert aus dem Wertebereich der betrachteten Variablen
> entfernt. Der AC-3-Algorithmus erzeugt schrittweise Kantenkonsistenz
> für ein CSP.
>
> Man kann den AC-3 als Vorverarbeitung nutzen und die Wertemengen *vor*
> der BT-Suche reduzieren. Eventuell findet man dabei bereits eine
> Lösung oder kann eine Lösung ausschließen. Man kann den AC-3 auch als
> Inferenzschritt in die BT-Suche einbetten ("MAC").
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL CSP, AC-3](https://youtu.be/TvF78iVDwKM)
>
> </details>

##### Problem bei BT-Suche

Zuweisung eines Wertes an Variable $X$:

-   Passt zu aktueller Belegung
-   Berücksichtigt aber nicht **restliche** Constraints =\> macht
    weitere Suche u.U. unmöglich/schwerer

**Lösung**: Nach Zuweisung alle *nicht zugewiesenen Nachbarvariablen*
prüfen

##### INFERENCE: Vorab-Prüfung (Forward Checking)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/bt_search_inference.png" width="65%" /></p>

**Inference**: Frühzeitiges Erkennen von Fehlschlägen! (vgl. ([Russell
und Norvig 2021, 178](#ref-Russell2021)))

Nach Zuweisung eines Wertes an Variable $X$:

-   Betrachte alle nicht zugewiesenen Variablen $Y$:
    -   Falls Constraints zw. $X$ und $Y$, dann ...
    -   ... entferne alle inkonsistenten Werte aus dem Wertebereich von
        $Y$.

Beispiel:

1.  Sei A auf rot gesetzt =\> entferne rot in B und C
2.  Sei D auf grün gesetzt =\> entferne grün in B und C und E

Problem: Für B und C bleibt nur noch blau; sind aber benachbart!

##### Forward Checking findet nicht alle Inkonsistenzen!

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/forward_checking.png" width="40%" /></p>

-   Nach $\lbrace A=red, D=green \rbrace$ bleibt für B und C nur noch
    blue
-   B und C sind aber benachbart

##### Übergang von Forward Checking zu Kantenkonsistenz

-   Forward Checking erzeugt Konsistenz für alle Constraints der
    **gerade betrachteten (belegten) Variablen**.

<!-- -->

-   Idee: Ausdehnen auf alle Kanten ... =\> Einschränken der Wertemengen

##### Definition Kantenkonsistenz (Arc Consistency)

> Eine Kante von $X$ nach $Y$ ist "konsistent", wenn für jeden Wert
> $x \in D_X$ und für alle Constraints zwischen $X$ und $Y$ jeweils ein
> Wert $y \in D_Y$ existiert, so dass der betrachtete Constraint durch
> $(x,y)$ erfüllt ist.

Ein CSP ist kanten-konsistent, wenn für alle Kanten des CSP Konsistenz
herrscht.

##### Beispiel Kantenkonsistenz

$V = \lbrace a,b,c,d,e \rbrace$

$\mathrm{C} = \lbrace ((a,b), \ne), ((b,c), \ne), ((a,c), \ne), ((c,d), =), ((b,e), <) \rbrace$

$D_a=D_b=D_c=\lbrace 1,2,3 \rbrace$, $D_d=\lbrace 1,2 \rbrace$,
$D_e=\lbrace 1,2,3 \rbrace$

Einschränkung der Ausgangswertemengen (kanten-konsistent)

$D_a=\lbrace 1,2,3 \rbrace$, $D_b=\lbrace 1,2 \rbrace$,
$D_c=\lbrace 1,2 \rbrace$, $D_d=\lbrace 1,2 \rbrace$,
$D_e=\lbrace 2,3 \rbrace$

<div align="center">

=\> Kantenkonsistenz ist nur **lokale** Konsistenz!

</div>

*Anmerkung*: $((a,b), \ne)$ ist Kurzform für
$\left((a,b), \lbrace (x,y) \in D_a \times D_b | x \ne y \rbrace\right)$

##### AC-3 Algorithmus: Herstellen von Kantenkonsistenz

``` python
def AC3(csp):
    queue = Queue(csp.arcs)
    while not queue.isEmpty():
        (x,y) = queue.dequeue()
        if ARC_Reduce(csp,x,y):
            if D_x.isEmpty(): return false
            for z in x.neighbors(): queue.enqueue(z,x)
    return true

def ARC_Reduce(csp, x, y):
    change = false
    for v in D_x:
        if not (any w in D_y and csp.C_xy(v,w)):
            D_x.remove(v);  change = true
    return change
```

Quelle: AC-3 Algorithmus: Eigener Code basierend auf einer Idee nach
([Russell und Norvig 2021](#ref-Russell2021), p. 171, fig. 5.3)

*Anmerkung*: Die Queue in AC-3 ist wie eine (mathematische) Menge zu
betrachten: Jedes Element kann nur genau einmal in einer Menge enthalten
sein. D.h. wenn man bei `queue.enqueue(z,x)` die Rückkanten von den
Nachbarn in die Queue aufnimmt, sorgt die Queue eigenständig dafür, dass
es keine doppelten Vorkommen einer Kante in der Queue gibt. (Falls die
verwendete Queue in einer Programmiersprache das nicht unterstützt,
müsste man bei `queue.enqueue(z,x)` stets abfragen, ob die Kante `(z,x)`
bereits in der Queue ist und diese dann nicht erneut hinzufügen.) AC-3
hat eine Laufzeit von $O(d^3n^2)$ ($n$ Knoten, maximal $d$ Elemente pro
Domäne). Leider findet auch AC-3 nicht alle Inkonsistenzen ...
(NP-hartes Problem).

*Hinweis*: In gewisser Weise kann man Forward Checking als ersten
Schritt bei der Herstellung von Kantenkonsistenz interpretieren.

##### Einsatz des AC-3 Algorithmus

1.  Vorverarbeitung: Reduktion der Wertemengen *vor* BT-Suche
    -   Nach AC-3 evtl. bereits Lösung gefunden (oder ausgeschlossen)

<!-- -->

2.  Propagation: Einbetten von AC-3 als Inferenzschritt in BT-Suche
    (**MAC** -- Maintaining Arc Consistency)
    -   Nach jeder Zuweisung an $X_i$ Aufruf von AC-3-Variante:
        -   Initial nur Kanten von $X_i$ zu allen noch nicht
            zugewiesenen Nachbarvariablen
    -   Anschließend rekursiver Aufruf von BT-Suche

##### Wrap-Up

-   Anwendung von Forward Checking und ...
-   ... die Erweiterung auf alle Kanten: AC-3, Kantenkonsistenz

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
> Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte den
> Abschnitt 5.2 "Constraint Propagation".
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann "Forward Checking" (FC) erklären
> -   k2: Ich kann die Erweiterung von FC auf alle Kanten erklären
>     (Kantenkonsistenz)
> -   k2: Ich kann an einem Beispiel erklären, dass Kantenkonsistenz
>     nicht globale Konsistenz bedeutet
> -   k3: Ich kann den AC-3 Algorithmus anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest CSP, AC-3
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106574&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Fingerübungen**
>
> 1.  Ist die Kante zwischen a und b konsistent?
>
>     <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/csp_challenge_a.png" width="20%" /></p>
>
> 2.  Wann ist der Graph lokal konsistent?
>
>     <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/csp_challenge_b.png" width="15%" /></p>
>
>     -   a {1,2}; b {2,3}; c {1,2,3}; d {1,2,3}
>     -   a {1,2}; b {2,3}; c {3}; d {1,2}
>     -   a {1,3}; b {2,3}; c {1,3}; d {1,2,3}
>     -   a {1,2}; b {2,3}; c {1,3}; d {1,2,3}
>
> 3.  Wie sieht die Queue im nächsten Schritt mit AC3 aus?
>
>     <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/csp_challenge_c.png" width="25%" /></p>
>
>     Aktuelle Queue: \[ab, ac, ba, bc, ca, cb\]
>
>     -   \[bc, ba, ca, cb, ab, ac\]
>     -   \[ab, ac, ba, bc, ca, cb\]
>     -   \[ac, ba, bc, ca, cb\]
>     -   \[ac, ba, bc, ca, cb, ba\]
>
> </details>

<a id="id-9d0480f68cb0e1adb81cdc4b9b357168511b77d5"></a>

#### CSP: Min-Conflicts Heuristik

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Die BT-Search geht schrittweise durch den Constraintgraphen, weist dem
> aktuellen Knoten einen Wert aus seiner Domäne zu und geht dann zum
> nächsten Knoten. Sobald es Konflikte gibt, wird Backtracking bis zum
> letzten Entscheidungspunkt gemacht und dort eine andere Zuweisung
> ausprobiert. Das dauert oft sehr lange.
>
> Bei der Min-Conflicts Heuristik startet man stattdessen mit einer
> zufällig erzeugten, kompletten Belegung. So lange es dabei Konflikte
> gibt, wählt man eine der konfliktbehafteten Variablen und ändert ihren
> Wert, so dass die Anzahl der dadurch verletzten Constraints minimiert
> wird. Der Vorteil dieses Algorithmus ist seine Einfachheit und
> Schnelligkeit, allerdings ist der Algorithmus unvollständig.
>
> Dieses Vorgehen erinnert stark an die Suche mit
> Genetischen/Evolutionären Algorithmen oder bei Simulated Annealing.
> Wie dort hat man bei der Min-Conflicts Heuristik Schwierigkeiten mit
> Plateaus, denen man durch *Noise* und Restarts entgegenzuwirken
> versucht.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL CSP, Min-Conflicts Heuristik](https://youtu.be/Z-Xk6oCBZJ0)
>
> </details>

##### Problem bei BT-Suche

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/map_progress.png" width="80%" /></p>

Die [BT-Search](#id-3b6247c92b0af037c1f0c4837facaaa1b25420c3) würde den
Graphen ablaufen und schrittweise dem jeweils ausgewählten Knoten eine
Farbe zuweisen und dann weiter in die Tiefe gehen. Oft sieht man erst
relativ spät, dass eine bestimmte Belegung nicht passt und weiter unten
im Baum zu Konflikten führt und muss dann aufwändiges Backtracking
machen. Dadurch dauert eine Suche mit der BT-Search u.U. relativ lange,
selbst wenn man die in [CSP:
Heuristiken](#id-aef0213ac4bbd41501955f0ec950c44d1756a5cf) besprochenen
Heuristiken einsetzt.

##### Idee: Würfeln und Schütteln

1.  **Würfeln**: Erzeuge zufällige *vollständige* Belegung

    Was würde passieren, wenn wir analog zu
    [GA/EA](#id-c99ae5cae334ccb182fc61d94707f8e7cdf363c9) eine
    *vollständige* Codierung wählen würden mit initial zufällig aus den
    Domänen ausgewählten Werten?

<!-- -->

2.  **Schütteln**: Verändere schrittweise Werte

    Was würde passieren, wenn wir danach die Konflikte "*heraus
    schütteln*" (erinnert ein bisschen an [Simulated
    Annealing](#id-bafda494229223827755dbbffb5862eeb7e31262))?

##### Beispiel: Einfärben von Landkarten

Ausgangszustand:

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/map_graph.png" width="75%" /></p>

Schritt 1: "Würfeln" (zufällige vollständige Belegung)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/min_conflicts1.png" width="50%" /></p>

**Problem**: Konflikt in Knoten B und C.

Schritt 2: "Schütteln"

-   Auswahl von Knoten B
-   Auswahl einer anderen Farbe (grün - Anzahl der verbleibenden
    Konflikte = 0)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/csp/images/min_conflicts2.png" width="50%" /></p>

**Lösung erreicht.**

##### Min-Conflicts Heuristik

``` python
Min-Conflicts(csp, maxSteps):
    assignment = random_complete_assignment(csp)

    for step in 1..maxSteps:
        if complete_consistent(assignment, csp): return assignment

        var = random_conflicted_variable(csp, assignment)
        value = choose_val_min_conflicts(csp, assignment, var)
        assignment += {var = value}

    return failure
```

Quelle: Min-Conflicts: Eigener Code basierend auf einer Idee nach
([Russell und Norvig 2021](#ref-Russell2021), p. 182, fig. 5.8)

###### Hinweis

Wenn es mehrere gleichwertige Möglichkeiten gibt, nimm eine beliebige
davon.

###### Beobachtungen

-   Algorithmus braucht i.d.R. sehr wenige Schritte bis zur Lösung
-   Plateaus können häufig auftreten
    -   Zusätzliches Einführen von *Noise*: ersetze die deterministische
        Wahl des Wertes mit den wenigsten Konflikten (vgl. [Simulated
        Annealing](#id-bafda494229223827755dbbffb5862eeb7e31262)):
        -   Mit einer Wahrscheinlichkeit \< Noise: nimm zufälligen Wert
            aus der Domäne
        -   Sonst: nimm den die Anzahl der Konflikte minimierenden Wert
            aus der Domäne
    -   Restarts können zusätzlich helfen, dadurch komplett neue
        zufällige Belegung (vgl.
        [GA/EA](#id-c99ae5cae334ccb182fc61d94707f8e7cdf363c9))
-   Weitere Verbesserung: Statt einer beliebigen Variable diejenige mit
    den meisten Konflikten auswählen

###### Beispiel aus der Praxis

Mit der Min-Conflicts Heuristik konnte die Rechenzeit für die Planungen
für eine Woche Beobachtungen für das Hubble-Weltraum-Teleskop von **drei
Wochen** auf **10 Minuten** gesenkt werden.
(Quelle: [Wikipedia](https://en.wikipedia.org/wiki/Min-conflicts_algorithm#Example))

##### Diskussion

MAC (Maintaining Arc Consistency: BT-Search plus AC-3):

-   Systematische Backtracking‑Search
-   Nach jeder Variablenzuweisung wird Arc‑Consistency (AC‑3) auf den
    verbleibenden Domänen durchgesetzt
-   Vollständiger Algorithmus
-   Gute Pruning‑Eigenschaften bei starken/engen Constraints
-   Hoher Rechenaufwand pro Schritt durch wiederholte Konsistenzprüfung

Min-Conflicts Heuristik:

-   Lokale Repair‑Heuristik
-   Startet mit kompletter und zufälliger Belegung
-   Ändert iterativ eine konfliktbehaftete Variable auf einen Wert, der
    die wenigsten Konflikte verursacht
-   Sehr schnell in der Praxis für große, locker eingeschränkte Probleme
-   Unvollständig, heuristisch, kann stecken bleiben

Ausblick: Verwandtschaft zu SAT (Erfüllbarkeitsproblem der
Aussagenlogik)

Umformung der Constraints in aussagenlogische Formeln und Anwenden von
SAT-Solvern wie *Conflict-Driven Clause Learning* (CDCL),
*Davis-Putnam-Logemann-Loveland*-Algorithmus (DPLL), *WalkSAT* mit Hill
Climbing, ... vgl. [Boolean satisfiability
problem](https://en.wikipedia.org/wiki/Boolean_satisfiability_problem).

##### Wrap-Up

-   Min-Conflicts ist ein skalierbares, einfach implementierbares
    Gegenstück zur vollständigen Suche
-   Typische Probleme mit Plateaus

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
> Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte den
> Abschnitt 5.4 "Local Search for CSPs".
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann die Min-Conflicts Heuristik erklären und anwenden
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> Betrachten Sie (erneut) das folgende Problem: Sei
> $D=\lbrace 0, \ldots, 5 \rbrace$, und ein Constraintproblem definiert
> durch $\langle
> \lbrace v_1, v_2, v_3, v_4 \rbrace, \lbrace D_{v_1} = D_{v_2} = D_{v_3} = D_{v_4} = D \rbrace,
> \lbrace c_1, c_2, c_3, c_4 \rbrace \rangle$
>
> mit
>
> -   $c_1=\left((v_1,v_2), \lbrace (x,y) \in D^2 | x+y = 3 \rbrace\right)$,
> -   $c_2=\left((v_2,v_3), \lbrace (x,y) \in D^2 | x+y \le 3 \rbrace\right)$,
> -   $c_3=\left((v_1,v_3), \lbrace (x,y) \in D^2 | x \le y \rbrace\right)$
>     und
> -   $c_4=\left((v_3,v_4), \lbrace (x,y) \in D^2 | x \ne y \rbrace\right)$.
>
> 1.  Zeichen Sie den Constraint-Graph.
> 2.  Erzeugen Sie eine Lösung durch schrittweise Anwendung der
>     Min-Conflicts Heuristik.
>
> </details>

<a id="id-42bc36be1058d57772048d3a14a2b2b13020cc0f"></a>

### Naive Bayes

Ich habe Symptome beobachtet. Kann ich die Ursache (also die Krankheit)
bestimmen, wenn ich etwas Hintergrundwissen habe:

-   Wie häufig treten verschieden Krankheiten auf
-   Welche Krankheit zeigt welche Symptome (und wie oft treten die dann
    auf)

Kann ich aus diesen Daten einen Klassifikator lernen?

<a id="id-cd12d8faa8a855e40fd112b32dc98078382d90aa"></a>

#### NB: Wiederholung Wahrscheinlichkeitstheorie

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Diese Sitzung ist eine (relativ oberflächliche)
> Einführung/Wiederholung in die/der Grundlagen der
> Wahrscheinlichkeitstheorie.
>
> Wir schauen uns die möglichen Ausgänge eines Zufallsexperiments an
> ("Ereignisse"). Wenn diese Ereignisse sich gegenseitig ausschließen
> und alle denkbaren Ergebnisse abdecken, dann nennt man diese
> Ereignisse auch **Elementarereignisse**. Die Wahrscheinlichkeit für
> ein Ereignis kann man angeben als Anzahl der möglichen Ergebnisse, die
> für dieses Ereignis günstig sind, geteilt durch die Anzahl aller
> Ausgänge. Über die Kolmogorov Axiome bekommt man die typischen
> Rechenregel für die Wahrscheinlichkeit.
>
> Man kann eine **Verbundwahrscheinlichkeit** $P(A,B) = P(B,A)$ angeben,
> das ist die Wahrscheinlichkeit, dass $A$ und $B$ gleichzeitig
> auftreten.
>
> Die **bedingte** Wahrscheinlichkeit für $A$ gegeben $B$ ist
> $P(A \mid B)$ und berechnet sich $P(A \mid B) = P(A,B)/P(B)$.
>
> Daraus kann man die **Bayes-Regel** ableiten:
> $P(A \mid B) = P(B \mid A)P(A)/P(B)$.
>
> Dabei nennt man
>
> -   $P(A)$ **"Prior"** oder **"A-priori-Wahrscheinlichkeit"** (die
>     Wahrscheinlichkeit für $A$ ohne weiteres Wissen),
> -   $P(B \mid A)$ **"Likelihood"** (Wie wahrscheinlich ist das
>     Auftreten von $B$, gegeben $A$?),
> -   $P(A \mid B)$ **"Posterior"** oder
>     **"A-posteriori-Wahrscheinlichkeit"** (Wie wahrscheinlich ist $A$,
>     wenn $B$ eingetreten ist?), und
> -   $P(B)$ ist ein Normierungsfaktor (Wie wahrscheinlich ist $B$ an
>     sich?).
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Wahrscheinlichkeiten](https://youtu.be/p_Yy5rkl4CA)
>
> </details>

##### Ereignisse und Wahrscheinlichkeit

**Hinweis**: Die folgende Darstellung zur Einführung in die
Wahrscheinlichkeitstheorie dient dem Verständnis des Naive Bayes
Klassifikationsalgorithmus und ist teilweise eher oberflächlich
gehalten. Sie kann und soll keine entsprechende mathematische Einführung
ersetzen!

###### Ereignisse

-   **Ereignisse**
    $\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace$:
    endliche Menge der Ausgänge eines Zufallsexperiments

-   **Elementarereignis**: Die $\omega_i \in \Omega$

    -   decken *alle* möglichen Versuchsergebnisse ab, und
    -   schließen sich gegenseitig aus

###### Regeln

-   Wenn $A$ und $B$ Ereignisse sind, dann auch $A \cup B$
-   $\Omega$ wird als **sicheres Ereignis** bezeichnet: Enthält
    definitionsgemäß **alle** Versuchsausgänge, d.h. *ein* in der Menge
    enthaltenes Ereignis *muss* auftreten
-   Die leere Menge $\emptyset$ wird als **unmögliches Ereignis**
    bezeichnet
-   Die Variablen $A$ und $B$ heißen auch **Zufallsvariablen**

Im Rahmen dieser Veranstaltung betrachten wir nur diskrete
Zufallsvariablen mit endlichem Wertebereich!

###### Wahrscheinlichkeit

-   **Wahrscheinlichkeit**:

    Sei $\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace$
    endlich. Die Wahrscheinlichkeit $P(A)$ für ein Ereignis $A$ ist dann
    definiert als

    $$P(A) = \frac{\lvert A \rvert}{\lvert \Omega \rvert} =
    \frac{\text{Anzahl der für A günstigen Fälle}}{\text{Anzahl der möglichen Fälle}}$$

    Man könnte auch schreiben: $P(A) = \sum_{\omega \in A} P(\omega)$

    *Hinweis*: Diese Definition von Wahrscheinlichkeit geht von gleich
    wahrscheinlichen Elementarereignissen aus! Die allgemeine Definition
    geht über einen entsprechenden Grenzwert.

###### Verteilung

Den Vektor mit den Wahrscheinlichkeiten aller Elementarereignisse nennt
man auch *Verteilung*.

Beispiel:
$\mathbf{P}(A) = (P(A=1), P(A=2), \ldots, P(A=6)) = (1/6, 1/6, \ldots, 1/6)$

*Hinweis*: Wir betrachten hier nur diskrete Zufallsvariablen. Für
kontinuierliche Variablen wird die Verteilung mit Hilfe einer
**Dichtefunktion** dargestellt, beispielsweise der Gauss'schen Funktion.

###### Beispiel

-   Einmaliges Würfeln mit einem Spielwürfel:
    $\Omega = \lbrace 1,2,3,4,5,6 \rbrace$

-   Elementarereignisse: $\lbrace 1,2,3,4,5,6 \rbrace$

-   Das Würfeln einer geraden Zahl ($A = \lbrace 2,4,6 \rbrace$) ist
    *kein* Elementarereignis, ebenso wie das Würfeln einer Zahl kleiner
    5 ($B = \lbrace 1,2,3,4 \rbrace$), da
    $A \cap B = \lbrace 2,4 \rbrace \ne \emptyset$

-   Wahrscheinlichkeit, eine 1 zu würfeln:
    $P(A \in \lbrace 1 \rbrace) = P(A=1) = \frac{1}{6}$.

    *Anmerkung*: Man schreibt statt $P(A \in \lbrace 1 \rbrace)$ oft
    einfach $P(1)$.

-   Wahrscheinlichkeit, eine gerade Zahl zu würfeln:
    $P(A \in \lbrace 2,4,6 \rbrace) = P(A=2 \vee A=4 \vee A=6) = \frac{\lvert \lbrace 2,4,6 \rbrace \rvert}{\lvert \lbrace 1,2,3,4,5,6 \rbrace \rvert} = \frac{3}{6} = 0.5$

##### Rechenregeln: Kolmogorov Axiome

Sei $A$ ein Ereignis, also $A \subseteq \Omega$:

-   $0 \le P(A) \le 1$

-   $\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace$:
    $\sum_{i} P(\omega_i) = 1$ (Normierungsbedingung: Summe über die
    Wahrscheinlichkeiten aller Elementarereignisse ist immer 1)

-   $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

Daraus folgt (u.a.):

-   $P(\Omega) = 1$
-   $P(\emptyset) = 0$
-   $P(A) = 1- P(\neg A)$

<!-- -->

-   $A$ und $B$ *unabhängig*: $P(A \cup B) = P(A) + P(B)$
-   $P(A \cap B)$ ist leer, wenn $A$ und $B$ sich nicht überlappen
-   $A \subseteq B$: $P(A) \le P(B)$

##### Verbundwahrscheinlichkeiten

$$P(A,B) = P(B,A) = \text{ Wahrscheinlichkeit, dass A und B gleichzeitig auftreten }$$

|                  | Halsschmerzen | $\neg$ Halsschmerzen |
|------------------|---------------|----------------------|
| Schnupfen        | 0.04          | 0.06                 |
| $\neg$ Schnupfen | 0.01          | 0.89                 |

-   $P(S,H) = 0.04$

Die Tabelle kann man so lesen: In 4 von 100 Fällen tritt das Ereignis
"Schnupfen" gleichzeitig mit dem Ereignis "Halsschmerzen" auf, in 6 von
100 Fällen tritt "Schupfen" ohne Halsschmerzen auf. ... In Summe kommt
man wieder auf 100 Fälle (100 Prozent).

Nach diesen Zahlen liegt also die Verbundwahrscheinlichkeit für die
Ereignisse "Schnupfen" und "Husten", d.h. $P(S,H)$, bei 4 Prozent.

**Hinweis**: Die gezeigten Zahlen und Zusammenhänge sind **fiktiv** und
dienen lediglich zur Verdeutlichung der Wahrscheinlichkeitsbegriffe!

##### Bedingte Wahrscheinlichkeit

**Definition**: Bedingte Wahrscheinlichkeit für $A$ gegeben $B$:

$$P(A \mid B) = \frac{P(A,B)}{P(B)}$$

|                  | Halsschmerzen | $\neg$ Halsschmerzen |
|------------------|---------------|----------------------|
| Schnupfen        | 0.04          | 0.06                 |
| $\neg$ Schnupfen | 0.01          | 0.89                 |

-   $P(\text{Schnupfen }  \mid  \text{ Halsschmerzen}) = \frac{P(S,H)}{P(H)} = \frac{0.04}{0.04+0.01} = 0.8$
-   $P(\text{Halsschmerzen }  \mid  \text{ Schnupfen}) = \frac{P(H,S)}{P(S)} = \frac{0.04}{0.04+0.06} = 0.4$

Wegen $P(A \mid B) = \dfrac{P(A,B)}{P(B)}$ ist
$P(A,B) = P(A \mid B)P(B) = P(B \mid A)P(A)$ (**Produkt-Regel**)!

##### Marginalisierung

|                  | Halsschmerzen | $\neg$ Halsschmerzen | $\sum$ |
|------------------|---------------|----------------------|--------|
| Schnupfen        | 0.04          | 0.06                 | *0.1*  |
| $\neg$ Schnupfen | 0.01          | 0.89                 | *0.9*  |
| $\sum$           | *0.05*        | *0.95*               | *1*    |

$P(S) = P(S,H) + P(S, \neg H)$

Allgemein: Seien $B_1, \ldots, B_n$ Elementarereignisse mit
$\bigcup_i B_i = \Omega$. Dann ist
$$P(A) = \sum_i P(A,B_i) = \sum_i P(A \mid B_i)P(B_i)$$

Diesen Vorgang nennt man **Marginalisierung**. Die resultierende
Verteilung $P(A)$ nennt man auch *"Randverteilung"*, da sie mit einer
Projektion eines Quaders auf eine Seitenfläche vergleichbar ist.

##### Kettenregel

-   **Produktregel**: Wegen $P(A \mid B) = \dfrac{P(A,B)}{P(B)}$ gilt
    $P(A,B) = P(A \mid B)P(B)$

<!-- -->

-   Verallgemeinerung (**Kettenregel**): $$\begin{eqnarray}
    P(A_1,A_2,\ldots,A_n) &=& P(A_n,\ldots,A_2,A_1)\\
        & = & P(A_n \mid A_{n-1},\ldots,A_1)P(A_{n-1},\ldots,A_1)\\
        & = & P(A_n \mid A_{n-1},\ldots,A_1)P(A_{n-1} \mid A_{n-2},\ldots,A_1)P(A_{n-2},\ldots,A_1)\\
        & = & \ldots\\
        & = & P(A_n \mid A_{n-1},\ldots,A_1) \ldots P(A_2 \mid A_1)P(A_1)\\
        & = & \prod_i P(A_i \mid A_1,\ldots,A_{i-1})
    \end{eqnarray}$$

##### Bayes-Regel

Bedingte Wahrscheinlichkeit:
$P(A,B) = P(A \mid B)P(B) = P(B \mid A)P(A)$

$$P(A \mid B) = \frac{P(B \mid A)P(A)}{P(B)}$$

-   $P(A)$ nennt man **"Prior"** oder **"A-priori-Wahrscheinlichkeit"**
    (Das ist die Wahrscheinlichkeit für $A$ ohne weiteres Wissen)
-   $P(B \mid A)$ nennt man **"Likelihood"** (Wie wahrscheinlich ist das
    Auftreten von $B$, gegeben $A$?)
-   $P(A \mid B)$ nennt man **"Posterior"** oder
    **"A-posteriori-Wahrscheinlichkeit"** (Wie wahrscheinlich ist $A$,
    wenn $B$ eingetreten ist?)
-   $P(B)$ ist ein Normierungsfaktor

Wenn man (siehe später: Naive Bayes Klassifikator) $A$ als Klasse und
$B$ als Daten betrachtet:

-   $P(A)$: Wie wahrscheinlich ist eine bestimmte Klasse an sich
    (A-priori-Wahrscheinlichkeit der Klassen)?
-   $P(B \mid A)$: Wie wahrscheinlich sind bestimmte Daten, gegeben die
    Klasse $A$? (Likelihood der Daten)
-   $P(A \mid B)$: Gegeben die Daten $B$, wie wahrscheinlich ist die
    Klasse $A$? (Posterior)

In der Medizin hat sucht man i.d.R. die Ursache für beobachtete
Symptome:
$$P(\text{Ursache} \mid \text{Symptome}) = \frac{P(\text{Symptome} \mid \text{Ursache})P(\text{Ursache})}{P(\text{Symptome})}$$

Aus der A-priori-Wahrscheinlichkeit für bestimmte Krankheiten und der
Likelihood der Symptome (wie wahrscheinlich sind Symptome, gegeben eine
Krankheit) kann man die Wahrscheinlichkeit für das Vorliegen einer
Erkrankung gegeben bestimmte Symptome berechnen.

##### Beispiel Bayes

-   Bei Arthrose wird in 80 Prozent der Fälle ein steifes Gelenk
    beobachtet
-   Eine von 10.000 Personen hat Arthrose
-   Eine von 10 Personen hat ein steifes Gelenk

=\> Ich habe ein steifes Gelenk. Habe ich Arthrose?

-   Gegeben: $P(A) = 0.0001,   P(S) = 0.1,   P(S \mid A) = 0.8$
-   Gesucht: $P(A \mid S)$

$$P(A \mid S) = \frac{P(S \mid A)P(A)}{P(S)} = \frac{0.8 \times 0.0001}{0.1} = 0.0008 = 0.08\%$$

Wenn ein steifes Gelenk vorliegt, ist die Wahrscheinlichkeit, dann an
Arthrose erkrankt zu sein, bei nur 0.08%. Kein Grund zur Sorge in diesem
Fall :-)

=\> Wie wahrscheinlich ist ein steifes Gelenk ohne Arthrose, also
$P(S \mid \neg A$)?

Mit Marginalisierung:
$P(S) = P(S \mid A)P(A) + P(S \mid \neg A)P(\neg A)$, d.h.
$0.1 = 0.8 \times 0.0001 + P(S \mid \neg A) \times (1-0.0001)$, d.h.
$P(S \mid \neg A) = 0.0999$

In knapp 10 Prozent der Fälle würde man im obigen Beispiel bei der
Diagnose "keine Arthrose" ein steifes Gelenk beobachten.

**Hinweis**: Die genannten Zahlen und Zusammenhänge sind rein fiktional
und sollen lediglich zur Veranschaulichung der Bayes-Regel dienen!

Schauen Sie sich auch das Beispiel 7.9 in ([Ertel 2025](#ref-Ertel2025),
Ex. 7.9, S. 135) an!

##### Unabhängige Ereignisse

-   $P(\text{Halsschmerzen},\text{ Regen}) = P(\text{Regen } \mid \text{ Halsschmerzen})P(\text{Halsschmerzen})$
-   $P(\text{Regen } \mid \text{ Halsschmerzen}) = \text{ ?? }$
    $= P(\text{Regen})$

<!-- -->

-   Zwei Ereignisse $A$ und $B$ sind **unabhängig**, wenn
    $$P(A \mid B) = P(A)$$

    =\> $P(A,B) = P(A \mid B)P(B) = P(A)P(B)$

Dies kann man verallgemeinern (**bedingte Unabhängigkeit**):

> $X$ und $Y$ sind *bedingt unabhängig* (gegeben $Z$), wenn
> $P(X \mid Y,Z) = P(X \mid Z)$ bzw. $P(Y \mid X,Z) = P(Y \mid Z)$

Daraus folgt:

$$P(X,Y \mid Z) = P(X \mid Y,Z)P(Y \mid Z) = P(X \mid Z)P(Y \mid Z)$$

##### Wrap-Up

-   Grundlagen der Wahrscheinlichkeitstheorie
    -   Elementarereignisse und Wahrscheinlichkeit
    -   Rechenregeln
    -   Bedingte Wahrscheinlichkeit und Verbundwahrscheinlichkeit
    -   Marginalisierung
    -   (Bedingte) Unabhängigkeit
    -   Bayes'sche Regel

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
> Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte die
> Abschnitte 12.2 bis (einschließlich) 12.5. Darüber hinaus ist
> Abschnitt "7.1 Rechnen mit Wahrscheinlichkeiten" ([Ertel
> 2025](#ref-Ertel2025)) sehr empfehlenswert.
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Begriffe Elementarereignisse und
>     Wahrscheinlichkeit erklären
> -   k2: Ich kann bedingte Wahrscheinlichkeit und
>     Verbundwahrscheinlichkeit erklären
> -   k2: Ich kann (bedingte) Unabhängigkeit erklären
> -   k3: Ich kann die Rechenregeln für Wahrscheinlichkeit anwenden
> -   k3: Ich kann Marginalisierung an einem Beispiel anwenden
> -   k3: Ich verstehe die Bayes'sche Regel und kann sie an einem
>     Beispiel demonstrieren
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Wahrscheinlichkeiten
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106587&client_id=FH-Bielefeld)
>
> </details>

<a id="id-cd72f1bd942f6b05157da80ba479a7a493d898c1"></a>

#### NB: Klassifikation mit Naive Bayes

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Mit Hilfe der (verallgemeinerten) Bayes-Regel kann man Klassifikation
> durchführen. Dazu werden beim "Training" die bedingten
> Wahrscheinlichkeiten aus den Trainingsdaten geschätzt. Die Anwendung
> (Klassifikation) erfolgt dann durch die Nutzung der beim "Training"
> berechneten bedingten Wahrscheinlichkeiten:
>
> $h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h \mid D_1,  \ldots, D_n) =
> \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i \mid h)$
>
> Für jede Hypothese $h$, d.h. für jede Klasse, wird der Posterior
> $P(h \mid D_1, \ldots, D_n)$ ausgerechnet. Die Klasse, deren Wert
> dabei am höchsten ist, "gewinnt", d.h. die Klasse mit dem größten
> Posterior wird ausgegeben. (Deshalb wird das Verfahren oft auch "MAP"
> -- *Maximum a Posteriori* -- genannt.)
>
> Bei der Berechnung wird angenommen, dass die betrachteten Merkmale
> (bedingt) unabhängig sind (dies geht in die obige Formel ein). Diese
> Annahme trifft aber oft nicht zu, deshalb auch der Name "*Naive* Bayes
> Klassifikation". Man berechnet in diesem Fall falsche Werte. Dennoch
> zeigt der Algorithmus in der Praxis sehr gute Ergebnisse.
>
> Durch den Einsatz der bedingten Wahrscheinlichkeiten in der
> Produktformel ergeben sich einige Schwierigkeiten:
>
> 1.  Wenn beim "Training" Ausprägungen fehlen, ist die bedingte
>     Wahrscheinlichkeit Null. Dadurch wird das gesamte Produkt Null.
>     Zur Abhilfe kann man den **Laplace-Schätzer** nutzen, der
>     (gesteuert über einen Parameter) gewissermaßen virtuelle
>     Trainingsbeispiele beisteuert.
> 2.  Durch das Produkt vieler kleiner Werte kann es schnell zu
>     *Floating Point*-Underflows kommen. Hier kann man einen Trick
>     nutzen: Man berechnet den Logarithmus der Produktformel. Dadurch
>     ändern sich zwar die absoluten Werte, die Reihenfolge der
>     Hypothesen bleibt aber erhalten. Da wir nur nach der Hypothese
>     suchen, die einen höheren Wert als die anderen hat, und nicht den
>     absoluten Wert an sich benötigen, kann man so vorgehen. Durch den
>     Logarithmus wird aus dem Produkt eine Summe, wo die kleinen Werte
>     der bedingten Wahrscheinlichkeiten nicht so starke Auswirkungen
>     haben wie im Produkt.
>
> Oft nimmt man zusätzlich an, dass für alle Hypothesen (Klassen) $h$
> der Prior $P(h)$ gleich ist. Dann kann man diesen Faktor ebenfalls aus
> der Berechnung entfernen. Dieses Verfahren nennt man auch "**Maximum
> Likelihood**".
>
> Der NB-Klassifikator wird gern für die Textklassifikation eingesetzt.
> Hier muss man einem Text ein Label zuordnen. In einer Vorverarbeitung
> wird zunächst eine Menge der relevanten Wörter über alle
> Trainingstexte gebildet (*Bag-of-Words*). Der Bag-of-Words entspricht
> einem Merkmalsvektor, wobei die Merkmale die einzelnen Wörter sind.
> Dann kann jeder Text der Trainingsmenge über so einen Merkmalsvektor
> dargestellt werden: Entweder man gibt pro Merkmal an, ob es da (1)
> oder nicht da (0) ist oder man zählt die Häufigkeit des Auftretens.
> Dann kann man mit dem NB-Klassifikator die bedingten
> Wahrscheinlichkeiten schätzen und einen neuen Text klassifizieren.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Naive Bayes Klassifikation](https://youtu.be/qfX4zp1i-Co)
>
> </details>

##### Medizinische Diagnostik mit NB

-   Bei Arthrose wird in 80 Prozent der Fälle ein steifes Gelenk
    beobachtet: $P(S \mid A) = 0.8$
-   Eine von 10.000 Personen hat Arthrose: $P(A) = 0.0001$
-   Eine von 10 Personen hat ein steifes Gelenk: $P(S) = 0.1$

=\> Ich habe ein steifes Gelenk. Habe ich Arthrose?

##### Textklassifikation mit NB

-   Mails, manuell markiert:
    -   D1: ("Sieben Zwerge fraßen sieben Ziegen", OK)
    -   D2: ("Sieben Ziegen traten sieben Wölfe", SPAM)
    -   D3: ("Sieben Wölfe fraßen sieben Böcke", OK)
    -   D4: ("Sieben Böcke traten sieben Zwerge", SPAM)

<!-- -->

-   Neue Mails:
    -   T1: ("Sieben Zwerge fraßen sieben Wölfe")
    -   T2: ("Sieben Zwerge traten sieben Ziegen")

Lernen Sie mit Hilfe der Trainingsmenge einen Naive-Bayes-Klassifikator
und wenden Sie diesen auf die beiden Test-Dokumente an.

##### Naive Bayes

-   Verallgemeinerte Bayes Regel
    $$P(H \mid D_1, \ldots, D_n) = \frac{P(D_1, \ldots, D_n \mid H)P(H)}{P(D_1, \ldots, D_n)}$$

-   Annahme: $D_i$ sind bedingt unabhängig
    $$P(D_1, \ldots, D_n \mid H) = P(D_1 \mid H) \cdot \ldots \cdot P(D_n \mid H) = \prod_i P(D_i \mid H)$$

-   Beobachtung: $P(D_1, \ldots, D_n)$ für alle Hypothesen $h \in H$
    gleich

<!-- -->

-   **Naive Bayes Klassifikator** bzw. **MAP** ("Maximum a Posteriori")
    $$h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h \mid D_1, \ldots, D_n)
    = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i \mid h)$$

    Naive Bayes: Wähle die plausibelste Hypothese, die von den Daten
    unterstützt wird.

##### Bayes'sches Lernen

$$h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h \mid D_1, \ldots, D_n)
= \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i \mid h)$$

**Training**: Bestimme die Wahrscheinlichkeiten aus Trainingsdaten
$\mathbf{S}$

-   Für jede Klasse $h$:
    -   Schätze $P(h) = \dfrac{\lvert S(h) \rvert}{\lvert S \rvert}$
    -   Für jedes Attribut $D_i$ und jede Ausprägung $x \in D_i$:
        Schätze
        $P(D_i=x \mid h) = \dfrac{\lvert S_{D_i}(x) \cap S(h) \rvert}{\lvert S(h) \rvert}$

**Klassifikation**: Wähle wahrscheinlichste Klasse $h_{MAP}$ für Vektor
$\mathbf{x}$

-   $h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{x \in \mathbf{x}} P(x \mid h)$

##### Beispiel Klassifikation mit NB

| Nase läuft | Husten | Gerötete Haut | Fieber | Klasse |
|------------|--------|---------------|--------|--------|
| 1          | 1      | 1             | 0      | krank  |
| 1          | 1      | 0             | 0      | krank  |
| 0          | 0      | 1             | 1      | krank  |
| 1          | 0      | 0             | 0      | gesund |
| 0          | 0      | 0             | 0      | gesund |

-   Eingabe: Person mit Husten und Fieber

Gesucht: $P(\text{krank})$, $P(\text{gesund})$,
$P(\text{Nase=0} \mid \text{krank})$,
$P(\text{Nase=0} \mid \text{gesund})$, ...

Wähle Klasse $$\begin{eqnarray}
h_{MAP} = \mathop{\text{argmax}}_{h \in \lbrace \text{gesund, krank} \rbrace} & P(h) \cdot P(\text{Nase=0} \mid h) \cdot P(\text{Husten=1} \mid h) \\
    & \cdot P(\text{Haut=0} \mid h) \cdot P(\text{Fieber=1} \mid h)
\end{eqnarray}$$

**Ergebnis**: (nur die für den zu klassifizierenden Beispiel-Vektor
nötigen Werte, die restlichen müssten aber auch beim "Training"
berechnet werden!)

    P(gesund) = 2/5 = 0.4
    P(krank)  = 3/5 = 0.6

    P(Nase=0 | gesund) = 1/2 = 0.5
    P(Nase=0 | krank)  = 1/3 = 0.333

    P(Husten=1 | gesund) = 0/2 = 0
    P(Husten=1 | krank)  = 2/3 = 0.667

    P(Haut=0 | gesund) = 2/2 = 1
    P(Haut=0 | krank)  = 1/3 = 0.333

    P(Fieber=1 | gesund) = 0/2 = 0
    P(Fieber=1 | krank)  = 1/3 = 0.333

    h = gesund: P(gesund) * P(Nase=0 | gesund) * P(Husten=1 | gesund) * P(Haut=0 | gesund) * P(Fieber=1 | gesund) = 0.4*0.5*0*1*0              = 0
    h = krank:  P(krank)  * P(Nase=0 | krank)  * P(Husten=1 | krank)  * P(Haut=0 | krank)  * P(Fieber=1 | krank)  = 0.6*0.333*0.667*0.33*0.333 = 0.015

=\> Klasse "krank" gewinnt (Wert für $P(\text{krank})$ ist der höchste
der beiden Hypothesen) ...

##### Textklassifikation mit NB

-   Texte als Trainingsmenge:
    -   Text zerlegen in Terme (Wörter, sonstige relevante Token)
    -   ggf. Entfernen von Stoppwörtern (beispielsweise Artikel u.ä.)
    -   ggf. Stemming und Lemmatisierung für restliche Terme
    -   ggf. weitere Vorverarbeitungsschritte (Groß-Klein-Schreibung,
        ...)
    -   Terme zusammenfassen als Menge: *"Bag of Words"* (mit
        Häufigkeit)

<!-- -->

-   Naive Bayes "trainieren":
    -   A-priori-Wahrscheinlichkeit der Klassen:
        $P(c) = \dfrac{N_c}{N} = \dfrac{\text{Anzahl Dokumente in Klasse c}}{\text{Anzahl Dokumente}}$

    <!-- -->

    -   Likelihood der Daten (Terme):
        -   $P(t \mid c) = \dfrac{\mathop{\text{count}}(t,c)}{\sum_{v \in V} \mathop{\text{count}}(v,c)}$
            mit $\mathop{\text{count}}(t,c)$ Anzahl der Vorkommen von
            Term $t$ in allen Dokumenten der Klasse $c$ und $V$ die
            Vereinigung aller Terme aller Dokumente (als Menge)

        <!-- -->

        -   Variante mit Laplace-Glättung (s.u.):
            $P(t \mid c) = \dfrac{\mathop{\text{count}}(t,c) + 1}{\sum_{v \in V} \mathop{\text{count}}(v,c) + \lvert V \rvert}$

##### Naivität im Naive Bayes

-   Unabhängigkeit der Attribute oft nicht gegeben

    =\> $P(D_1, \ldots, D_n \mid H) \ne \prod_i P(D_i \mid H)$

-   A-posteriori-Wahrscheinlichkeiten oft unrealistisch nah an 1 oder 0

<!-- -->

-   Praxis: Dennoch häufig sehr gute Ergebnisse

    Wichtig: Solange die **Maximierung** über alle Hypothesen die selben
    Ergebnisse liefert, müssen die konkreten Schätzungen/Werte nicht
    exakt stimmen ...

Wenn Attribute nicht (bedingt) unabhängig sind, kann sich der NB
verschätzen, d.h. es kommt dann u.U. zu einer höheren Fehlerrate, da
bestimmte Eigenschaften in der Trainingsmenge zu hoch gewichtet werden.

> [!TIP]
>
> ###### Beispiel
>
> ####### Gegebene Daten
>
> Seien die beiden Merkmale $x_1$ und $x_2$ mit den folgenden
> Verteilungen gegeben:
>
> -   Klassen: $H \in \lbrace 0, 1 \rbrace$, $P(H = 0) = P(H = 1) = 0.5$
> -   Bedingte Verteilungen $P(x_1, x_2 \mid H)$:
>     -   Für $H = 0$:
>         -   $P(x_1=0, x_2=0 \mid 0) = 0.30$
>         -   $P(x_1=0, x_2=1 \mid 0) = 0.35$
>         -   $P(x_1=1, x_2=0 \mid 0) = 0.15$
>         -   $P(x_1=1, x_2=1 \mid 0) = 0.20$
>     -   Für $H = 1$:
>         -   $P(x_1=0, x_2=0 \mid 1) = 0.00$
>         -   $P(x_1=0, x_2=1 \mid 1) = 0.30$
>         -   $P(x_1=1, x_2=0 \mid 1) = 0.65$
>         -   $P(x_1=1, x_2=1 \mid 1) = 0.05$
>
> ####### Analyse der gegebenen Daten
>
> Die Merkmale $x_1$ und $x_2$ sind *nicht* bedingt abhängig gegeben
> $H$.
>
> Erinnerung: Zwei Ereignisse $X$ und $Y$ sind bedingt unabhängig
> gegeben $Z$, wenn gilt
> $P(X,Y \mid Z) = P(X \mid Y,Z)P(Y \mid Z) = P(X \mid Z)P(Y \mid Z)$.
>
> Wir haben aber im Fall von $H=1$:
>
> -   $P(x_1=0, x_2=0 \mid 1) = 0.00$
>     vs. $P(x_1=0 \mid 1) P(x_2=0 \mid 1) = (0.00+0.30) * (0.00+0.65) = 0.30 * 0.65 = 0.195$
> -   $P(x_1=0, x_2=1 \mid 1) = 0.30$
>     vs. $P(x_1=0 \mid 1) P(x_2=1 \mid 1) = (0.00+0.30) * (0.30+0.05) = 0.30 * 0.35 = 0.105$
> -   $P(x_1=1, x_2=0 \mid 1) = 0.65$
>     vs. $P(x_1=1 \mid 1) P(x_2=0 \mid 1) = (0.65+0.05) * (0.00+0.65) = 0.70 * 0.65 = 0.455$
> -   $P(x_1=1, x_2=1 \mid 1) = 0.05$
>     vs. $P(x_1=1 \mid 1) P(x_2=1 \mid 1) = (0.65+0.05) * (0.30+0.05) = 0.70 * 0.35 = 0.245$
>
> (analog für $H=0$)
>
> Damit bekommen wir im Naive Bayes Klassifikator ein Problem. Dort wird
> von bedingt unabhängigen Merkmalen ausgegangen und deshalb die
> Vereinfachung von $P(x_1, x_2 \mid H)$ zu
> $P(x_1 \mid H) P(x_2 \mid H)$ vorgenommen. Da die Annahme nicht
> stimmt, werden die Merkmale falsch gewichtet und es kann zu
> Fehlklassifikationen kommen.
>
> ####### Klassifikation einer Beobachtung
>
> Wir machen nun die folgende Beobachtung: $X = (x_1=1, x_2=1)$.
>
> Die nötigen Marginalisierungen aus den Trainingsdaten für diese
> Beobachtung sind:
>
> -   Für $H = 0$: $P(x_1=1 \mid 0) = 0.15 + 0.20 = 0.35$,
>     $P(x_2=1 \mid 0) = 0.35 + 0.20 = 0.55$
> -   Für $H = 1$: $P(x_1=1 \mid 1) = 0.65 + 0.05 = 0.70$,
>     $P(x_2=1 \mid 1) = 0.30 + 0.05 = 0.35$
>
> Anwendung der Naive Bayes Klassifikation (mit Annahme bedingt
> unabhängige Merkmale): Wir nutzen
> $h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h \mid D_1, \ldots, D_n)
> = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i \mid h)$ und
> setzen unsere beiden Merkmale ein:
> $h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h \mid x_1, x_2)
> = \mathop{\text{argmax}}_{h \in H} \: P(h) P(x_1 \mid h) P(x_2 \mid h)$.
>
> Damit bekommen wir folgende Entscheidung:
>
> -   $H=0: 0.5 * 0.35 * 0.55 = 0.09625$
> -   $H=1: 0.5 * 0.70 * 0.35 = 0.1225$
> -   Entscheidung für Klasse $H=1$
>
> Da die Merkmale nicht unabhängig sind, darf die Produktannahme nicht
> verwendet werden, sondern wir müssten eigentlich den Term
> $P(x_1, x_2 \mid h)$ nutzen:
> $h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h \mid x_1, x_2)
> = \mathop{\text{argmax}}_{h \in H} \: P(h) P(x_1, x_2 \mid h)$.
>
> Aus den gegebenen Daten haben wir (einfach oben ablesen):
>
> -   $P(x_1=1, x_2=1 \mid 0) = 0.20$
> -   $P(x_1=1, x_2=1 \mid 1) = 0.05$
>
> Eingesetzt in die Formel
> $h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h \mid x_1, x_2)
> = \mathop{\text{argmax}}_{h \in H} \: P(h) P(x_1, x_2 \mid h)$:
>
> -   $H=0: 0.5 * 0.20 = 0.10$
> -   $H=1: 0.5 * 0.05 = 0.025$
> -   Entscheidung für Klasse $H=0$
>
> D.h. der Naive Bayes Klassifikator würde hier $H=1$ vorschlagen,
> während der korrekte Posterior für $H=0$ spricht.
>
> ####### Interpretation
>
> In diesem konstruierten Beispiel führt die Abhängigkeit der Merkmale
> zu einer Fehlkalibrierung der Posterior-Wahrscheinlichkeiten durch NB
> und damit zu einer falschen Klassifikation. In der Realität erweist
> sich der NB trotzdem relativ robust gegenüber der Abhängigkeit von
> Merkmalen: Durch die Korrelation kommen häufig
> A-posteriori-Wahrscheinlichkeiten nahe 0 oder nahe 1 heraus, aber da
> es nur auf das Maximum und nicht auf den konkreten Wert ankommt,
> erhält man häufig trotzdem noch eine korrekte Klassifikation.

##### Laplace-Schätzer

-   Problem: Attribut-Ausprägung für bestimmte Klasse nicht in
    Trainingsmenge:
    -   =\> Bedingte Wahrscheinlichkeit ist 0
    -   =\> Produkt gleich 0

<!-- -->

-   Lösung: "Laplace-Schätzer" (auch "Laplace-Glättung")

    Statt
    $P(D_i=x \mid h) = \dfrac{\lvert S_{D_i}(x) \cap S(h) \rvert}{\lvert S(h) \rvert}$

    nutze
    $P(D_i=x \mid h) = \dfrac{\lvert S_{D_i}(x) \cap S(h) \rvert + m \cdot p_i}{\lvert S(h) \rvert + m}$

    -   mit $m$: frei wählbarer Faktor, und

    -   $p_i$: A-priori-Wahrscheinlichkeit für $P(D_i=x \mid h)$

        Hintergrundwissen oder einfach *uniforme Verteilung der
        Attributwerte*: $p_i = 1/\lvert D_i \rvert$ (Wahrscheinlichkeit
        für eine Attributausprägung ist 1/(Anzahl der Ausprägungen des
        Attributs))

    =\> "virtuelle" Trainingsbeispiele ($m$ ist die Zahl der virtuellen
    Trainingsbeispiele)

##### Probleme mit Floating Point Underflow

-   MAP berechnet Produkt mit vielen Termen
-   Problem: Bei kleinen Zahlen kann **Floating Point Underflow**
    auftreten!

<!-- -->

-   Lösung: Logarithmus maximieren (Produkt geht in Summe über)

    Erinnerung: $\log(x \cdot y) = \log(x) + \log(y)$ und Logarithmus
    streng monoton

    $$\begin{eqnarray}
    h_{MAP} &=& \mathop{\text{argmax}}_{h \in H} \: P(h \mid D_1, \ldots, D_n) \\[5pt]
            &=& \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i \mid h) \\[5pt]
            &=& \mathop{\text{argmax}}_{h \in H} \: [\log(P(h)) + \sum_i \log(P(D_i \mid h))]
    \end{eqnarray}$$

##### Maximum Likelihood

-   **Maximum a Posteriori**
    $$h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h \mid D_1, \ldots, D_n)
    = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i \mid h)$$

<!-- -->

-   Annahme: Klassen uniform verteilt =\> $P(h_i) = P(h_j)$

    **Maximum Likelihood**
    $$h_{ML} = \mathop{\text{argmax}}_{h \in H} \: \prod_i P(D_i \mid h)$$

    =\> Maximiere die Likelihood der Daten

##### Ausblick: Kontinuierliche Attribute

Bisher sind wir von diskreten Attributen ausgegangen. Bei
kontinuierlichen Attributen hat man zwei Möglichkeiten:

-   Diskretisierung der Attribute: Aufteilung in Intervalle und
    Bezeichnung der Intervalle mit einem Namen
-   Einsatz einer Verteilungsannahme und deren Dichtefunktion,
    beispielsweise Annahme von **normalverteilten** Daten mit der
    Dichtefunktion
    $$f(x) = \frac{1}{\sqrt{2 \pi \sigma}} e^{- \frac{(x - \mu)^2}{2 \sigma^2}}$$
    wobei $\mu$ der Mittelwert und $\sigma^2$ die Varianz der Daten
    sind.

##### Hinweis zum Sprachgebrauch

In Abhängigkeit von der Verteilung der $P(D_i \mid h)$ spricht man von

-   "multinominalem" NB: Attribute umfassen mehrere Kategorien
    (verschiedene Ausprägungen, wie im "Wahlkampf"-Beispiel: Attribut
    "Bildung" hat die Ausprägungen "Abitur", "Bachelor" und "Master")
-   Bernoulli NB: Attribute sind binär (Ausprägung 0 oder 1),
    typischerweise bei der Textklassifikation
-   Gauss'sches NB: Annahme einer Normalverteilung der
    Attribut-Ausprägungen

##### Wrap-Up

-   Klassifikation mit Naive Bayes
    -   Annahme von Unabhängigkeit =\> "Naive" Bayes Klassifikation
    -   Schätzen der bedingten Wahrscheinlichkeiten aus den
        Trainingsdaten
    -   Klassifikation durch Nutzung der geschätzten
        Wahrscheinlichkeiten
    -   Hinweis auf Naivität der Annahme, dennoch sehr gute Erfolge in
        Praxis
    -   Hinweis auf Probleme mit niedrigen Wahrscheinlichkeiten

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
> Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte den
> Abschnitt 12.6 "Naive Bayes Models". Darüber hinaus ist Abschnitt
> "8.10 Der Naive Bayes Klassifikator" ([Ertel 2025](#ref-Ertel2025))
> sehr empfehlenswert.
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Unabhängigkeits-Annahme in der 'Naive' Bayes
>     Klassifikation erklären
> -   k2: Ich kann die Probleme mit niedrigen Wahrscheinlichkeiten
>     erklären
> -   k3: Ich kann die bedingten Wahrscheinlichkeiten aus konkreten
>     Trainingsdaten schätzen
> -   k3: Ich kann die Klassifikation mit Naive Bayes durch Nutzung der
>     geschätzten Wahrscheinlichkeiten durchführen
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Naive Bayes Klassifikation
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106588&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Spam-Mails**
>
> Stellen Sie sich vor, Sie haben eine Sammlung von 100 E-Mails (60
> Spam, 40 Nicht-Spam). Sie wissen, dass das Wort "Gewinn" in 45
> Spam-E-Mails und in 5 Nicht-Spam-E-Mails vorkommt.
>
> 1.  Berechnen Sie die Wahrscheinlichkeit, dass es eine E-Mail Spam
>     ist, wenn das Wort "Gewinn" darin vorkommt.
>
> 2.  Wie würde die E-Mail mit dem Wort "Gewinn" durch einen Naive Bayes
>     Klassifikator bewertet?
>
> **Textklassifikation**
>
> Betrachten Sie die folgenden Aussagen:
>
> > -   Patient A hat weder Husten noch Fieber und ist gesund.
> > -   Patient B hat Husten, aber kein Fieber und ist gesund.
> > -   Patient C hat keinen Husten, aber Fieber. Er ist krank.
> > -   Patient D hat Husten und kein Fieber und ist krank.
> > -   Patient E hat Husten und Fieber. Er ist krank.
>
> Aufgaben:
>
> 1.  Trainieren Sie auf diesem Datensatz einen Klassifikator mit NB.
> 2.  Ist Patient F krank? Er hat Husten, aber kein Fieber.
>
> </details>

<a id="id-6e322bc628d8ff7a4faa38fa42a09770217ab4fb"></a>

#### NB: Text-Klassifikation mit Naive Bayes

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Der NB-Klassifikator wird gern für die Textklassifikation eingesetzt.
> Hier muss man einem Text ein Label zuordnen.
>
> In einer Vorverarbeitung wird zunächst eine Menge der relevanten
> Wörter über alle Trainingstexte gebildet (*Bag-of-Words*). Der
> Bag-of-Words entspricht einem Merkmalsvektor, wobei die Merkmale die
> einzelnen Wörter sind. Dann kann jeder Text der Trainingsmenge über so
> einen Merkmalsvektor dargestellt werden: Entweder man gibt pro Merkmal
> an, ob es da (1) oder nicht da (0) ist (Variante Bernoulli NB) oder
> man zählt die Häufigkeit des Auftretens der Merkmale (Variante
> Multinomial NB). Dann kann man mit dem NB-Klassifikator die bedingten
> Wahrscheinlichkeiten schätzen und einen neuen Text klassifizieren.
>
> Bei beiden Varianten hat man das Problem mit Termen, die für eine
> Klasse im Training nicht vorkommen (Zero-Frequency-Problem). Dabei
> werden die geschätzten Wahrscheinlichkeiten zu 0, wodurch bei der
> Verwendung in der Klassifikation entsprechend die Scores ebenfalls zu
> 0 berechnen und eine sinnvolle Klassifikation nicht möglich ist.
> Diesem Problem kann man durch die Laplace-Glättung begegnen, welche
> wie künstliche Trainingsdaten wirkt.
>
> Wenn im zu klassifizierenden Testdatensatz Wörter vorkommen, die nicht
> beim Training vorhanden waren, spricht man auch vom
> "Out-of-Vocabulary"-Problem. Am einfachsten lässt sich dieses Problem
> lösen, indem man bereits beim Training einen "UNK"-Term trainiert (UNK
> steht für "unknown"). Bei der Klassifikation werden OOV-Terme einfach
> auf den UNK-Term abgebildet und die dafür berechneten
> Wahrscheinlichkeiten genutzt.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Text-Klassifikation mit Naive
>     Bayes](https://youtu.be/Gkg-SGnl9nY)
>
> </details>

##### Textklassifikation mit NB

-   Trainingsdaten: Mails, manuell markiert:
    -   D1: ("Die sieben Zwerge fraßen die sieben Ziegen", OK)
    -   D2: ("Die sieben Ziegen traten die sieben Wölfe", SPAM)
    -   D3: ("Die sieben Wölfe fraßen die sieben Böcke", OK)
    -   D4: ("Die sieben Böcke traten die sieben Zwerge", OK)

<!-- -->

-   Testdaten (neue Mails):
    -   T1: ("Die sieben Zwerge fraßen die sieben Wölfe")

Lernen Sie mit Hilfe der Trainingsmenge einen Naive-Bayes-Klassifikator
und wenden Sie diesen auf die Test-Dokumente an.

##### Vorverarbeitung

-   Vereinheitlichung: Kleinbuchstaben

-   **Tokenisierung**: Aufteilung auf einzelne Wörter

    Manchmal gar nicht so einfach: Wie viele Wörter sind "aren't"?

-   **Stop Words** entfernen: "der", "die", "das", ...

    Artikel und Füllwörter enthalten oft keine wirkliche Information für
    die Klassifikationsaufgabe und werden deshalb entfernt.

    Dabei am besten auch Zeichensetzung mit entfernen.

-   **Lemmatisierung**: "fraßen" -\> "fressen", "Wölfe" -\> "Wolf", ...

    Die Wörter werden auf ihre "Grundform" gebracht: gebeugte Verben
    durch den Infinitiv ersetzt oder Plurale durch den Singular ersetzt
    etc. Erfolgt häufig mit Hilfe von Wörterbüchern.

-   **Synonyme, Homonyme, Akronyme** ersetzen

    Synonyme: Verschiedene Wörter mit selber/ähnlicher Bedeutung:
    "Fahrstuhl", "Lift"

    Homonyme: Wort mit unterschiedlicher Bedeutung: "Bank"
    (Sitzgelegenheit, Geldinstitut)

    Akronyme: Abkürzungen: "SPO"

-   **Stemming**

    Wörter auf ihre "Grundform" zurückbringen durch Abschneiden: Aus
    "closed" oder "closing" würde "clos" als gemeinsame Form. Eine etwas
    krude Variante der Lemmatisierung.

-   **Terme**: Die erhaltenen Wörter nennen wir "Terme".

##### Merkmalsvektor: Bag of Words

Nach Vorverarbeitung:

-   Trainingsdaten (**Terme**):
    -   D1: (sieben, zwerg, fressen, sieben, ziege; OK)
    -   D2: (sieben, ziege, treten, sieben, wolf; SPAM)
    -   D3: (sieben, wolf, fressen, sieben, bock; OK)
    -   D4: (sieben, bock, treten, sieben, zwerg; OK)
-   Testdaten (**Terme**):
    -   T1: (sieben, zwerg, fressen, sieben, wolf)

**Vokabular**: V = {sieben, zwerg, fressen, ziege, treten, wolf, bock}

**Bag of Words**: Merkmalsvektor mit fester Anordnung des Vokabulars

##### Bag of Words für Trainingsdaten

|     | sieben | zwerg | fressen | ziege | treten | wolf | bock | Klasse |
|:----|:-------|:------|:--------|:------|:-------|:-----|:-----|:-------|
| D1  | 2      | 1     | 1       | 1     | 0      | 0    | 0    | OK     |
| D2  | 2      | 0     | 0       | 1     | 1      | 1    | 0    | SPAM   |
| D3  | 2      | 0     | 1       | 0     | 0      | 1    | 1    | OK     |
| D4  | 2      | 1     | 0       | 0     | 1      | 0    | 1    | OK     |

Im *Bag of Words* (BoW) bekommt jeder Term des Vokabulars einen festen
Platz. Die Trainingsdaten und die Testdaten können nun mit Hilfe dieses
Vektors dargestellt werden, indem für jeder Term im BoW die Anzahl der
Vorkommen im Trainings- oder Testvektor gezählt wird ("*Multinomial
NB*").

Es gibt auch die einfachere Form, die lediglich das Vorkommen vermerkt,
also mit 0 und 1 arbeitet und nicht durchzählt ("*Bernoulli NB*", s.u.).

##### Naive Bayes Training (Multinomial NB)

Bei Multinomial NB zählen wir die Häufigkeiten der Vorkommen der
einzelnen Terme in den einzelnen Dokumenten der jeweiligen Klasse.

Nachfolgend sind die entsprechenden Häufigkeiten im Trainingsdatensatz
zusammengefasst dargestellt.

| Klasse | sieben | zwerg | fressen | ziege | treten | wolf | bock | Anzahl Wörter | Anzahl Dokumente |
|:------|:------|:-----|:------|:-----|:------|:-----|:-----|:----------|:-----------|
| OK     | 6      | 2     | 2       | 1     | 1      | 1    | 2    | 15            | 3                |
| SPAM   | 2      | 0     | 0       | 1     | 1      | 1    | 0    | 5             | 1                |

Für die Terme ist jeweils die Gesamt-Anzahl des Vorkommens des Terms in
den Dokumenten der jeweiligen Klasse angegeben.

Naive Bayes "trainieren"

-   A-priori-Wahrscheinlichkeit der Klassen:
    $P(c) = \dfrac{N_c}{N} = \dfrac{\text{Anzahl Dokumente in Klasse c}}{\text{Anzahl Dokumente}}$

-   Likelihood der Daten (Terme):
    $P(t \mid c) = \dfrac{\mathop{\text{count}}(t,c)}{\sum_{v \in V} \mathop{\text{count}}(v,c)}$
    mit $\mathop{\text{count}}(t,c)$ Anzahl der Vorkommen von Term $t$
    in allen Dokumenten der Klasse $c$ und $V$ die Vereinigung aller
    Terme aller Dokumente (Vokabular)

<!-- -->

-   A-priori-Wahrscheinlichkeit:
    -   $P(\text{OK}) = 3/4 = 0.75$
    -   $P(\text{SPAM}) = 1/4 = 0.25$
-   Likelihood:
    -   $P(\text{sieben} \mid \text{OK})$
        $= (2+2+2)/(2+2+2+1+1+1+1+1+1+1+1+1)$ $= 6/15 = 0.40$
    -   $P(\text{sieben} \mid \text{SPAM})$
        $= (2)/(2+1+1+1) = 2/5 = 0.40$
    -   $P(\text{zwerg} \mid \text{OK}) = 2/15 = 0.133$
    -   $P(\text{zwerg} \mid \text{SPAM}) = 0/5 = 0.00$
    -   $P(\text{fressen} \mid \text{OK}) = 2/15 = 0.133$
    -   $P(\text{fressen} \mid \text{SPAM}) = 0/5 = 0.00$
    -   $P(\text{ziege} \mid \text{OK}) = 1/15 = 0.067$
    -   $P(\text{ziege} \mid \text{SPAM}) = 1/5 = 0.20$
    -   $P(\text{treten} \mid \text{OK}) = 1/15 = 0.067$
    -   $P(\text{treten} \mid \text{SPAM}) = 1/5 = 0.20$
    -   $P(\text{wolf} \mid \text{OK}) = 1/15 = 0.067$
    -   $P(\text{wolf} \mid \text{SPAM}) = 1/5 = 0.20$
    -   $P(\text{bock} \mid \text{OK}) = 2/15 = 0.133$
    -   $P(\text{bock} \mid \text{SPAM}) = 0/5 = 0.00$

##### Naive Bayes Klassifikation (Multinomial NB)

$h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{x \in \mathbf{x}} P(x \mid h)$

Jedes Vorkommen eines Wortes im Testdatensatz ist ein $x$!

$$h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{w \in \mathbf{V}:\,\mathop{\text{count}}(w)>0} P(w \mid h)^{\mathop{\text{count}}(w)}$$

T1: (sieben, zwerg, fressen, sieben, wolf)

-   **h = OK**:
    $P(\text{OK}) \cdot P(\text{sieben} \mid \text{OK})^2 \cdot P(\text{zwerg} \mid \text{OK})^1 \cdot P(\text{fressen} \mid \text{OK})^1 \cdot P(\text{ziege} \mid \text{OK})^0 \cdot P(\text{treten} \mid \text{OK})^0 \cdot P(\text{wolf} \mid \text{OK})^1 \cdot P(\text{bock} \mid \text{OK})^0$
    $= 0.75*0.40*0.40*0.133*0.133*1*1*0.067*1 = 0.00014221956$

-   **h = SPAM**:
    $P(\text{SPAM}) \cdot P(\text{sieben} \mid \text{SPAM})^2 \cdot P(\text{zwerg} \mid \text{SPAM})^1 \cdot P(\text{fressen} \mid \text{SPAM})^1 \cdot P(\text{ziege} \mid \text{SPAM})^0 \cdot P(\text{treten} \mid \text{SPAM})^0 \cdot P(\text{wolf} \mid \text{SPAM})^1 \cdot P(\text{bock} \mid \text{SPAM})^0$
    $= 0.25*0.40*0.40*0.00*0.00*1*1*0.20*1 = 0.00$

Entscheidung: OK

> [!TIP]
>
> **Hinweis**: $P(w \mid h)^{\mathop{\text{count}}(w)}$ muss so gelesen
> werden:
>
> -   Wenn ein Term $w$ ein- oder mehrfach im Testvektor vorkommt, wird
>     die zugehörige Likelihood entsprechend ein- bzw. mehrfach
>     multipliziert.
> -   Wenn ein Term $w$ nicht im Testvektor vorhanden ist
>     ($\mathop{\text{count}}(w) = 0$), verschwindet die Likelihood und
>     es wird automatisch ein Faktor 1 aufmultipliziert. Alternativ
>     lässt man alle Terme mit $\mathop{\text{count}}(w) = 0$ einfach in
>     der Formel weg.
>
> Nur tatsächlich vorhandene Terme im Testvektor
> ($\mathop{\text{count}}(w) > 0$) zahlen in das Ergebnis ein.
>
> Wenn die Likelihood eines Terms 0 ist (Zero-Frequency-Problem), dann
> wird der gesamte Ausdruck zu 0. Durch die beschriebene Lesart von
> $P(w \mid h)^{\mathop{\text{count}}(w)}$ ergibt sich dann bei
> $\mathop{\text{count}}(w) = 0$ auch kein $0^0$-Problem, weil die
> Likelihood gar nicht erst ausgewertet wird bzw. automatisch mit 1
> ersetzt wurde. Dies ist eine Art Implementierungsdetail (rein
> mathematisch lässt sich das so nicht ablesen)!

**Beobachtungen**:

1.  Viele kleine Faktoren ergeben ein immer kleineres Produkt =\>
    Logarithmus nutzen und Übergang zu Summe statt Produkt!
2.  Im Trainingsdatensatz nicht vorhandene Terme bei einer Klasse führen
    zu einem Faktor 0 (Zero-Frequency-Problem), wodurch der gesamte
    Score 0 wird. =\> Laplace-Glättung einsetzen!
3.  Im Testdatensatz nicht vorhandene Terme des Vokabulars werden
    automatisch ignoriert, da der *count* 0 ist und als Exponent
    verwendet den neutralen Faktor 1 ergibt.

##### Naive Bayes mit Laplace-Glättung (Multinomial NB)

$$P(t \mid c) = \dfrac{\mathop{\text{count}}(t,c) + \alpha}{\sum_{v \in V} \mathop{\text{count}}(v,c) + \alpha \cdot \lvert V \rvert},
\quad \text{ bei Laplace: } \alpha = 1$$

-   A-priori-Wahrscheinlichkeit:
    -   $P(\text{OK}) = 3/4 = 0.75$
    -   $P(\text{SPAM}) = 1/4 = 0.25$
-   Likelihood:
    -   $P(\text{sieben} \mid \text{OK})$
        $= (2+2+2+\mathbf{1})/(2+2+2+1+1+1+1+1+1+1+1+1+\mathbf{7})$
        $= 7/22 = 0.318$ (vorher: 0.40)
    -   $P(\text{sieben} \mid \text{SPAM})$
        $= (2+\mathbf{1})/(2+1+1+1+\mathbf{7})$ $= 3/12 = 0.25$ (vorher:
        0.40)
    -   $P(\text{zwerg} \mid \text{OK}) = (2+\mathbf{1})/(15+\mathbf{7}) = 0.136$
        (vorher: 0.133)
    -   $P(\text{zwerg} \mid \text{SPAM}) = (0+\mathbf{1})/(5+\mathbf{7}) = 0.083$
        (vorher: **0.00**)
    -   $P(\text{fressen} \mid \text{OK}) = (2+\mathbf{1})/(15+\mathbf{7}) = 0.136$
        (vorher: 0.133)
    -   $P(\text{fressen} \mid \text{SPAM}) = (0+\mathbf{1})/(5+\mathbf{7}) = 0.083$
        (vorher: **0.00**)
    -   $P(\text{ziege} \mid \text{OK}) = (1+\mathbf{1})/(15+\mathbf{7}) = 0.091$
        (vorher: 0.067)
    -   $P(\text{ziege} \mid \text{SPAM}) = (1+\mathbf{1})/(5+\mathbf{7}) = 0.167$
        (vorher: 0.20)
    -   $P(\text{treten} \mid \text{OK}) = (1+\mathbf{1})/(15+\mathbf{7}) = 0.091$
        (vorher: 0.067)
    -   $P(\text{treten} \mid \text{SPAM}) = (1+\mathbf{1})/(5+\mathbf{7}) = 0.167$
        (vorher: 0.20)
    -   $P(\text{wolf} \mid \text{OK}) = (1+\mathbf{1})/(15+\mathbf{7}) = 0.091$
        (vorher: 0.067)
    -   $P(\text{wolf} \mid \text{SPAM}) = (1+\mathbf{1})/(5+\mathbf{7}) = 0.167$
        (vorher: 0.20)
    -   $P(\text{bock} \mid \text{OK}) = (2+\mathbf{1})/(15+\mathbf{7}) = 0.136$
        (vorher: 0.133)
    -   $P(\text{bock} \mid \text{SPAM}) = (0+\mathbf{1})/(5+\mathbf{7}) = 0.083$
        (vorher: **0.00**)

T1: (sieben, zwerg, fressen, sieben, wolf)

-   **h = OK**:
    $P(\text{OK}) \cdot P(\text{sieben} \mid \text{OK})^2 \cdot P(\text{zwerg} \mid \text{OK})^1 \cdot P(\text{fressen} \mid \text{OK})^1 \cdot P(\text{ziege} \mid \text{OK})^0 \cdot P(\text{treten} \mid \text{OK})^0 \cdot P(\text{wolf} \mid \text{OK})^1 \cdot P(\text{bock} \mid \text{OK})^0$
    $= 0.75*0.318*0.318*0.136*0.136*1*1*0.091*1 = 0.0001276540836$
    (vorher: 0.00014221956)

-   **h = SPAM**:
    $P(\text{SPAM}) \cdot P(\text{sieben} \mid \text{SPAM})^2 \cdot P(\text{zwerg} \mid \text{SPAM})^1 \cdot P(\text{fressen} \mid \text{SPAM})^1 \cdot P(\text{ziege} \mid \text{SPAM})^0 \cdot P(\text{treten} \mid \text{SPAM})^0 \cdot P(\text{wolf} \mid \text{SPAM})^1 \cdot P(\text{bock} \mid \text{SPAM})^0$
    $= 0.25*0.25*0.25*0.083*0.083*1*1*0.167*1 = 0.00001797598438$
    (vorher: **0.00**)

Entscheidung: OK

**Beobachtungen**:

Laplace-Glättung führt zu leicht veränderten Schätzungen, die Berechnung
der Scores erscheint aber plausibler (keine Probleme durch
Zero-Frequency-Terme im Training mehr).

##### Naive Bayes mit Out-of-Vocabulary-Termen (OOV, Multinomial NB)

Was passiert, wenn bei der Klassifikation eines Testvektors Wörter
vorkommen, die es beim Training nicht gab?

T1: (sieben, zwerg, fressen, sieben, wolf, **lecker**)

-   **h = OK**:
    $P(\text{OK}) \cdot P(\text{sieben} \mid \text{OK})^2 \cdot P(\text{zwerg} \mid \text{OK})^1 \cdot P(\text{fressen} \mid \text{OK})^1 \cdot P(\text{ziege} \mid \text{OK})^0 \cdot P(\text{treten} \mid \text{OK})^0 \cdot P(\text{wolf} \mid \text{OK})^1 \cdot P(\text{bock} \mid \text{OK})^0$
    $\cdot \mathbf{P(\text{lecker} \mid \text{OK})^1}$

-   **h = SPAM**:
    $P(\text{SPAM}) \cdot P(\text{sieben} \mid \text{SPAM})^2 \cdot P(\text{zwerg} \mid \text{SPAM})^1 \cdot P(\text{fressen} \mid \text{SPAM})^1 \cdot P(\text{ziege} \mid \text{SPAM})^0 \cdot P(\text{treten} \mid \text{SPAM})^0 \cdot P(\text{wolf} \mid \text{SPAM})^1 \cdot P(\text{bock} \mid \text{SPAM})^0$
    $\cdot \mathbf{P(\text{lecker} \mid \text{SPAM})^1}$

$\mathbf{P(\text{lecker} \mid \text{OK})}$ und
$\mathbf{P(\text{lecker} \mid \text{SPAM})}$ sind **unbekannt**!

**Möglichkeiten**:

1.  Da im Training nicht vorgekommen: 0 als Wert für
    $P(\text{lecker} \mid c)$ annehmen
2.  Term ignorieren
3.  Ad-hoc Laplace einführen
4.  Mit UNK-Term arbeiten im Training/Klassifikation

Wenn wir während der Klassifikation mit einem Term konfrontiert werden,
der beim Training nicht aufgetaucht ist, bekommen wir ein Problem.
Potentiell sind die vier oben dargestellten Möglichkeiten als Lösung
denkbar. Diese haben aber unterschiedliche Auswirkungen:

-   Problem bei (1): Sämtliche Scores werden zu 0, d.h. wir können uns
    nicht entscheiden.
-   Problem bei (2): Der Term wurde durch die Vorverarbeitung nicht
    entfernt, d.h. er trägt höchstwahrscheinliche eine Bedeutung. Ihn
    einfach zu ignorieren würde bedeuten, dass wir diese Information
    wegwerfen und möglicherweise eine Fehlklassifikation durchführen.
-   Problem bei (3): In sämtlichen Likelihoods steckt die Größe des
    Vokabulars drin - wir müssten also während der Klassifikation ad hoc
    alle Likelihoods neu berechnen!
-   Variante (4) ist dagegen relativ elegant ...

##### Naive Bayes mit UNK-Term (OOV, Multinomial NB)

**Training**

Wir führen einen zusätzlichen Term **UNK** ("unknown") ein und führen
das Training damit durch.

**Achtung**: Das Vokabular wird dadurch um einen Eintrag größer - alle
Likelihoods müssen entsprechend angepasst werden!

| Klasse | sieben | zwerg | fressen | ziege | treten | wolf | bock | UNK | Anzahl Wörter | Anzahl Dokumente |
|:-----|:-----|:-----|:------|:-----|:-----|:----|:----|:----|:---------|:-----------|
| OK | 6 | 2 | 2 | 1 | 1 | 1 | 2 | 0 | 15 | 3 |
| SPAM | 2 | 0 | 0 | 1 | 1 | 1 | 0 | 0 | 5 | 1 |

-   A-priori-Wahrscheinlichkeit:
    -   $P(\text{OK}) = 3/4 = 0.75$
    -   $P(\text{SPAM}) = 1/4 = 0.25$
-   Likelihood:
    -   $P(\text{sieben} \mid \text{OK})$
        $= (2+2+2+1)/(2+2+2+1+1+1+1+1+1+1+1+1+\mathbf{8})$
        $= 7/23 = 0.304$ (vorher: 0.318)
    -   $P(\text{sieben} \mid \text{SPAM})$
        $= (2+1)/(2+1+1+1+\mathbf{8})$ $= 3/13 = 0.231$ (vorher: 0.25)
    -   ...
    -   $P(\text{UNK} \mid \text{OK}) = (0+1)/(15+\mathbf{8}) = 0.043$
    -   $P(\text{UNK} \mid \text{SPAM}) = (0+1)/(5+\mathbf{8}) = 0.077$

**Klassifikation**

Unbekannte Terme werden auf **UNK** gemappt. Dabei für die Exponenten
wieder die Anzahl beachten!

T1: (sieben, zwerg, fressen, sieben, wolf, **lecker**)

-   **h = OK**:
    $P(\text{OK}) \cdot P(\text{sieben} \mid \text{OK})^2 \cdot P(\text{zwerg} \mid \text{OK})^1 \cdot P(\text{fressen} \mid \text{OK})^1 \cdot P(\text{ziege} \mid \text{OK})^0 \cdot P(\text{treten} \mid \text{OK})^0 \cdot P(\text{wolf} \mid \text{OK})^1 \cdot P(\text{bock} \mid \text{OK})^0$
    $\cdot \mathbf{P(\text{lecker} \mid \text{OK})^1}$

-   **h = SPAM**:
    $P(\text{SPAM}) \cdot P(\text{sieben} \mid \text{SPAM})^2 \cdot P(\text{zwerg} \mid \text{SPAM})^1 \cdot P(\text{fressen} \mid \text{SPAM})^1 \cdot P(\text{ziege} \mid \text{SPAM})^0 \cdot P(\text{treten} \mid \text{SPAM})^0 \cdot P(\text{wolf} \mid \text{SPAM})^1 \cdot P(\text{bock} \mid \text{SPAM})^0$
    $\cdot \mathbf{P(\text{lecker} \mid \text{SPAM})^1}$

**Mapping**:

-   $P(\text{lecker} \mid \text{OK})$ =\>
    $P(\text{UNK} \mid \text{OK}) = 0.043$
-   $P(\text{lecker} \mid \text{SPAM})$ =\>
    $P(\text{UNK} \mid \text{SPAM}) = 0.077$

Mit dem UNK-Term kann man das Problem des Out-of-Vocabulary elegant
lösen. Im Training berechnet man die Likelihood für diesen Term normal
mit. In der Klassifikation werden Terme in den Daten, die nicht im
Vokabular sind, auf diesen UNK-Term gemappt und dessen Likelihood
entsprechend verwendet.

Erweiterung: Der Bag-of-Words-Ansatz führt sehr schnell zu riesigen
Vektoren, die nur dünn besetzt sind. Um diesem Problem ein wenig
entgegen zu wirken, führt man häufig bereits beim Training eine Schwelle
für die Häufigkeit der Terme der Trainingsmenge ein: Terme, die in ihrer
Häufigkeit über der Schwelle liegen, werden normal für die Schätzung
verwendet. Terme, die in ihrer Häufigkeit unter der Schwelle liegen,
werden auf den UNK-Term abgebildet und dort mitgezählt. Hier macht man
sich das [Zipf'sche Gesetz](https://en.wikipedia.org/wiki/Zipf%27s_law)
zunutze: Wenige Wörter kommen viel häufiger vor als andere, und die
anderen Wörter sind sehr selten - wobei man sich durchaus darüber
streiten kann, ob die seltenen Wörter eher eine Art Rauschen darstellen
oder vielleicht gerade durch ihre Seltenheit mit zur Trennschärfe
beitragen können.

##### Naive Bayes Training (Bernoulli NB, mit Laplace)

Bei Bernoulli NB prüfen wir das Vorkommen der einzelnen Terme. Der
Merkmalsraum ist also binär - 0 oder 1.

Im Grunde haben wir hier die selben Varianten wie bei Multinomial NB -
ich zeige hier nachfolgend nur die Kombination von Bernoulli NB und
Laplace-Glättung. Für "ohne" Laplace kann man einfach das $\alpha = 0$
setzen. Analog zu der Multinomial NB Variante kann man auch bei
Bernoulli NB mit UNK-Termen arbeiten.

|     | sieben | zwerg | fressen | ziege | treten | wolf | bock | Klasse |
|:----|:-------|:------|:--------|:------|:-------|:-----|:-----|:-------|
| D1  | 1      | 1     | 1       | 1     | 0      | 0    | 0    | OK     |
| D2  | 1      | 0     | 0       | 1     | 1      | 1    | 0    | SPAM   |
| D3  | 1      | 0     | 1       | 0     | 0      | 1    | 1    | OK     |
| D4  | 1      | 1     | 0       | 0     | 1      | 0    | 1    | OK     |

Zusammengefasst ergibt sich damit pro Klasse:

| Klasse | sieben | zwerg | fressen | ziege | treten | wolf | bock | Anzahl Dokumente |
|:-------|:-------|:------|:--------|:------|:-------|:-----|:-----|:-----------------|
| OK     | 3      | 2     | 2       | 1     | 1      | 1    | 2    | 3                |
| SPAM   | 1      | 0     | 0       | 1     | 1      | 1    | 0    | 1                |

Für die Terme ist jeweils die Gesamt-Anzahl der Dokumente mit dem Term
und der jeweiligen Klasse angegeben.

Naive Bayes "trainieren"

-   A-priori-Wahrscheinlichkeit der Klassen:
    $P(c) = \dfrac{N_c}{N} = \dfrac{\text{Anzahl Dokumente in Klasse c}}{\text{Anzahl Dokumente}}$

-   Likelihood der Daten (Terme):

    -   $P(t=1 \mid c) = \dfrac{\text{Anzahl Dokumente in Klasse c mit Term t} + \alpha}{\text{Anzahl Dokumente in Klasse c} + 2 \cdot \alpha}$
    -   $P(t=0 \mid c) = 1 - P(t=1 \mid c)$

<!-- -->

-   A-priori-Wahrscheinlichkeit:
    -   $P(\text{OK}) = 3/4 = 0.75$
    -   $P(\text{SPAM}) = 1/4 = 0.25$
-   Likelihood $\alpha = 1$:
    -   $P(\text{sieben}=1 \mid \text{OK}) = (3+1)/(3+2) = 4/5 = 0.80$
    -   $P(\text{sieben}=1 \mid \text{SPAM}) = (1+1)/(1+2) = 2/3 = 0.667$
    -   $P(\text{zwerg}=1 \mid \text{OK}) = 3/5 = 0.60$
    -   $P(\text{zwerg}=1 \mid \text{SPAM}) = 1/3 = 0.333$
    -   $P(\text{fressen}=1 \mid \text{OK}) = 3/5 = 0.60$
    -   $P(\text{fressen}=1 \mid \text{SPAM}) = 1/3 = 0.333$
    -   $P(\text{ziege}=1 \mid \text{OK}) = 2/5 = 0.40$
    -   $P(\text{ziege}=1 \mid \text{SPAM}) = 2/3 = 0.667$
    -   $P(\text{treten}=1 \mid \text{OK}) = 2/5 = 0.40$
    -   $P(\text{treten}=1 \mid \text{SPAM}) = 2/3 = 0.667$
    -   $P(\text{wolf}=1 \mid \text{OK}) = 2/5 = 0.40$
    -   $P(\text{wolf}=1 \mid \text{SPAM}) = 2/3 = 0.667$
    -   $P(\text{bock}=1 \mid \text{OK}) = 3/5 = 0.60$
    -   $P(\text{bock}=1 \mid \text{SPAM}) = 1/3 = 0.333$

Bei Bernoulli NB wird auch explizit die Wahrscheinlichkeit für die
Abwesenheit eines Terms berechnet, dies ist einfach
$P(t=0 \mid c) = 1 - P(t=1 \mid c)$. Der Übersichtlichkeit halber ist
dies oben nicht explizit angegeben/ausgerechnet.

##### Naive Bayes Klassifikation (Bernoulli NB)

$h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{x \in \mathbf{x}} P(x \mid h)$

Für jedes Wort $w$ im Vokabular $V$ gibt es die Beobachtung
(Bernoulli-Variable) $lw \in \lbrace 0, 1 \rbrace$. ($lw = 1$ wenn Wort
$w$ im Testdokument vorkommt, $lw=0$ sonst.)

$$h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{w \in \mathbf{V}} P(lw=1 \mid h)^{lw} \cdot (1 - P(lw=1 \mid h))^{1-lw}$$

Wenn ein Wort $w$ im Testdatensatz vorkommt, wird es mit
$P(lw=1 \mid h)$ berücksichtigt. Sonst mit
$P(lw=0 \mid h) = (1 - P(lw=1 \mid h))$.

T1: (sieben, zwerg, fressen, sieben, wolf)

-   **h = OK**:
    $P(\text{OK}) \cdot P(\text{sieben}=1 \mid \text{OK}) \cdot P(\text{zwerg}=1 \mid \text{OK}) \cdot P(\text{fressen}=1 \mid \text{OK}) \cdot P(\text{ziege}=0 \mid \text{OK}) \cdot P(\text{treten}=0 \mid \text{OK}) \cdot P(\text{wolf}=1 \mid \text{OK}) \cdot P(\text{bock}=0 \mid \text{OK})$
    $= 0.75*0.80*0.60*0.60*(1-0.40)*(1-0.40)*0.40*(1-0.60) = 0.0124416$

-   **h = SPAM**:
    $P(\text{SPAM}) \cdot P(\text{sieben}=1 \mid \text{SPAM}) \cdot P(\text{zwerg}=1 \mid \text{SPAM}) \cdot P(\text{fressen}=1 \mid \text{SPAM}) \cdot P(\text{ziege}=0 \mid \text{SPAM}) \cdot P(\text{treten}=0 \mid \text{SPAM}) \cdot P(\text{wolf}=1 \mid \text{SPAM}) \cdot P(\text{bock}=0 \mid \text{SPAM})$
    $= 0.25*0.667*0.333*0.333*(1-0.667)*(1-0.667)*0.667*(1-0.333) = 0.0009122091926$

Entscheidung: OK

**Beobachtungen**:

1.  Viele kleine Faktoren ergeben ein immer kleineres Produkt =\>
    Logarithmus nutzen und Übergang zu Summe statt Produkt!
2.  Im Trainingsdatensatz nicht vorhandene Terme bei einer Klasse führen
    zu einem Faktor 0 (Zero-Frequency-Problem), wodurch der gesamte
    Score 0 wird. =\> Laplace-Glättung einsetzen!
3.  Im Testdatensatz nicht vorhandene Terme des Vokabulars werden
    automatisch korrekt mit $P(lw=0 \mid h)$ bzw. $(1 - P(lw=1 \mid h))$
    berücksichtigt. (Multinomial NB würde diese Terme mit dem Faktor 1
    ignorieren.)

##### Wrap-Up

-   **Vorverarbeitung**: Tokenisierung, Vokabular, Bag of Words (BoW)

-   **Multinomial NB**:

    -   Zähle die Vorkommen eines Terms:
        $P(t \mid c) = \dfrac{\mathop{\text{count}}(t,c) + \alpha}{\sum_{v \in V} \mathop{\text{count}}(v,c) + \alpha \cdot \lvert V \rvert}$

    -   Klassifikation mit
        $h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{w \in \mathbf{V}} P(w \mid h)^{\mathop{\text{count}}(w)}$

    -   Im Test nicht vorhandene Terme t aus V werden ignoriert (Faktor
        1)

-   **Bernoulli NB**:

    -   Prüfe das Vorkommen eines Terms:
        $P(t=1 \mid c) = \dfrac{\text{Anzahl Dokumente in Klasse c mit Term t} + \alpha}{\text{Anzahl Dokumente in Klasse c} + 2 \cdot \alpha}$

    -   Klassifikation mit
        $h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{w \in \mathbf{V}} P(lw=1 \mid h)^{lw} \cdot (1 - P(lw=1 \mid h))^{1-lw}$

    -   Im Test nicht vorhandene Terme t aus V werden korrekt mit
        $P(lw=0 \mid h)$ berücksichtigt

<!-- -->

-   Problem mit kleinen Faktoren: **Logarithmus**, Übergang zu Summe
-   **Zero-Frequency-Problem**: Laplace-Glättung mit $\alpha=1$
-   Klassifikation von **Out-of-Vocabulary-Termen**: UNK-Term trainieren

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
> Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte den
> Abschnitt 12.6 "Naive Bayes Models". Darüber hinaus ist Abschnitt
> "8.10 Der Naive Bayes Klassifikator" ([Ertel 2025](#ref-Ertel2025))
> sehr empfehlenswert.
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die verschiedenen Schritte der Vorverarbeitung
>     erklären
> -   k2: Ich kann das Bag-of-Words-Modell erklären
> -   k3: Ich kann einen Text in das BoW-Modell überführen
> -   k3: Ich kann die bedingten Wahrscheinlichkeiten aus konkreten
>     Trainingsdaten schätzen: Multinomial NB, Bernoulli NB, mit/ohne
>     Laplace-Glättung
> -   k3: Ich kann die Klassifikation von Testdaten mit Naive Bayes
>     durch Nutzung der geschätzten Wahrscheinlichkeiten durchführen:
>     Multinomial NB, Bernoulli NB
> -   k3: Ich kann dem Out-of-Vocabulary-Problem durch das Arbeiten mit
>     UNK-Termen entgegenwirken
>
> </details>

<a id="id-dcc57af0ea49405f4c9a9322e52060bd1129c5ca"></a>

### Suche

Problemlösen durch Suche im Problemgraphen. Aus den Basisalgorithmen
Tree-Search und Graph-Search entstehen je nach verwendeter Datenstruktur
und nach betrachteten Kosten unterschiedliche Suchalgorithmen.

-   Uninformierte Suche: ... jeder Schritt "kostet" gleich viel: nur die
    Anzahl der Schritte zählt ...
-   Informierte Suche: ... Einsatz einer Kostenfunktion ...
-   Lokale Suche: ... das Ziel ist im Weg ...

<a id="id-3263461a899091090f8d87ea7f7f3f25bf8255eb"></a>

#### Search: Suche mit Tiefensuche

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Die Tiefensuche gehört zu den "Uninformierten Suchverfahren": Es
> werden keine weiteren Pfadkosten, sondern nur die Anzahl der Schritte
> berücksichtigt.
>
> Die Tiefensuche entsteht, wenn man bei der Tree-Search oder der
> Graph-Search für die Datenstruktur einen **Stack** benutzt:
> Expandierte Nachfolger werden immer **oben** auf den Stack gelegt, und
> der nächste zu expandierende Knoten wird **oben** vom Stack genommen.
> Dadurch verfolgt die Tiefensuche einen Pfad immer erst in die Tiefe.
>
> Bei Sackgassen erfolgt automatisch ein Backtracking, d.h. es wird zum
> letzten Knoten mit einer Alternative zurückgegangen. Dies liegt daran,
> dass bei einer Sackgasse keine Nachfolger expandiert und oben auf den
> Stack gelegt werden.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Tiefensuche](https://youtu.be/NzTugnuHSZ8)
>
> </details>

##### Hole das Buch

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/scene.png" width="60%" /></p>

</div>

Das Beispiel ist ein Büroflur in der Uni. Neben den Büros gibt es eine
Bibliothek und einen Kopiererraum, wo auch der Roboter sich gerade
aufhält. Die Aufgabe für den Roboter lautet: Hole das Buch aus der
Bibliothek (und bringe es zum Kopier). (Damit das Beispiel und der sich
daraus ergebende Problemgraph nicht zu groß und zu unübersichtlich
werden, soll das Ziel hier darin liegen, dass der Roboter das Buch in
der Bibliothek aufnimmt.)

Es stehen zwei Aktionen zur Verfügung:

1.  Der Roboter kann von einem in den nächsten Raum wechseln (Kosten
    siehe Pfeile)
2.  Der Roboter kann das Buch aufnehmen (Kosten: 3)

Dabei sind die Durchgänge teilweise nur in einer Richtung zu benutzen
(Pfeilrichtung).

##### Problemgraph zum Kopiererbeispiel

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/graph.png" width="60%" /></p>

</div>

=\> **Problemlösen == Suche im Graphen**

**Uninformierte ("blinde") Suche**:

Keine Informationen über die Kosten eines Pfades: Nur die Pfadlänge
(Anzahl der Schritte) zählt.

Varianten:

-   **Tiefensuche**
-   [Breitensuche](#id-d08f602e3cf0c02bc97cd5125053645dfe917271)

##### Anmerkungen Wegesuche (Landkarte)

Bei der Wegesuche hat man den Problemgraphen bereits durch die Orte und
die Verbindungen (Straßen) zwischen ihnen gegeben. Es gibt nur eine
ausführbare Aktion: "*fahre nach*".

Dabei können nur die Anzahl der Zwischenstationen auf dem Weg gezählt
werden ("uninformierte Suche"), oder man ordnet den Kanten Kosten zu
(bei der Wegesuche wären dies die Entfernungen zwischen den Orten oder
die Zeit, die man von A nach B braucht) und landet damit bei der
"informierten Suche".

Normalerweise hat man eine Ordnung auf den Aktionen, d.h. für einen
Knoten ergibt sich daraus eine Reihenfolge, in der die Aktionen
angewendet werden und die Nachfolger expandiert werden. Bei der
Wegesuche hat man dies nicht, insofern muss man willkürlich eine Ordnung
festlegen. In dieser Veranstaltung ist dies die alphabetische
Reihenfolge der Knoten (Orte).

##### Tiefensuche (*TS*, *DFS*)

**Erinnerung Tree-Search**

1.  Füge Startknoten in leere Datenstruktur (Stack, Queue, ...) ein
2.  Entnehme Knoten aus der Datenstruktur:
    -   Knoten ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Expandiere alle Nachfolger des Knotens und füge diese in die
        Datenstruktur ein
3.  Falls die Datenstruktur leer ist: Abbruch, melde "*nicht gefunden*"
4.  Gehe zu Schritt 2

=\> Was passiert, wenn wir einen **Stack** einsetzen?

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/tafelbeispiel.png" width="60%" /></p>

</div>

##### Bemerkungen

-   Nachfolger eines Knotens: Alle von diesem Zustand durch Aktionen
    erreichbare Zustände

-   Suchalgorithmus mit **Stack** als Datenstruktur =\> **Tiefensuche**

    -   Zu betrachtender Knoten in Schritt 2 wird *oben* vom Stack
        genommen
    -   Expandierte Knoten werden in Schritt 2.a *oben* auf den Stack
        gelegt Dabei i.A. die vorgegebene Reihenfolge der
        Nachfolgeknoten beachten!

    Auswirkung: Weg wird in die **Tiefe** verfolgt (deshalb
    "Tiefensuche")

-   Im ([Russell und Norvig 2021](#ref-Russell2021)) wird die
    Datenstruktur zum Halten der zu expandierenden Knoten (also hier im
    Fall der Tiefensuche der Stack) auch "**Frontier**" genannt.

-   **Backtracking**: Wenn der Weg in eine Sackgasse führt, d.h. ein
    Knoten keine Nachfolger hat, werden bei der Expansion des Knotens
    keine Nachfolger auf den Stack gelegt. Die Evaluation des nächsten
    Knotens auf dem Stack bewirkt deshalb ein *Zurückspringen* im
    Suchbaum zum letzten Knoten auf dem aktuellen Weg mit noch offenen
    Alternativen ...

##### Konventionen für diese Lehrveranstaltung

In der Beschreibung der Algorithmen werden häufig nur die letzten Knoten
der partiellen Wege in den Datenstrukturen mitgeführt (das gilt auch für
die Beschreibung im ([Russell und Norvig 2021](#ref-Russell2021))). Dies
erschwert die Nachvollziehbarkeit, wenn man die Queue oder den Stack
schrittweise aufschreibt. Deshalb wird für diese Veranstaltung die
Konvention eingeführt, immer die **partiellen Wege** aufzuschreiben.

Nicht Bestandteil der Algorithmen, dient aber der Nachvollziehbarkeit:
Expandierte Knoten sollen alphabetisch sortiert an der korrekten Stelle
in der Datenstruktur auftauchen, dabei soll aber natürlich die
Reihenfolge der ursprünglich in der Datenstruktur enthaltenen Knoten
nicht modifiziert werden. (Bei "echten" Problemen wird die Reihenfolge
der expandierten Nachfolger in der Regel durch eine Reihenfolge der
anwendbaren Operationen bestimmt.)

##### Weitere Hinweise

-   Die Tiefensuche wurde zufällig am Beispiel Tree-Search eingeführt.
    Man kann auch Graph-Search einsetzen. Wichtig ist nur, dass als
    Datenstruktur ein **Stack** genutzt wird.

-   Bei Tree-Search werden bereits besuchte Knoten u.U. immer wieder
    besucht. Zyklen im aktuell entwickelten Pfad sind also möglich!
    Außerdem sind mehrere Wege zum selben (Zwischen-/End-) Knoten in der
    Datenstruktur möglich!

-   Im ([Russell und Norvig 2021](#ref-Russell2021)) wird der Begriff
    "Backtracking" für den rekursiven Tiefensuche-Algorithmus verwendet.
    Dies steht im Gegensatz zum üblichen Sprachgebrauch in der KI!

##### Tiefensuche (rekursive Variante)

1.  Startknoten ist gesuchtes Element: Abbruch, melde "*gefunden*"
2.  Für jeden Nachfolger des Startknotens:
    -   Rufe Tiefensuche für aktuellen (Nachfolger-) Knoten auf
    -   Ergebnis "*gefunden*": Abbruch, melde "*gefunden*"
3.  Abbruch, melde "*nicht gefunden*"

###### Bemerkungen

-   Eigenschaften wie "normale" Tiefensuche
-   Einfacher zu implementieren: Nutzung des Stacks wird auf den
    Compiler verlagert (Funktionsaufruf, Stack des Prozesses ...)
-   Speicherbedarf: Für jeden Knoten wird nur der nächste Knoten
    expandiert, plus Speicher für die Funktion

##### Eigenschaften der Tiefensuche

Siehe [Breitensuche](#id-d08f602e3cf0c02bc97cd5125053645dfe917271)

##### Wrap-Up

-   Uninformierte Suchverfahren
    -   Keine weiteren Pfadkosten (nur Anzahl der Schritte)
    -   Tiefensuche: Verfolge einen Pfad zuerst in die Tiefe
    -   Backtracking bei Sackgassen (automatisch durch den Stack)

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Tiefensuche:
>     Abschnitt 3.4.3
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann erklären, welche Datenstrukturen in der Tiefensuche
>     verwendet werden und wie diese sich auswirken
> -   k2: Ich kann die algorithmische Abläufe und die Terminierung der
>     Tiefensuche erklären
> -   k2: Ich kann Optimalität, Vollständigkeit und Komplexität für die
>     Tiefensuche erklären
> -   k3: Ich kann die Tiefensuche implementieren und auf ein konkretes
>     Beispiel anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Tiefensuche
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106596&client_id=FH-Bielefeld)
>
> </details>

<a id="id-d08f602e3cf0c02bc97cd5125053645dfe917271"></a>

#### Search: Suche mit Breitensuche

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Die Breitensuche gehört zu den "Uninformierten Suchverfahren": Es
> werden keine weiteren Pfadkosten, sondern nur die Anzahl der Schritte
> berücksichtigt.
>
> Die Breitensuche entsteht, wenn man bei der Tree-Search oder der
> Graph-Search für die Datenstruktur eine **Queue** benutzt: Expandierte
> Nachfolger werden immer **hinten** in die Queue eingefügt, und der
> nächste zu expandierende Knoten wird **vorn** aus der Queue genommen.
> Dadurch wird bei der Breitensuche der Suchbaum ebenenweise entwickelt.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Breitensuche](https://youtu.be/WLhXt6ZpyD8)
>
> </details>

##### Hole das Buch

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/graph.png" width="60%" /></p>

</div>

=\> **Problemlösen == Suche im Graphen**

**Uninformierte ("blinde") Suche**:

Keine Informationen über die Kosten eines Pfades: Nur die Pfadlänge
(Anzahl der Schritte) zählt.

Varianten:

-   [Tiefensuche](#id-3263461a899091090f8d87ea7f7f3f25bf8255eb)
-   **Breitensuche**

##### Breitensuche (*BS*, *BFS*)

**Erinnerung Graph-Search**

1.  Füge Startknoten in leere Datenstruktur (Stack, Queue, ...) ein
2.  Entnehme Knoten aus der Datenstruktur:
    -   Knoten ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Markiere aktuellen Knoten, und
    -   Expandiere alle Nachfolger des Knotens und füge alle
        unmarkierten Nachfolger, die noch nicht in der Datenstruktur
        sind, in die Datenstruktur ein
3.  Falls die Datenstruktur leer ist: Abbruch, melde "*nicht gefunden*"
4.  Gehe zu Schritt 2

=\> Was passiert, wenn wir eine **Queue** einsetzen?

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/tafelbeispiel.png" width="60%" /></p>

</div>

##### Bemerkungen

-   Nachfolger eines Knotens: Alle von diesem Zustand durch Aktionen
    erreichbare Zustände

-   Suchalgorithmus mit **Queue** als Datenstruktur =\> **Breitensuche**

    -   Zu betrachtender Knoten in Schritt 2 wird *vorn* aus der Queue
        genommen
    -   Expandierte Knoten werden in Schritt 2.a *hinten* in die Queue
        eingefügt Dabei i.A. die vorgegebene Reihenfolge der
        Nachfolgeknoten beachten!

    Auswirkung: Suchbaum wird **ebenenweise** aufgebaut (deshalb
    "Breitensuche")

-   Graph-Search: Markierte Knoten müssen geeignet gespeichert werden:
    separate Datenstruktur =\> Aufwand!

##### Konventionen für diese Lehrveranstaltung

In der Beschreibung der Algorithmen werden häufig nur die letzten Knoten
der partiellen Wege in den Datenstrukturen mitgeführt (das gilt auch für
die Beschreibung im ([Russell und Norvig 2021](#ref-Russell2021))). Dies
erschwert die Nachvollziehbarkeit, wenn man die Queue oder den Stack
schrittweise aufschreibt. Deshalb wird für diese Veranstaltung die
Konvention eingeführt, immer die **partiellen Wege** aufzuschreiben.

Nicht Bestandteil der Algorithmen, dient aber der Nachvollziehbarkeit:
Expandierte Knoten sollen alphabetisch sortiert an der korrekten Stelle
in der Datenstruktur auftauchen, dabei soll aber natürlich die
Reihenfolge der ursprünglich in der Datenstruktur enthaltenen Knoten
nicht modifiziert werden. (Bei "echten" Problemen wird die Reihenfolge
der expandierten Nachfolger in der Regel durch eine Reihenfolge der
anwendbaren Operationen bestimmt.)

##### Weitere Hinweise

-   Die Breitensuche wurde zufällig am Beispiel Graph-Search eingeführt.
    Man kann auch die Tree-Search-Variante einsetzen. Wichtig ist nur,
    dass als Datenstruktur eine Queue genutzt wird.

-   Im ([Russell und Norvig 2021](#ref-Russell2021)) wird die
    Breitensuche ebenfalls auf der Basis des Graph-Search-Algorithmus
    eingeführt. Allerdings wird die Abbruchbedingung modifiziert: Die
    Zielbedingung wird nicht erst (wie bei Graph-Search eigentlich
    definiert) geprüft, wenn ein Knoten aus der Queue entnommen wird,
    sondern bereits bei der Erzeugung der Nachfolgerknoten (vor dem
    Einfügen in die Queue). Dadurch spart man sich die Expansion einer
    zusätzlichen Ebene: Die Komplexität wäre in diesem Fall "nur"
    $O(b^{d})$.

##### Eigenschaften Breitensuche vs. Tiefensuche

|                     | **Tiefensuche** | **Breitensuche** |
|:--------------------|:----------------|:-----------------|
| Vollständigkeit     | nein[^1]        | ja[^2]           |
| Optimalität         | nein            | ja               |
| Zeitkomplexität     | $O(b^m)$        | $O(b^{d+1})$     |
| Speicherkomplexität | $O(bm)$         | $O(b^{d+1})$     |

-   Zeitkomplexität: maximal zu expandierende Knotenzahl
-   Speicher:
    -   TS: in jeder Tiefe weitere $b$ Knoten speichern
    -   BS: alle Knoten einer Ebene im Speicher halten[^3]

**b**: Verzweigungsfaktor, **d**: Ebene d. höchsten Lösungsknotens,
**m**: Länge d. längsten Pfades

##### Praxisvergleich Breitensuche vs. Tiefensuche

**Breitensuche**: Annahme: $b=10$, 10.000 Knoten/s, 1.000 Byte/Knoten

| **Tiefe** | **exp. Knoten** | **Zeit** | **Speicher** |
|:----------|:----------------|:---------|:-------------|
| 2         | $10^3$          | 0.1 s    | 1 MB         |
| 4         | $10^5$          | 10 s     | 100 MB       |
| 6         | $10^7$          | 20 min   | 10 GB        |
| 8         | $10^9$          | 30 h     | 1 TB         |
| 10        | $10^{11}$       | 130 d    | 100 TB       |

**Tiefensuche**: Annahme: längster Pfad (Tiefe) $m=1000$

=\> Speicherbedarf **ca. 10 MB**

##### Wrap-Up

-   Uninformierte Suchverfahren
    -   Keine weiteren Pfadkosten (nur Anzahl der Schritte)
    -   Breitensuche: Verfolge alle Pfade (baue den Suchbaum ebenenweise
        auf)

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Breitensuche:
>     Abschnitt 3.4.1
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann erklären, welche Datenstrukturen in der Breitensuche
>     verwendet werden und wie diese sich auswirken
> -   k2: Ich kann die algorithmische Abläufe und die Terminierung der
>     Breitensuche erklären
> -   k2: Ich kann Optimalität, Vollständigkeit und Komplexität für die
>     Breitensuche erklären
> -   k3: Ich kann die Breitensuche implementieren und auf ein konkretes
>     Beispiel anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Breitensuche
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106597&client_id=FH-Bielefeld)
>
> </details>

<a id="id-0712fba7e7ca1e4684ed9b6de19345ba86fba471"></a>

#### Search: Suche mit Branch-and-Bound

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Branch-and-Bound gehört zu den "Informierten Suchverfahren": Es werden
> (reale) Pfadkosten statt der Anzahl der Schritte berücksichtigt.
>
> Branch-and-Bound entsteht, wenn man bei der Tree-Search oder der
> Graph-Search für die Datenstruktur eine sortierte **Queue**
> (Prioritätsqueue) benutzt: Expandierte Nachfolger werden immer
> **hinten** in die Queue eingefügt, diese wird nach den **Kosten der
> partiellen Pfade sortiert** und der nächste zu expandierende Knoten
> (d.h. der bisher günstigste partielle Weg) wird **vorn** aus der Queue
> genommen. Branch-and-Bound arbeitet mit den bisher entstandenen
> (realen) Kosten der partiellen Wege.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Branch-and-Bound](https://youtu.be/WBL-sihpbaM)
>
> </details>

##### Hole das Buch

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/graph.png" width="60%" /></p>

</div>

=\> **Problemlösen == Suche im Graphen**

**Informierte Suche: Nutzung der Kostenfunktion**:

**Gesamtkosten**: $f(n) = g(n) + h(n)$

-   $n \in S$ auf aktuellem Weg erreichter Knoten
-   $g(n)$ tatsächliche Kosten für Weg vom Start bis Knoten $n$
-   $h(n)$ geschätzte Restkosten für Weg von Knoten $n$ zum Ziel =\>
    $h(n)$ wird auch "heuristische Funktion" oder "Heuristik" genannt

Varianten:

-   **Branch-and-Bound**
-   [Best First](#id-0a43351a075c7504b755675510f9395b5dd8c092)
-   [A\*](#id-53af5b698d302efe7ce547dd76c249d8ebd26df5)

##### Branch-and-Bound (*BnB*)

Variante der Breitensuche mit Kosten

-   Idee: Expandiere den *bisher* günstigsten partiellen Weg

<!-- -->

-   Kostenfunktion: $f(n) = g(n)$
-   Datenstruktur: **sortierte Queue** (Prioritätsqueue)

<!-- -->

-   Voraussetzung: alle Aktionen haben positive Kosten (jeden Knoten $n$
    gilt: $g(n) > 0$)

*Hinweis*: Die Branch-and-Bound-Suche taucht im ([Russell und Norvig
2021](#ref-Russell2021)) als Erweiterung der "Uniformen Suche" auf ...

*Hinweis*: Es gibt auch den
[Dijkstra-Algorithmus](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm).
Im Unterschied zu Branch-and-Bound berechnet der Dijkstra-Algorithmus
die kürzesten Wege von einem Startknoten zu allen anderen Knoten, der
restliche algorithmische Ablauf ist aber identisch (Nutzung von $g(n)$
und einer sortierten Queue). (Man könnte also sagen, Branch-and-Bound
ist ein Spezialfall vom Dijkstra, wenn wir nämlich die Berechnung auf
den kürzesten Pfad vom Start zum Ziel beschränken.)

##### BnB: Finde einen Weg von A nach H

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/tafelbeispiel.png" width="60%" /></p>

##### Bemerkungen zu BnB mit Graph-Search

Graph-Search fordert: Expandierte Nachfolgerknoten, die schon in der
Queue sind, sollen nicht (erneut) in die Queue aufgenommen werden.

-   Problem dabei: Was ist mit den Kosten?! Der neu expandierte Weg
    könnte günstiger sein als der schon in der Queue enthaltene.

-   Lösung (vgl. Optimierungsmöglichkeiten für A\*):

    Füge zunächst alle neu expandierten partiellen Pfade (mit
    unmarkierten Endknoten) in die Queue ein, sortiere diese und behalte
    von mehreren Pfaden zum gleichen Knoten nur den jeweils günstigsten
    in der Queue

Pfade, deren Endknoten bereits früher im Pfad vorkommt (Schleifen),
werden bei Graph-Search in Schritt 2 nicht in die Queue aufgenommen (der
Endknoten wäre bei einer Schleife ja bereits markiert und der neue Pfad
würde bei Graph-Search nicht weiter beachtet).

Das Einfärben ist kein Problem, da nur der jeweils günstigste Knoten aus
der Queue genommen, gefärbt und expandiert wird. D.h. alle anderen Wege
sind zu diesem Zeitpunkt bereits teurer. Wenn man nun (später) über
einen anderen Weg zu einem bereits gefärbten Knoten kommt, kann der neue
Weg nicht günstiger sein (positive Kosten vorausgesetzt).

##### Konventionen für diese Lehrveranstaltung

In der Beschreibung der Algorithmen werden häufig nur die letzten Knoten
der partiellen Wege in den Datenstrukturen mitgeführt (das gilt auch für
die Beschreibung im ([Russell und Norvig 2021](#ref-Russell2021))). Dies
erschwert die Nachvollziehbarkeit, wenn man die Queue oder den Stack
schrittweise aufschreibt. Deshalb wird für diese Veranstaltung die
Konvention eingeführt, immer die **partiellen Wege** aufzuschreiben.

Auf dem Papier sortiert sich die Queue schlecht, deshalb können Sie
darauf verzichten, wenn Sie den im nächsten Schritt zu expandierenden
Weg unterstreichen. Wer nicht mit Unterstreichen arbeiten will, muss
eben dann manuell sortieren ...

Wenn bei der Graph-Search-Variante ein Weg nicht in die Queue
aufgenommen wird, weil bereits ein anderer (günstigerer) Weg zum selben
(Zwischen-/End-) Knoten bereits in der Queue enthalten ist, schreiben
Sie dies geeignet auf. Dies gilt auch für den analogen Fall, wenn ein
Weg aus der Queue entfernt wird, weil ein günstigerer Weg zum selben
(Zwischen-/End-) Knoten eingefügt werden soll.

##### Eigenschaften von BnB

Siehe [A\*](#id-53af5b698d302efe7ce547dd76c249d8ebd26df5)

##### Wrap-Up

-   Informierte Suchverfahren
    -   Nutzen reale Pfadkosten und/oder Schätzungen der Restkosten
    -   Branch-and-Bound: nur reale Pfadkosten $g(n)$

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Branch-and-Bound
>     (Uniforme Suche): Abschnitt 3.4.2
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann erklären, welche Datenstrukturen in Branch-and-Bound
>     verwendet werden und wie diese sich auswirken
> -   k2: Ich kann die algorithmische Abläufe und die Terminierung von
>     Branch-and-Bound erklären
> -   k2: Ich kann Optimalität, Vollständigkeit und Komplexität für
>     Branch-and-Bound erklären
> -   k2: Ich kann die Bedeutung nicht-negativer Kosten für
>     Branch-and-Bound erklären
> -   k3: Ich kann Branch-and-Bound implementieren und auf ein konkretes
>     Beispiel anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Branch-and-Bound
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106598&client_id=FH-Bielefeld)
>
> </details>

<a id="id-0a43351a075c7504b755675510f9395b5dd8c092"></a>

#### Search: Suche mit Best First

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Best First gehört wie Branch-and-Bound zu den "Informierten
> Suchverfahren": Es werden Pfadkosten (in diesem Fall Schätzungen)
> statt der Anzahl der Schritte berücksichtigt.
>
> Best First arbeitet algorithmisch wie Branch-and-Bound, allerdings
> werden immer nur die geschätzten Restkosten eines Knotens zum Ziel
> berücksichtigt.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Best First](https://youtu.be/dNyLOQuD_aI)
>
> </details>

##### Hole das Buch

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/graph.png" width="60%" /></p>

</div>

=\> **Problemlösen == Suche im Graphen**

**Informierte Suche: Nutzung der Kostenfunktion**:

**Gesamtkosten**: $f(n) = g(n) + h(n)$

-   $n \in S$ auf aktuellem Weg erreichter Knoten
-   $g(n)$ tatsächliche Kosten für Weg vom Start bis Knoten $n$
-   $h(n)$ geschätzte Restkosten für Weg von Knoten $n$ zum Ziel =\>
    $h(n)$ wird auch "heuristische Funktion" oder "Heuristik" genannt

Varianten:

-   [Branch-and-Bound](#id-0712fba7e7ca1e4684ed9b6de19345ba86fba471)
-   **Best First**
-   [A\*](#id-53af5b698d302efe7ce547dd76c249d8ebd26df5)

##### Best-First (*BF*, *BFS*)

-   Idee: Expandiere den partiellen Weg, der verspricht, dem Ziel am
    nächsten zu sein (**Heuristik**)

<!-- -->

-   Kostenfunktion: $f(n) = h(n)$
-   Datenstruktur: **sortierte Queue** (Prioritätsqueue)

<!-- -->

-   Voraussetzungen: $h(n)$ positiv, $h(n) = 0$ für den Zielknoten

##### Konventionen BF

In der Beschreibung der Algorithmen werden häufig nur die letzten Knoten
der partiellen Wege in den Datenstrukturen mitgeführt (das gilt auch für
die Beschreibung im ([Russell und Norvig 2021](#ref-Russell2021))). Dies
erschwert die Nachvollziehbarkeit, wenn man die Queue oder den Stack
schrittweise aufschreibt. Deshalb wird für diese Veranstaltung die
Konvention eingeführt, immer die **partiellen Wege** aufzuschreiben.

Auf dem Papier sortiert sich die Queue schlecht, deshalb können Sie
darauf verzichten, wenn Sie den im nächsten Schritt zu expandierenden
Weg unterstreichen. Wer nicht mit Unterstreichen arbeiten will, muss
eben dann manuell sortieren ...

Wenn bei der Graph-Search-Variante ein Weg nicht in die Queue
aufgenommen wird, weil bereits ein anderer (günstigerer) Weg zum selben
(Zwischen-/End-) Knoten bereits in der Queue enthalten ist, schreiben
Sie dies geeignet auf. Dies gilt auch für den analogen Fall, wenn ein
Weg aus der Queue entfernt wird, weil ein günstigerer Weg zum selben
(Zwischen-/End-) Knoten eingefügt werden soll.

##### Eigenschaften von BF

Siehe [A\*](#id-53af5b698d302efe7ce547dd76c249d8ebd26df5)

##### Wrap-Up

-   Informierte Suchverfahren
    -   Nutzen reale Pfadkosten und/oder Schätzungen der Restkosten
    -   Best-First: nur Schätzungen $h(n)$

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Best First:
>     Abschnitt 3.5.1, Heuristiken: Kapitel 3.6
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann erklären, welche Datenstrukturen in Best First
>     verwendet werden und wie diese sich auswirken
> -   k2: Ich kann die algorithmische Abläufe und die Terminierung von
>     Best First erklären
> -   k2: Ich kann Optimalität, Vollständigkeit und Komplexität für Best
>     First erklären
> -   k3: Ich kann Best First implementieren und auf ein konkretes
>     Beispiel anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Best First
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106599&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> Betrachten Sie folgende Landkarte und Restwegschätzungen:
>
> <p align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MapGermanyGraph.svg/476px-MapGermanyGraph.svg.png"  /></p>
>
> Quelle: [MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg)
> by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and
> [Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on Wikimedia
> Commons ([Public
> Domain](https://en.wikipedia.org/wiki/en:public_domain))
>
> <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/challenge.png"  /></p>
>
> Finden Sie mit der **Best-First-Suche** jeweils einen Weg von Würzburg
> nach München. Vergleichen Sie das Ergebnis mit der Gradienten-Suche.
> </details>

<a id="id-53af5b698d302efe7ce547dd76c249d8ebd26df5"></a>

#### Search: Suche mit A\*

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> A\* zählt zu den Verfahren der informierten Suche. Dabei verwendet A\*
> sowohl die realen Pfadkosten als auch die Schätzungen der Restkosten,
> d.h. die Kostenfunktion für A\* ist $f(n) = g(n)+h(n)$.
>
> A\* ist vollständig und optimal, allerdings muss die Heuristik bei der
> Tree-Search-Variante **zulässig** sein (d.h. sie muss *unterschätzen*,
> beispielsweise die Luft-Linie) und bei der Graph-Search-Variante muss
> sie **konsistent** sein (d.h. für jeden Knoten die
> Dreiecks-Ungleichung erfüllen).
>
> A\* hat wie BnB exponentiellen Aufwand. Durch die zusätzliche
> Verwendung der Heuristik werden die partiellen Pfade in der Queue aber
> geschickter sortiert, so dass A\* in der Regel mit weniger
> Suchschritten als BnB auskommt.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL A\*](https://youtu.be/eMkEN-HtEs8)
>
> </details>

##### Hole das Buch

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/graph.png" width="60%" /></p>

</div>

=\> **Problemlösen == Suche im Graphen**

**Informierte Suche: Nutzung der Kostenfunktion**:

**Gesamtkosten**: $f(n) = g(n) + h(n)$

-   $n \in S$ auf aktuellem Weg erreichter Knoten
-   $g(n)$ tatsächliche Kosten für Weg vom Start bis Knoten $n$
-   $h(n)$ geschätzte Restkosten für Weg von Knoten $n$ zum Ziel =\>
    $h(n)$ wird auch "heuristische Funktion" oder "Heuristik" genannt

Varianten:

-   [Branch-and-Bound](#id-0712fba7e7ca1e4684ed9b6de19345ba86fba471)
-   [Best First](#id-0a43351a075c7504b755675510f9395b5dd8c092)
-   **A\***

##### A\*-Suche

-   Kombination aus Branch-and-Bound und Best-First-Suche

<!-- -->

-   Kostenfunktion: $f(n) = g(n) + h(n)$
-   Datenstruktur: **sortierte Queue** (Prioritätsqueue)

<!-- -->

-   Voraussetzung:
    1.  Alle Aktionen haben positive Kosten ($g(n) \ge \epsilon$)
    2.  Heuristik $h(n)$ muss *zulässig/konsistent* sein

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/tafelbeispiel.png" width="60%" /></p>

</div>

##### Konventionen für diese Lehrveranstaltung

In der Beschreibung der Algorithmen werden häufig nur die letzten Knoten
der partiellen Wege in den Datenstrukturen mitgeführt (das gilt auch für
die Beschreibung im ([Russell und Norvig 2021](#ref-Russell2021))). Dies
erschwert die Nachvollziehbarkeit, wenn man die Queue oder den Stack
schrittweise aufschreibt. Deshalb wird für diese Veranstaltung die
Konvention eingeführt, immer die **partiellen Wege** aufzuschreiben.

Notieren Sie die Bestandteile der Kosten für jeden partiellen Weg in der
Queue einzeln: "$g(n) + h(n) = f(n)$". Das erleichtert Ihnen die
weiteren Schritte, da Sie dort ja nur mit $g(n)$ weiter rechnen dürfen.
Gleichzeitig erleichtert es die Nachvollziehbarkeit.

Auf dem Papier sortiert sich die Queue schlecht, deshalb können Sie
darauf verzichten, wenn Sie den im nächsten Schritt zu expandierenden
Weg unterstreichen. Wer nicht mit Unterstreichen arbeiten will, muss
eben dann manuell sortieren ...

Wenn bei der Graph-Search-Variante ein Weg nicht in die Queue
aufgenommen wird, weil bereits ein anderer (günstigerer) Weg zum selben
(Zwischen-/End-) Knoten bereits in der Queue enthalten ist, schreiben
Sie dies geeignet auf. Dies gilt auch für den analogen Fall, wenn ein
Weg aus der Queue entfernt wird, weil ein günstigerer Weg zum selben
(Zwischen-/End-) Knoten eingefügt werden soll.

##### A\*-Suche -- Anforderungen an Heuristik (Tree-Search)

**Tree-Search-Variante**: Die Heuristik muss **zulässig** sein:

-   Seien $h^\star(n)$ die tatsächlichen optimalen Restkosten von einem
    Knoten $n$ zum nächsten Ziel.
-   Dann muss für jeden beliebigen Knoten $n$ gelten:
    $$h(n) \le h^\star(n)$$
-   Außerdem muss gelten:
    -   $h(n) \ge 0$ für jeden Knoten $n$
    -   $h(n) = 0$ für jeden Zielknoten $n$

=\> Beispiel: Luftlinie als Abschätzung

**Hinweis**: Im der englischen Ausgabe des ([Russell und Norvig
2021](#ref-Russell2021)) wird die **zulässige Heuristik** auch
"**admissible heuristic**" genannt.

##### A\* ist optimal

A\* (Tree-Search-Variante) mit zulässiger Heuristik ist optimal.

Beweis siehe Übung :-)

##### Einfache Verbesserungen A\* (Tree-Search)

-   Dynamische Programmierung: Behalte von mehreren Pfaden zum gleichen
    Knoten nur den günstigsten in der Queue

-   Pfade, deren Endknoten bereits früher im Pfad vorkommt (Schleifen),
    werden in Schritt 2 nicht in die Queue aufgenommen

<!-- -->

-   Übergang zur Graph-Search-Variante und Markierung von Knoten

    =\> Achtung: Dann schärfere Anforderungen an Heuristik (Konsistenz)

##### A\*-Suche -- Anforderungen an Heuristik (Graph-Search)

**Graph-Search-Variante**: Die Heuristik muss **konsistent** sein:

Für jeden Knoten $n$ und jeden durch eine Aktion $a$ erreichten
Nachfolger $m$ gilt: $$h(n) \le c(n,a,m) + h(m)$$ mit $c(n,a,m)$
Schrittkosten für den Weg von $n$ nach $m$ mit Aktion $a$.

Außerdem muss gelten:

-   $h(n) \ge 0$ für jeden Knoten $n$
-   $h(n) = 0$ für jeden Zielknoten $n$

=\> Eine konsistente Heuristik ist gleichzeitig zulässig.

**Hinweis**: Im der englischen Ausgabe des ([Russell und Norvig
2021](#ref-Russell2021)) wird die **konsistente Heuristik** auch
"**consistent heuristic**" genannt.

##### Eigenschaften Branch-and-Bound, Best-First, A\*

|  | **Branch-and-Bound** | **Best-First** | **A\*** |
|:-----------|:-------------------|:--------------------|:--------------------|
| Kosten | $f(n) = g(n)$ | $f(n) = h(n)$ | $f(n) = g(n) + h(n)$ |
| Vollständigkeit | ja[^4] | nein[^5] | ja |
| Optimalität | ja | nein | ja |
| Aufwand | exponentiell | exponentiell | exponentiell |
| Bemerkung | Probiert erst alle "kleinen" Pfade | Suchverlauf stark abh. v. Heuristik | Heuristik: zulässig bzw. konsistent |

##### Wrap-Up

-   Informierte Suchverfahren
    -   Nutzen reale Pfadkosten und/oder Schätzungen der Restkosten
    -   A\*: komplette Kostenfunktion $f(n) = g(n)+h(n)$ =\> besondere
        Anforderungen an die Heuristik! (Tree-Search: *zulässige*
        Heuristik; Graph-Search: *konsistente* Heuristik)

<!-- -->

-   Ausblick auf Verbesserungen der vorgestellten Suchverfahren:
    -   Beschränkung der Suchtiefe ("Depth-Limited-Search")
    -   Iterative Vertiefung der Suchtiefe
        ("Iterative-Deepening-Search"), beispielsweise IDA\*
        ("Iterative-Deepening A\*")
    -   Beschränkung des verwendeten Speichers, beispielsweise SMA
        *("Simplified Memory-Bounded A*")

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): A\*: Abschnitt
>     3.5.2, Heuristiken: Kapitel 3.6
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann erklären, welche Datenstrukturen in A\* verwendet
>     werden und wie diese sich auswirken
> -   k2: Ich kann die algorithmische Abläufe und die Terminierung von
>     A\* erklären
> -   k2: Ich kann Optimalität, Vollständigkeit und Komplexität für A\*
>     erklären
> -   k2: Ich kann die Bedingung(en) an Restkostenabschätzung bei A\*
>     erklären
> -   k3: Ich kann A\* implementieren und auf ein konkretes Beispiel
>     anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest A\*
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106600&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Informierte und uninformierte Suche**
>
> Betrachten Sie folgendes Problem:
>
> <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/challenges_robby.png" width="60%" /></p>
>
> Dargestellt ist eine typische Büroumgebung mit verschiedenen Räumen
> und einem Flur. Die Pfeile in den Durchgängen geben an, in welche
> Richtung der jeweilige Durchgang durchschritten werden darf. Die Werte
> an den Pfeilen geben die Kosten für den Übergang von einem Raum in den
> anderen an.
>
> Ein Roboter `Robbi`, der sich zunächst im Kopierer-Raum aufhält, soll
> den Weg zur Bibliothek finden und dort das Buch aufnehmen. Der Roboter
> kann sich immer nur entlang den Pfeilen in einen Nachbarraum bewegen
> (Aktion `move`). Die Kosten für das Aufnehmen des Buches betragen 3
> Einheiten (Aktion `take`). Weitere Aktionen gibt es nicht.
>
> 1.  Zeichnen Sie den Problemgraphen. Markieren Sie Start- und
>     Zielknoten.
> 2.  Finden Sie den Weg mit Tiefensuche und mit Breitensuche
>     (Tree-Search). Welche Unterschiede stellen Sie fest?
> 3.  Welche Wege würden mit der jeweiligen Graph-Search-Variante nicht
>     weiter untersucht?
> 4.  Suchen Sie nun einen Weg mit A\* (Tree-Search). Definieren Sie
>     zunächst Restkostenschätzungen. Was müssen Sie dabei beachten?
>
> </details>

<a id="id-3e0f73b743e74f106aacc68840406273348f8341"></a>

#### Search: Lokale Suche - Gradientensuche

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lokale Suchverfahren: Nur das Ergebnis zählt! Nicht der Weg ist das
> Ziel, sondern nur das Erreichen des Ziels.
>
> In Analogie zum Bergsteigen: Gehe in Richtung des stärksten Anstiegs
> kann man die Suche so formulieren, dass man in jedem Suchschritt den
> Nachfolgeknoten nach dem stärksten Anstieg der Kostenfunktion
> auswählen. Dieses Verfahren nennt sich auch **Hill-Climbing** (bzw.
> Gradientensuche).
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Gradientensuche](https://youtu.be/TcTF9xdW3WU)
>
> </details>

##### Unterschiede in den Suchproblemen?

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/graph.png" width="60%" /></p>

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/screenshot_stundenplan.png" width="60%" /></p>

Bisher betrachtete Suchverfahren:

-   Systematische Erkundung des Suchraums
-   **Weg** zur Lösung wichtig

=\> Oft aber nur das **Ziel an sich** interessant! (Und nicht, wie man
dort hin gelangt.)

Beispiel: Stundenplan

##### Analogie: Bergsteigen ohne Karte und Pfade

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/hill-climbing.png" width="50%" /></p>

**Gradienten-Suche**: "Gehe in Richtung des steilsten Anstiegs der
Zielfunktion."

=\> Schrittweise Verbesserung des aktuellen Zustands (Lokale Suche)

-   Verschiedene Namen: "Hill-climbing", "Greedy local search"
-   Kann auch als Minimierung angewendet werden

##### Pseudoalgorithmus Gradientensuche

<div align="center">

"*Wie Bergsteigen am Mount Everest in dickem Nebel mit
Gedächtnisverlust*"

</div>

1.  Setze `currNode` auf den Startknoten
2.  `currNode` ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Expandiere alle Nachfolger von `currNode`
    -   Setze `nextNode` auf Nachfolger mit höchster Bewertung
    -   Falls Bewertung von `nextNode` $\leq$ Bewertung von `currNode`:
        Abbruch, melde "*nicht gefunden*"
    -   Setze `currNode` auf `nextNode`
3.  Gehe zu Schritt 2

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/tafelbeispiel.png" width="60%" /></p>

</div>

##### Beispiel Gradientensuche: $n$-Damen

-   **Ziel**: Setze $n$ Damen auf ein $n \times n$-Spielfeld ohne
    Konflikte
-   **Start**: Setze $n$ Damen auf ein $n \times n$-Spielfeld (mit
    Konflikten)
-   **Suche**: Bewege jeweils eine Dame so, daß die Anzahl der Konflikte
    reduziert wird

Schauen Sie sich auch Abb. 4.3 auf Seite 130 im Russell und Norvig
([2021](#ref-Russell2021)) an!

**Hinweis**: Alle Damen stehen von Anfang an auf dem Brett und werden
nur verschoben =\> "vollständige Zustandsformulierung"

###### Eigenschaften 8-Damen-Problem ($n=8$)

-   Zustandsraum: $8^8 \approx 17$ Millionen Zustände!
-   Beginnend mit zufällig erzeugtem Startzustand:
    -   bleibt in 86% der Fälle stecken, d.h.
    -   findet Lösung nur in 14% der Fälle.
-   Beobachtung: Lösung nach durchschnittlich 4 Schritten, oder
    Verfahren bleibt nach durchschnittlich 3 Schritten stecken.

Quelle: nach ([Russell und Norvig 2021](#ref-Russell2021), p. 131)

##### Eigenschaften Gradientensuche

-   Vollständigkeit: nein
-   Optimalität: nein
-   Komplexität: linear in der Anzahl der zu expandierenden Knoten

**Zielfunktion (Bewertung) nötig!**

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/hill-climbing.png" width="60%" /></p>

**Problem**: lokale Maxima und Plateaus

-   Lokale Maxima/Minima: Algorithmus findet nur eine suboptimale Lösung
-   Plateaus: Hier muss der Algorithmus mit zufälligen Zügen explorieren

##### Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

-   Gradientenverfahren: Gehe in Richtung des stärksten Anstiegs der
    Kostenfunktion

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Gradientenabstieg:
>     Abschnitt 4.1.1
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Problematik der lokalen Minima bei
>     Gradientenverfahren erklären
> -   k3: Ich kann die lokale Suche (Gradientenabstieg) auf ein
>     konkretes Problem anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Gradientensuche
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106601&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> Betrachten Sie folgende Landkarte und Restwegschätzungen:
>
> <p align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MapGermanyGraph.svg/476px-MapGermanyGraph.svg.png"  /></p>
>
> Quelle: [MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg){width="40%"}
> by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and
> [Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on Wikimedia
> Commons ([Public
> Domain](https://en.wikipedia.org/wiki/en:public_domain))
>
> <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/challenge.png"  /></p>
>
> Finden Sie mit der **Gradienten-Suche** jeweils einen Weg von Würzburg
> nach München. Vergleichen Sie das Ergebnis mit der Best-First-Suche.
> </details>

<a id="id-bafda494229223827755dbbffb5862eeb7e31262"></a>

#### Search: Lokale Suche - Simulated Annealing

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lokale Suchverfahren: Nur das Ergebnis zählt! Nicht der Weg ist das
> Ziel, sondern nur das Erreichen des Ziels.
>
> Das Problem bei der Gradientensuche ist, dass man eine Kostenfunktion
> benötigt und diese auch **lokale Minima** enthalten kann. Mit der
> reinen Gradientensuche würde man bei Erreichen lokaler Minima die
> Suche abbrechen (müssen), da es keine weitere Verbesserung unter den
> Nachfolgern mehr geben kann. In Anlehnung an das Abkühlen von Metall
> kann hier eine Variante der lokalen Suche helfen: **Simulated
> Annealing**. Man führt einen "Temperatur"-Parameter ein, der im Laufe
> der Suche immer kleiner wird und schließlich gegen Null geht. In
> Abhängigkeit von dieser "Temperatur" wird mit einer bestimmten
> Wahrscheinlichkeit eine Verschlechterung akzeptiert: Bei einer hohen
> Temperatur ist diese Wahrscheinlichkeit höher, bei einer niedrigen
> Temperatur niedriger, so dass das Verfahren in ein normales
> Hill-Climbing übergeht. Damit kann man ein Festfressen in lokalen
> Minima vermeiden bzw. überwinden.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Simulated Annealing](https://youtu.be/vPg7PWuY2bM)
>
> </details>

##### Motivation

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/hill-climbing.png" width="60%" /></p>

**Problem**: lokale Maxima und Plateaus

-   Lokale Maxima/Minima: Algorithmus findet nur eine suboptimale Lösung
-   Plateaus: Hier muss der Algorithmus mit zufälligen Zügen explorieren

Mögliche Lösungen:

-   Neustart des Algorithmus, wenn kein Fortschritt erzielt wird
-   Rauschen "injizieren"

##### Gedankenexperiment: Ausweg aus lokalen Minima

-   "Drehen der Landschaft": Minimieren statt Maximieren
-   Ball wird in Zustandsraum-Landschaft gesetzt.
-   Folge:
    -   rollt steilsten Abstieg hinunter
    -   rollt evtl. in Tal auf halber Höhe (lokales Minimum) =\> bleibt
        dort gefangen

=\> "**Schütteln** der Landschaft" -- Ball springt aus dem Tal und rollt
in anderes Tal

Nicht zu stark schütteln -- sonst wird u.U. globales Minimum verlassen!

##### Analogie Härten von Metall

-   Metall erhitzen bis Atome frei beweglich
-   Langsam abkühlen

=\> stabiles Atomgitter mit minimalem Energiezustand

##### Übertragen der Idee

-   Starkes "Schütteln" (hohe "Temperatur") am Anfang
-   Schrittweises "Abkühlen" =\> "Schütteln" im Laufe der Zeit
    verringern

=\> **Simulated Annealing**

##### Pseudocode Simulated Annealing (Minimierungsproblem)

``` python
def simulated_annealing(problem):
    current = problem.startNode
    t = 0;  temp = schedule(t)

    while temp>0:
        temp = schedule(++t)
        neighbors = current.expandSuccessors()
        if not neighbors: return current
        working = random.choice(neighbors)
        dE = problem.value(current) - problem.value(working)
        if dE > 0 or probability(math.exp(dE/temp)):
            current = working

    return current
```

Wenn `dE` positiv ist, dann ist der Nachfolger "besser" (hier: kleiner
bewertet) als der aktuelle Knoten und wird immer als nächster Knoten
übernommen.

Wenn `dE` negativ ist, dann ist der betrachtete Nachfolger "schlechter"
(hier: größer bewertet) als der aktuelle Knoten. Dann wird er mit einer
Wahrscheinlichkeit `math.exp(dE/temp)` als nächster Knoten übernommen.
Diese Wahrscheinlichkeit ist bei hohen Temperaturen `temp` eher hoch,
und sinkt, je niedriger die Temperatur `temp` wird.

Die Temperatur `temp` bewegt sich dabei von hohen positiven Werten auf
den Wert Null (wird also nicht negativ).

##### Detail: Akzeptieren von Verschlechterungen

<div align="center">

<p align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Exp_e.svg/524px-Exp_e.svg.png" width="60%" /></p>

Quelle: ["Exp e.svg"](https://commons.wikimedia.org/wiki/File:Exp_e.svg)
by Marcel Marnitz, reworked by
[Georg-Johann](https://commons.wikimedia.org/wiki/User:Georg-Johann) on
Wikimedia Commons ([Public
Domain](https://en.wikipedia.org/wiki/Public_domain))

</div>

-   Wahrscheinlichkeit zum Akzeptieren einer Verschlechterung:
    `math.exp(dE/temp)`

-   Wenn $dE$ negativ ist, wird `math.exp(dE/temp)` ausgewertet

-   Wenn $dE$ negativ, dann gilt (Umformung):

    $$\exp\left(\text{dE}/\text{temp}\right) = \exp\left(-\frac{|\text{dE}|}{\text{temp}}\right) = \frac{1}{\exp\left(\frac{|\text{dE}|}{\text{temp}}\right)}$$

-   Betrachtung von $\exp(a)$ bzw. $e^a$:

    -   $a<0$: geht gegen 0
    -   $a=0$: 1
    -   $a>0$: steil (exponentiell) gegen Unendlich ...

-   Damit ergibt sich für $dE$ (nur negativer Fall!) und $\text{temp}$:

    -   Temperatur $\text{temp}$ hoch:
        $a = \frac{|\text{dE}|}{\text{temp}}$ ist positiv und klein
        (nahe Null), d.h. $\exp(a)$ nahe 1 (oder größer), d.h. die
        Wahrscheinlichkeit $1/\exp(a)$ ist nahe 1 (oder kleiner)
    -   Temperatur $\text{temp}$ wird kleiner und geht gegen Null:
        $a = \frac{|\text{dE}|}{\text{temp}}$ ist positiv und wird
        größer, d.h. $\exp(a)$ geht schnell gegen Unendlich, d.h. die
        Wahrscheinlichkeit $1/\exp(a)$ geht gegen 0

##### Abkühlungsplan problemabhängig wählen

-   Initiale Temperatur: So hoch, daß praktisch jede Änderung akzeptiert
    wird

<!-- -->

-   Abkühlen: $T_k = \alpha T_{k-1}$ mit $0.8 \le \alpha \le 0.99$
    -   Ausreichend langsam abkühlen!
    -   Typisch: jede Stufe so lange halten, daß etwa 10 Änderungen
        akzeptiert wurden

<!-- -->

-   Stop: Keine Verbesserungen in 3 aufeinander folgenden Temperaturen

Der Abkühlungsplan muss problemabhängig gewählt werden. Das Beispiel
zeigt typische Elementes eines solchen Abkühlungsplans.

##### Eigenschaften Simulated Annealing

-   Vollständigkeit: ja (mit gewisser Wahrscheinlichkeit)
-   Optimalität: ja (mit gewisser Wahrscheinlichkeit)

Voraussetzung: geeigneter Abkühlungsplan

##### Anwendungen von Simulated Annealing

-   Flugplan-Scheduling
-   Layout-Probleme (Chipentwurf, Leiterplatten)
-   Produktionsplanung

##### Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

-   Gradientenverfahren
    -   Analogie Bergsteigen: Gehe in Richtung des stärksten Anstiegs
        der Kostenfunktion =\> **Hill-Climbing**
    -   Achtung: Probleme mit lokalen Minima =\> **Simulated Annealing**

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Simulated
>     Annealing: Abschnitt 4.1.2
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann die Funktionsweise von Simulated Annealing erklären
>     und den Algorithmus auf ein konkretes Problem anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Simulated Annealing
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106602&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Team-Planung**
>
> Sie haben 12 Personen mit Rollen/Skills und paarweisen Synergiewerten
> (positiv = gut, negativ = Konflikt). Es gibt die Rollen/Skills
> "Frontend" (FE), "Backend" (BE), "Fullstack" (FS) sowie "User
> Experience" (UX). Für die Synergie-Werte überlegen Sie sich einige
> passende Beispiele, etwa "Person A und B kommen gut miteinander aus"
> o.ä.
>
> Bilden Sie 3 Teams zu je 4 Personen, so dass
>
> -   die Summe der Synergien innerhalb der Teams maximiert wird,
> -   pro Team mindestens je 1x FE, 1x BE, 1x FS vorhanden ist (harte
>     oder weiche Nebenbedingung),
> -   optional: UX in einem Team bringt Bonus.
>
> Es gibt exakt 12 Personen, darunter jeweils 3 FE, 3 BE, 3 FS, 3 UX.
>
> Modellieren Sie dieses Problem geeignet, damit Sie es mit Simulated
> Annealing lösen können.
> </details>

<a id="id-3de4780f1d4689bbb4576d4300753af31a872e21"></a>

### Genetische Algorithmen

Lokale Suche mit Methoden, die der biologischen Evolution abgeschaut
bzw. nachempfunden sind.

<a id="id-aa3481a03ed2e17666ced54325637e0551022587"></a>

#### EA: Einführung Evolutionäre Algorithmen

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lokale Suchverfahren: Nur das Ergebnis zählt!
>
> Evolutionäre Algorithmen sind lokale Suchverfahren, wobei gleichzeitig
> an mehreren Stellen im Problemraum gesucht wird. Sie bedienen sich
> Mechanismen aus der Evolution: Es gibt eine Population von Individuen,
> die jedes das Problem kodieren ("vollständige Zustandsbeschreibung")
> und damit im Laufe der Suche zu einer möglichen Lösung werden können.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Einführung Evolutionäre
>     Algorithmen](https://youtu.be/pKdKcPLI7V4)
>
> </details>

##### Evolution sehr erfolgreich bei Anpassung

<p align="center"><img src="https://images.unsplash.com/flagged/photo-1552863473-6e5ffe5e052f" width="60%" /></p>

Quelle: [Photo Evolution](https://unsplash.com/photos/aWDgqexSxA0) by
[Johannes Plenio](https://unsplash.com/@jplenio) on Unsplash.com
([Unsplash License](https://unsplash.com/license))

<div align="center">

**Wie funktioniert's?**

</div>

##### EA -- Zutaten und Mechanismen

-   Zutaten:
    -   **Individuen**: Kodierung möglicher Lösungen
    -   **Population** von Individuen
    -   **Fitnessfunktion**: Bewertung der Angepasstheit

<!-- -->

-   Mechanismen ("Operatoren"):
    -   Selektion
    -   Rekombination (Crossover)
    -   Mutation

##### EA -- Allgemeiner Ablauf

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/ea/images/ea_prinz.png" width="60%" /></p>

##### EA -- Beispiel

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/ea/images/4-queens-example.png" width="25%" /></p>

Jedes Individuum kodiert ein Spielfeld mit einer konkreten Anordnung
**aller** Königinnen =\> **Vollständige Zustandsbeschreibung**.

Dabei korrespondiert der Index in das Array des Individuums mit der
jeweiligen Spalte des Spielfelds. Die Zahl an einer Arrayposition gibt
dann an, in welcher Zeile in dieser Spalte eine Königin ist.

Crossover: Die ausgewählten Individuen werden an der selben Stelle
aufgetrennt und die Hälften verkreuzt zu zwei neuen Individuen
zusammengesetzt. Es entstehen zwei neue Anordnungen der Königinnen (zwei
neue Spielfelder).

##### EA -- Strömungen

1.  **Genetische Algorithmen** (GA)
    -   Holland ([1975](#ref-holland1975)) (Holland
        ([1992](#ref-holland1992))) und Goldberg
        ([1986](#ref-goldberg1986))
    -   Binäre Lösungsrepräsentation (Bitstring):
        $\mathbf{g} = (g_1, \dots, g_m)\in \{ 0,1\}^m$
    -   Fitnessbasierte stochastische Selektion
    -   $\mu$ Eltern erzeugen $\mu$ Kinder

<!-- -->

2.  **Evolutionsstrategien** (ES)
    -   Rechenberg ([1978](#ref-rechenberg1978)) und Schwefel
        ([1975](#ref-schwefel1975)) (Schwefel
        ([1995](#ref-Schwefel1995)))
    -   Kodierung reellwertiger Parameter:
        $\mathbf{g} = (\mathbf{x}, \mathbf{\sigma})$ mit
        $\mathbf{x} = (x_1, \dots, x_n) \in \mathbb{R}^n$
    -   $\mu$ Eltern erzeugen $\lambda$ Kinder mit $\mu \le \lambda$

<!-- -->

3.  **Evolutionäre Programmierung** (EP)

*Hinweis*: Häufig finden sich Mischformen, beispielsweise GA mit
reellwertigen Parametern

*Hinweis*: Im Folgenden werden **Genetische Algorithmen** (GA)
betrachtet. Sie finden jeweils Hinweise auf die Gestaltung der
Operatoren bei ES.

##### Anwendungsbeispiele für Evolutionäre Algorithmen

-   Berechnung und Konstruktion komplexer Bauteile: beispielsweise
    Tragflächenprofile (Flugzeuge), Brücken oder Fahrzeugteile unter
    Berücksichtigung bestimmter Nebenbedingungen
-   Scheduling-Probleme: Erstellung von Stunden- und Raumplänen oder
    Fahrplänen
-   Berechnung verteilter Netzwerktopologien: Wasserversorgung,
    Stromversorgung, Mobilfunk
-   Layout elektronischer Schaltkreise

##### Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

-   Evolutionäre Algorithmen: Unterschied GA und ES (grober Überblick)

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): GA: Abschnitt 4.1.4
> -   Weicker ([2015](#ref-Weicker2015))
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Problematik der lokalen Minima bei
>     Gradientenverfahren erklären
> -   k2: Ich kann einen Überblick über die verschiedenen Strömungen bei
>     EA/GA darstellen
> -   k2: Ich kann den prinzipiellen Ablauf von Genetischen Algorithmen
>     an einem Beispiel erklären
>
> </details>

<a id="id-c99ae5cae334ccb182fc61d94707f8e7cdf363c9"></a>

#### EA: Modellierung mit Genetischen Algorithmen

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lokale Suchverfahren: Nur das Ergebnis zählt!
>
> Evolutionäre Algorithmen sind lokale Suchverfahren, wobei gleichzeitig
> an mehreren Stellen im Problemraum gesucht wird. Sie bedienen sich
> Mechanismen aus der Evolution: Es gibt eine Population von Individuen,
> die jedes das Problem kodieren ("vollständige Zustandsbeschreibung")
> und damit im Laufe der Suche zu einer möglichen Lösung werden können.
>
> Die Individuen werden mit Hilfe einer Fitnessfunktion bewertet, wie
> gut sie bereits an das Problem angepasst sind (bzw. wie sehr sie
> bereits der gesuchten Lösung entsprechen). Über eine
> fitnessproportionale Selektion werden Individuen ausgewählt, aus denen
> mittels Rekombination (auch "Crossover" genannt) neue Individuen mit
> Eigenschaften der Eltern erzeugt werden. Über eine Mutation werden
> dann noch Elemente der neuen Individuen leicht verändert, bevor diese
> zur neuen Population werden ...
>
> Durch das Anwenden von Rekombination und Mutation springt man im
> Problemraum umher. Auch wenn als Basis die fitteren (angepassteren)
> Individuen dienen, kann es wie bei allen lokalen Suchverfahren
> vorkommen, dass sich der Algorithmus in lokalen Minima (bzw. lokalen
> Maxima, je nach Richtung der Optimierung) festfrisst.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Modellierung mit EA/GA](https://youtu.be/Sd5AA6LIEOc)
>
> </details>

##### EA -- Allgemeiner Ablauf

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/ea/images/ea_prinz.png" width="60%" /></p>

##### Kodierung Individuen

-   Binäre Lösungsrepräsentation (Bitstring):
    $\mathbf{g} = (g_1, \dots, g_m)\in \{ 0,1\}^m$
    -   String gliedert sich in $n$ Elemente (mit $n \le m$) =\> jedes
        Segment entspricht einer Problemvariablen
    -   Dekodierungsfunktion $\Gamma : \{0,1\}^m \to \mathbb{R}^n$

    Alle relevanten Aspekte des Problems müssen in die Codierung
    einfließen!

    Bei ES hat man einen Vektor mit reellen Zahlen, wobei jeder Eintrag
    einen Parameter des Problems darstellt. Eine Dekodierungsfunktion
    benötigt man entsprechend nicht.

    Bei der Erzeugung der Startpopulation werden die Individuen
    **zufällig** (mit zufälligen Werten) initialisiert.

<!-- -->

-   Fitnessfunktion $\Phi$ ordnet jedem Individuum $\mathbf{g}_i$ eine
    reelle Zahl zu:
    $$\Phi(\mathbf{g}_i) = F(\Gamma(\mathbf{g}_i)) - w\cdot\sum_j(Z_j(\Gamma(\mathbf{g}_i)))^2$$
    -   Zielfunktion $F$: wie sehr genügt ein Individuum bereits dem
        Optimierungproblem
    -   Strafterme $Z_j$: Anreicherung der Optimierung mit weiteren
        Informationen
    -   Gewichte $w$: statisch oder dynamisch (Abkühlen)

    Die Wahl einer guten Fitnessfunktion ist oft eine Herausforderung,
    aber dennoch wichtig, da damit die Suche gesteuert wird!

##### Selektion: Erstelle Matingpool mit $\mu$ Individuen

-   Fitnessproportionale Selektion (*Roulette Wheel Selection*):
    Auswahlwahrscheinlichkeit für Individuum $\mathbf{g}_k$:
    $$p_{sel}(\mathbf{g}_k) = \frac{\Phi(\mathbf{g}_k)}{\sum_j \Phi(\mathbf{g}_j)}$$
    =\> Voraussetzung: positive Fitnesswerte

<!-- -->

-   Turnier-Selektion (*Tournament Selection*):
    -   Turniergröße $\xi$
    -   Turnier: ziehe $\xi$ Individuen gleichverteilt (mit
        Zurücklegen!) und kopiere fittestes Individuum in den Matingpool
    -   Führe $\mu$ Turniere durch

*Hinweis*: Es gibt noch viele weitere Selektionsmechanismen. Die
vorgestellten sind in der Praxis am gebräuchlichsten.

Über die Selektion wird der sogenannte "Selektionsdruck" aufgebaut: Wie
gut muss ein Individuum sein (im Vergleich zu den restlichen Individuen
in der Population), damit es eine Chance zur Reproduktion erhält? Dürfen
sich nur die "Guten" fortpflanzen, oder erhalten auch die "Schlechten"
eine gewisse Chance?

Da jedes Individuum einen Punkt im Suchraum darstellt, beeinflusst die
Wahl der Selektion die Geschwindigkeit der Suche, begünstigt u.U. aber
auch ein eventuelles Festfahren in lokalen Minima. Dies kann
beispielsweise geschehen, wenn immer nur die "Guten" selektiert werden,
aber die "Guten" der Population sich in der Nähe eines lokalen Minimums
befinden. Dann werden auch die Nachfolger sich wieder dort aufhalten.

##### Crossover: Erzeuge zwei Nachkommen aus zwei Eltern

Festlegung der Crossover-Wahrscheinlichkeit $p_{cross}$ (typisch:
$p_{cross} \ge 0.6$)

1.  Selektiere Eltern $\mathbf{g}_a$ und $\mathbf{g}_b$
    **gleichverteilt** aus Matingpool

<!-- -->

2.  Zufallsexperiment:
    -   mit $1-p_{cross}$: Kinder identisch zu Eltern (kein Crossover)
    -   mit $p_{cross}$: Crossover mit $\mathbf{g}_a$ und $\mathbf{g}_b$
        -   Ziehe $i$ gleichverteilt mit $1 < i < m$
        -   Kinder aus $\mathbf{g}_a$ und $\mathbf{g}_b$ zusammenbauen:
            $$\mathbf{g}_c = (g_{a,1}, \dots, g_{a,i}, \; g_{b,{i+1}}, \dots, g_{b,m})$$
            und
            $$\mathbf{g}_d = (g_{b,1}, \dots, g_{b,i}, \; g_{a,{i+1}}, \dots, g_{a,m})$$

        =\> Trenne Eltern an gleicher Stelle auf, vertausche
        Bestandteile

<!-- -->

3.  Gehe zu Schritt 1, bis insg. $\mu$ Nachkommen

*Anmerkung*: Die Eltern werden jeweils in die Ausgangsmenge
zurückgelegt.

Mit einer kleinen Wahrscheinlichkeit sind die Kinder also identisch zu
den Eltern. Dies ist im Sinne der lokalen Suche wichtig, um bereits
erreichte gute Positionen im Suchraum nicht zu verlieren: Es könnte
sein, dass die Nachfolger alle schlechter sind ...

Varianten: $N$-Punkt-Crossover, Shuffle-Crossover

Bei ES wird parameterweise gekreuzt. Dabei gibt es verschiedene
Möglichkeiten: Übernahme eines Parameters von einem Elternteil,
Verrechnen (beispielsweise Mitteln) der Werte beider Eltern, ... Bei ES
heißt "Crossover" deshalb oft "Rekombination".

##### Mutation

-   Mutationswahrscheinlichkeit $p_{mut}$ (typische Werte:
    $p_{mut} = 0.01$ oder $p_{mut} = 0.001$)

<!-- -->

-   Für alle Individuen:
    -   Mutiere jedes Gen eines Individuums mit $p_{mut}$:

        $$g_i^{(t+1)} = \left\{
        \begin{array}{rll}
            \neg & g_i^{(t)} & \text{ falls } \chi_i \le p_{mut}\\[5pt]
            & g_i^{(t)} & \text{ sonst }
        \end{array}
        \right.$$

        =\>$\chi_i$ gleichverteilte Zufallsvariable (Intervall $[0,1]$),
        für jedes Bit $g_i$ neu bestimmen

*Anmerkung*: Die optimale Mutationsrate $p_{mut}^*$ ist von Länge $m$
des Bitstrings abhängig; annäherbar durch $p_{mut}^* \approx 1/m$.

Die beim Crossover erstellten Nachfolger liegen im Suchraum in der Nähe
der Eltern. Durch die Mutationsrate bestimmt man, ob und wie weit sich
ein Kind entfernen kann. Dies entspricht dem Bild des "Schüttelns" der
Zustandslandschaft.

Bei ES unterscheidet man Mutationswahrscheinlichkeit und Mutationsrate.
Es wird parameterweise mutiert.

##### Bewertungskriterien

Vorsicht: Es handelt sich um Zufallsexperimente. Wenn man nicht nur
direkt nach einer Lösung sucht, sondern beispielsweise
Parametereinstellungen oder die Wahl der Fitnessfunktion für ein Problem
vergleichen will, muss man jeweils mehrere Experimente mit der selben
Einstellung machen und Kenngrößen berechnen.

**Geschwindigkeit: AES** *Average Evaluations to a Solution*
$$\text{AES } = \frac{\sum\limits_{i \in \text{erfolgreiche Läufe}} \text{Generationen von Lauf } i}{\text{Anzahl der erfolgreichen Läufe}}$$

Die AES liegt im Intervall $[0, maxGen]$.

**Lösungswahrscheinlichkeit: SR** *Success Rate*
$$\text{SR } = \frac{\text{Anzahl der erfolgreichen Läufe}}{\text{Anzahl aller Läufe}}$$

Die SR liegt im Intervall $[0, 1]$.

##### Typische Läufe

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/ea/images/typischerLauf_ritterIII_mG500M15L100_fail.png" width="60%" /></p>

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/ea/images/typischerLauf_ritterIII_mG500M15L100_success.png" width="60%" /></p>

-   Populationsgröße $\mu=15$
-   Anzahl Nachfahren $\lambda=100$
-   Abbruch nach $maxGen=200$ Generationen

Stochastischer Algorithmus! Ausreichend Wiederholungen durchführen und
mitteln!

*Hinweis*: Die Parameter müssen problemabhängig gewählt werden. Zu hohe
Werte für $\mu$ und $\lambda$ führen dazu, dass man bei kleinen
Problemen mit hoher Wahrscheinlichkeit bereits am Anfang eine Lösung
"würfelt", also gar kein GA nutzt. Wenn dies allerdings nicht passiert,
sorgt eine hohe Populationsgröße dafür, dass jeder Schritt sehr lange
dauert. Die Abbruchgrenze ist ebenfalls mit Augenmaß zu wählen: Ein zu
kleiner Wert sorgt für zu frühen Abbruch (keine Lösung!), ein zu hoher
Wert sorgt beim Festfressen des Algorithmus für eine unnötige weitere
"Suche" ...

##### Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

-   Evolutionäre Algorithmen:
    -   Begriffe: Individuum, Population, Kodierung
    -   Operationen: Selektion, Rekombination, Mutation
    -   Bewertung mit Fitnessfunktion

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): GA: Abschnitt 4.1.4
> -   Weicker ([2015](#ref-Weicker2015))
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann GA anwenden, insbesondere für ein Beispiel passende
>     Kodierung, Fitnessfunktion, Operatoren und Auswertung formulieren
>     und den Ablauf erklären
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest EA/GA
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106580&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Sudoku**
>
> Ein $9 \times 9$-*Sudoku*-Rätsel soll mit einem GA gelöst werden.
>
> Geben Sie für dieses Problem jeweils eine geeignete **Kodierung** der
> Individuen, passende Operatoren (**Crossover**, **Mutation**) und eine
> geeignete **Fitnessfunktion** an, damit das Problem mit einem GA
> gelöst werden kann. Begründen Sie Ihre Wahl!
>
> Was würden Sie noch benötigen, um das Probleme mit Simulated Annealing
> lösen zu können?
>
> **Travelling Salesman Problem**
>
> Das *Travelling Salesman Problem* für 10 Städte, d.h. das Finden der
> kürzesten Route zwischen 10 Städten, soll mit einem GA gelöst werden.
>
> Geben Sie für dieses Problem jeweils eine geeignete **Kodierung** der
> Individuen, passende Operatoren (**Crossover**, **Mutation**) und eine
> geeignete **Fitnessfunktion** an, damit das Problem mit einem GA
> gelöst werden kann. Begründen Sie Ihre Wahl!
>
> Was würden Sie noch benötigen, um das Probleme mit Simulated Annealing
> lösen zu können?
> </details>

<a id="id-31840d23d47a206d5a0d3a76655f79f643855895"></a>

### Spiele

Man kann Spiele auch als Suchproblem betrachten und als Ziel die Suche
nach dem optimalen Zug definieren.

<a id="id-f669cc4761526fb137b102a84bf0b7a3c8e1b51a"></a>

#### Games: Einführung Optimale Spiele

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Spiele können als Suchproblem betrachtet werden. Dabei sind in der
> Regel mehrere Spieler ("Agenten") beteiligt. Bei manchen Spielen ist
> die Umgebung (der Spielzustand) vollständig einsehbar, bei anderen nur
> teilweise (Kartenspiele). Bei manchen Spielen kommt eine
> Zufallskomponente zum Wirken.
>
> Spiele sind in der KI deshalb so interessant, weil bei der Suche
> riesige Suchbäume entstehen (bzw. durchsucht werden müssten). Da die
> Ressourcen normalerweise begrenzt sind (denken Sie an die
> Reaktionszeit auf einen Zug des Gegners), muss man hier intelligente
> Lösungen finden. (Einige davon werden wir in den folgenden Sitzungen
> anschauen).
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Einführung Optimale Spiele](https://youtu.be/wVYhbgtzxhs)
>
> </details>

##### Backgammon: Zwei Spieler, was ist der beste Zug?

<p align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Backgammon_lg.png/960px-Backgammon_lg.png" width="60%" /></p>

Quelle: [Backgammon
lg.png](https://commons.wikimedia.org/wiki/File:Backgammon_lg.png) by
[Ptkfgs](https://commons.wikimedia.org/wiki/User:Ptkfgs) on Wikimedia
Commons ([Public
Domain](https://en.wikipedia.org/wiki/en:public_domain))

Zwei Spieler, ein Spielstand und ein Würfelergebnis: **Was ist jetzt der
beste Zug?!**

##### Motivation: Unterschied zu Suche?!

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/games/images/tttEnd.png" width="10%" /></p>

=\> Mehrere **konkurrierende** Agenten an Suche beteiligt!

=\> (Re-) Aktion des Gegners unbekannt/nicht vorhersehbar.

##### Spiele und Umgebungen

|                      | Deterministisch   | Zufallskomponente        |
|:---------------------|:------------------|:-------------------------|
| Voll beobachtbar     | Schach, Go, ...   | Backgammon, Monopoly     |
| Partiell beobachtbar | Schiffe-versenken | Bridge, Poker, Skat, ... |

=\> Bis auf Roboterfußball in KI traditionell keine physischen Spiele!

##### Brettspiele sind interessant für KI

-   Brettspiele gut abstrakt darstellbar:
    -   Zustände einfach repräsentierbar
    -   Aktionen wohldefiniert (und i.d.R. sehr einfach)
    -   Realisierung als Suchproblem möglich

<!-- -->

-   **Problem**: Suchbäume werden in Praxis riesig

    Beispiel **Schach**:

    -   Im Mittel 35 Aktionen (*branching factor*) von jeder Position
    -   Oft mehr als 40 Züge pro Spieler =\> Suchbäume mit mehr als 80
        Ebenen
    -   $35^{80} \approx 10^{123}$ mögliche Knoten!
    -   (Aber "nur" rund $10^{40}$ *verschiedene* Zustände)

    Quelle: ([Russell und Norvig 2021](#ref-Russell2021), pp. 193-196)

##### Eigenschaften guter Spielalgorithmen

-   Zeit begrenzt
    -   Irgendeine gute Entscheidung treffen! =\> Bewertungsfunktion
        (auch für Zwischenzustände)

<!-- -->

-   Speicher begrenzt
    -   Evaluierungsfunktion für Zwischenzustände
    -   Löschen von irrelevanten Zweigen

<!-- -->

-   Strategien nötig
    -   Vorausschauend spielen (Züge "vorhersehen")

##### Wrap-Up

-   Spiele kann man als Suchproblem betrachten
-   Merkmale:
    -   Mehrere Agenten beteiligt
    -   Beobachtbarkeit der Umgebung
    -   Zufallskomponente
    -   Spielstrategie
-   Problem: Riesige Spielbäume
-   Umgang mit begrenzten Ressourcen (Zeit, Speicher)

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Einführung Spiele:
>     Abschnitt 6.1
> -   Ertel ([2025](#ref-Ertel2025)): Kapitel 6.4 "Spiele mit Gegner"
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann Spiele als Suchproblem formulieren
> -   k2: Ich kann Eigenschaften guter Spielalgorithmen erklären
>
> </details>

<a id="id-5438da7280b20127b14a6fc6336d798d64ef51d6"></a>

#### Games: Minimax

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Mit dem Minimax-Algorithmus können optimale Züge berechnet werden.
> Dabei wird von zwei Spielern `Max` und `Min` ausgegangen, die
> abwechselnd ziehen und beide optimal spielen. Wenn `Max` gewonnen hat,
> wird der Spielausgang mit +1 bewertet, wenn `Min` gewonnen hat mit -1,
> und mit 0 sonst. Damit hat man ein sogenanntes "Nullsummenspiel" (der
> Gewinn des einen Spielers ist der Verlust des anderen) und kann den
> Algorithmus so gestalten, dass `Max` stets den Zug wählt, der das
> Spielergebnis maximiert und `Min` entsprechend den Zug wählt, der das
> Spielergebnis minimiert (daher auch die Namen der Spieler).
>
> Minimax baut den gesamten Spielbaum bis zu den Blättern auf. Die
> Blätter (Spielausgang) werden mit einer `Utility`-Funktion bewertet,
> und diese Bewertung wird dann im Spielbaum nach oben gereicht.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Minimax](https://youtu.be/aKtF__lMMsw)
>
> </details>

##### Spiele als Suchproblem: Minimax

###### Terminologie

-   Zwei abwechselnd spielende Spieler: `MAX` und `MIN`, wobei `MAX`
    beginnt

    -   Beide Spieler spielen in jedem Zug optimal
    -   Spielergebnis wird aus Sicht von `MAX` bewertet:
        -   $+1$, wenn Spieler `MAX` gewinnt
        -   $-1$, wenn Spieler `MIN` gewinnt
        -   $0$, wenn unentschieden
    -   Spieler `MAX` versucht, das Spielergebnis zu **maximieren**
    -   Spieler `MIN` versucht, das Spielergebnis zu **minimieren**

-   Startzustand: Initialer Zustand des Spielbrettes

-   Aktionen: Legale Züge, abhängig vom Spielzustand

-   Zieltest: Ist das Spiel vorbei?

    =\> Startzustand und anwendbare Aktionen definieren den
    Zustandsraum.

-   Nutzenfunktion: $\mathop{\text{UTILITY}}(s,p)$: Wert des Spiels für
    Spieler $p$ im Spielzustand $s$

-   Strategie: Spieler benötigen **Strategie**, um zu gewünschtem
    Endzustand zu kommen *(unabhängig von den Entscheidungen des
    Gegenspielers)* =\> einfacher Pfad von Start zu Ziel reicht nicht

*Hinweis*: Nullsummenspiel! (Der Gewinn des einen Spielers ist der
Verlust des anderen Spielers.)

Eine mit dem Minimax-Algorithmus berechnete Strategie wird auch
*Minimax-Strategie* genannt. Sie sichert dem betreffenden Spieler den
höchstmöglichen Gewinn, der **unabhängig** von der Spielweise des
Gegners erreichbar ist.

Bei Nicht-Nullsummenspielen, bei denen die Niederlage des Gegners nicht
zwangsläufig mit dem eigenen Gewinn zusammenfällt (d.h. Gewinn des einen
Spielers $\ne$ Verlust des anderen Spielers), liefert der
Minimax-Algorithmus nicht unbedingt eine optimale Strategie.

###### Spielbaum TTT

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/games/images/tttSpielbaum.png" width="50%" /></p>

###### Minimax (Idee)

1)  Erzeuge kompletten Suchbaum mit Tiefensuche
2)  Wende Nutzenfunktion (*Utility*) auf jeden Endzustand an
3)  Ausgehend von Endzuständen =\> Bewerte Vorgängerknoten:
    -   Knoten ist `Min`-Knoten: Nutzen ist das **Minimum** der
        Kindknoten
    -   Knoten ist `Max`-Knoten: Nutzen ist das **Maximum** der
        Kindknoten
4)  Startknoten: `Max` wählt den Zug, der zum Nachfolger mit der
    höchsten Bewertung führt

*Annahme*: Beide spielen perfekt. Fehler verbessern das Resultat für den
Gegner.

##### Minimax-Algorithmus: Funktionen für MAX- und MIN-Knoten

``` python
def Max-Value(state):
    if Terminal-Test(state): return Utility(state)

    v = -INF
    for (a, s) in Successors(state):
        v = MAX(v, Min-Value(s))
    return v
```

``` python
def Min-Value(state):
    if Terminal-Test(state): return Utility(state)

    v = +INF
    for (a, s) in Successors(state):
        v = MIN(v, Max-Value(s))
    return v
```

**Hinweis I**: Auf
[wikipedia.org/wiki/Minimax](https://en.wikipedia.org/wiki/Minimax#Pseudocode)
finden Sie eine Variante mit einem zusätzlichen Tiefenparameter, um bei
einer bestimmten Suchtiefe abbrechen zu können. Dies ist bereits eine
erweiterte Version, wo man beim Abbruch durch das Erreichen der
Suchtiefe statt `Utility()` eine `Eval()`-Funktion braucht (vgl.
[Minimax: Heuristiken](#id-a9ac054922401b7eb9285dc81c4d01960ce147ec)).

Wenn man ohne Suchtiefenbeschränkung arbeiten will, braucht man diesen
Parameter nicht! Der Algorithmus terminiert auch ohne
Suchtiefenbeschränkung!

**Hinweis II**: Im ([Russell und Norvig 2021, 196](#ref-Russell2021),
Abb. 6.3) findet sich eine Variante, die die auf der nächsten Folien
gezeigte Startfunktion mit den hier gezeigten `Min-Value()`- und
`Max-Value()`-Funktionen verschmilzt. Dabei wird in den beiden
Hilfsfunktionen nicht nur der `min`- bzw. `max`-Wert optimiert, sondern
auch der jeweils beste Zug gespeichert und als Rückgabe zurückgeliefert.

##### Minimax-Algorithmus: Sonderbehandlung Startknoten

``` python
def Minimax(state):
    (val, action) = (-INF, null)
    for (a, s) in Successors(state):
        v = Min-Value(s)
        if (val <= v):
            (val, action) = (v, a)
    return action
```

-   Startknoten ist ein MAX-Knoten
-   Nicht nur Kosten, sondern auch die zugehörige Aktion speichern

##### Minimax Beispiel

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/games/images/minimaxBeispiel.png" width="35%" /></p>

###### Aufwand Minimax

-   maximale Tiefe des Spielbaums: $m$
-   in jedem Zustand $b$ gültige Züge
-   =\> Zeitkomplexität $O(b^m)$

Gedankenexperiment:

-   erster Zug: $b$ Möglichkeiten,
-   zweiter Zug: jeweils wieder $b$ Möglichkeiten $\rightarrow$
    $b \star b = b^2$,
-   dritter Zug: jeweils wieder $b$ Möglichkeiten $\rightarrow$
    $b \star (b \star b) = b^3$,
-   ...,
-   $m$. Zug: jeweils wieder $b$ Möglichkeiten $\rightarrow$ $b^m$

##### Wrap-Up

-   Minimax: Entwickelt Spielbaum, bewertet Zustände entsprechend `Max`
    und `Min`
    -   Gewinn von `Max`: +1, Gewinn von `Min`: -1
    -   `Max` wählt das Maximum der möglichen Züge von `Min`
    -   `Min` wählt das Minimum der möglichen Züge von `Max`
    -   Spielbaum wird bis zu den Blättern entwickelt, Bewertung mit
        `Utility`

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Minimax: Abschnitt
>     6.2
> -   Ertel ([2025](#ref-Ertel2025)): Kapitel 6.4.1 "Minimax-Suche"
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann den Minimax-Algorithmus auf ein Beispiel anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Minimax
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106582&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Optimale Spiele und MiniMax**
>
> Auf einem Tisch liegen nebeneinander 5 Streichhölzer. Es gibt zwei
> Spieler - Weiß und Schwarz - die abwechselnd ein oder zwei
> Streichhölzer wegnehmen dürfen (es muss mind. ein Streichholz genommen
> werden). Wer das letzte Streichholz nehmen muss, hat verloren. Zu
> Beginn ist Weiß am Zug.
>
> 1.  Spielbaum
>
>     Zeichnen Sie den **kompletten** Spielbaum auf. Geben Sie an den
>     Kanten jeweils die Zahl der genommenen und der verbleibenden
>     Hölzer an.
>
>     *Beispiel*: Wenn in einem Zug ein Holz genommen wird und 3 Hölzer
>     verbleiben, steht an der entsprechenden Kante "1/3". Geben Sie
>     jeweils an, welcher Spieler am Zug ist.
>
> 2.  Minimax
>
>     Geben Sie die Bewertung aller Spielzustände mit Hilfe des
>     Minimax-Algorithmus an. Bewerten Sie die Endzustände mit +1, wenn
>     Spieler Weiß gewonnen hat, mit -1, falls Schwarz gewonnen hat.
>
> 3.  Optimaler Zug
>
>     Mit welchem Zug muss Weiß beginnen, um das Spiel garantiert zu
>     gewinnen (beide Spieler verhalten sich stets optimal)?
>     Argumentieren Sie mit der Minimax-Bewertung.
>
> </details>

<a id="id-a9ac054922401b7eb9285dc81c4d01960ce147ec"></a>

#### Games: Heuristiken

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Minimax entwickelt den gesamten Spielbaum. Wenn nicht genug Zeit dafür
> zur Verfügung steht, kann man die Suchtiefe begrenzen. Für die
> Bewertung der Zustände benötigt man eine `Eval`-Funktion, die die
> Knoten in der selben Reihenfolge sortieren sollte wie es in der
> vollständigen Version über die `Utility`-Funktion geschieht. Die
> `Eval`-Funktion sollte zudem schnell zu berechnen sein. Typische
> Varianten für die `Eval`-Funktion sind gewichtete Features oder ein
> Nachschlagen in Spieldatenbanken (Spielzustand plus Bewertung).
>
> Minimax kann auf Spiele mit mehr als zwei Spielern erweitert werden.
> Dabei versucht dann jeder Spieler für sich, das Ergebnis des Spiels
> (aus seiner Sicht) zu maximieren.
>
> Bei Spielen mit Zufall (Würfelereignisse) kann man jedem
> Würfelereignis eine Wahrscheinlichkeit zuordnen und damit den jeweils
> erreichbaren `Max`- oder `Min`-Wert gewichten. Die Summe dieser
> gewichteten Bewertungen ist die Bewertung des entsprechenden
> "Chance"-Knotens, der dann in der darüberliegenden Ebene nach dem
> Minimax-Prinzip ausgewertet wird (=\> *Expectimax*).
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Heuristiken](https://youtu.be/rKqNqYBXuK8)
>
> </details>

##### Wenn die Zeit nicht reicht: Suchtiefe begrenzen

-   Einführung neuer Funktionen:
    1.  `Cutoff-Test` statt `Terminal-Test`

        Beispielsweise bei erreichter Tiefe oder Zeitüberschreitung

    <!-- -->

    2.  `Eval` statt `Utility`

        Bewertung der erreichten Position (statt nur Bewertung des
        Endzustandes)

<!-- -->

-   Bedingungen an `Eval`:
    1.  Endknoten in selber Reihenfolge wie bei `Utility`
    2.  Schnell zu berechnen (!)

##### Beispiel Schach

-   Mögliche Evaluierungskriterien:
    -   Materialwert: Bauer 1, Läufer/Springer 3, Turm 5, Dame 9
    -   Stellungsbewertung: Sicherheit des Königs, Stellung der Bauern
    -   Daumenregeln: 3 Punkte Vorteil =\> sicherer Sieg

<!-- -->

-   Nutzung gewichteter Features $f_i$:
    $\mathop{\text{Eval}}(s) = w_1f_1(s) + w_2f_2(s) + \ldots$

    -   Beispiel: $w_1 = 9$ und $f_1(s)$ = (# weiße Königinnen) - (#
        schwarze Königinnen)

<!-- -->

-   **Alternativ**:
    -   Speicherung von Positionen plus Bewertung in **Datenbanken** =\>
        Lookup mit $\mathop{\text{Eval}}(s)$ (statt Berechnung zur
        Laufzeit)
    -   Training von **ML-Modellen** (Eingabe: Position, Ausgabe:
        Bewertung) =\> Lookup mit $\mathop{\text{Eval}}(s)$ (statt
        Berechnung zur Laufzeit also eine Art Klassifikation der
        aktuellen Position durch das MLP, welches die gelernte Bewertung
        ausgibt)

Oft ist das vollständige Berechnen eines Zweiges im Suchbaum sehr
zeitaufwändig und kostet viele Ressourcen (Speicher, Rechenkapazität).
In einem laufenden Spiel hat man aber nur begrenzt Zeit, und oft laufen
Spiele auf dedizierten Geräten mit eher beschränkter Hardware.

Wenn die einzelnen Zweige nicht mehr bis zu den Blättern berechnet
werden (können), muss man den aktuellen Zustand aber dennoch bewerten
können. Dies wird im Algorithmus durch die Funktion
$\mathop{\text{Eval}}(s)$ erledigt (für den Zustand $s$).

Für diese Funktion kann man unterschiedliche Strategien anwenden:

-   Oft gibt es Heuristiken, mit denen eine Stellung im Spiel ungefähr
    bewertet werden kann (obiges Beispiel: Schach mit der
    Materialbewertung). Damit müssen nicht alle Züge im Vorfeld
    durchgerechnet werden.
-   Eine andere häufig genutzte Strategie ist das Berechnen von
    möglichst vielen Positionen und der jeweiligen Bewertung vor dem
    Spiel und das Abspeichern der Tupel (Position, Bewertung) in einer
    Datenbank. Im Spiel selbst kann man dann relativ schnell die
    Bewertung der aktuellen Position aus der Datenbank holen.
-   Eine weitere häufig angewendete Strategie ist das Trainieren eines
    neuronalen Netzes (etwa Multilagen-Perzeptron, MLP) mit vorab
    berechneten Positionen und Bewertungen. Im Spiel wird dann die
    aktuelle Position in das Netz gegeben und der Output als Bewertung
    genutzt.
-   Eine weitere Strategie ist die Monte Carlo Tree Search. In einer
    Position hat man i.d.R. relativ viele Möglichkeiten, d.h. der Knoten
    im Suchbaum hat entsprechend viele Ausgänge. Statt nun zeitaufwändig
    die vollständige Suche über alle Ausgänge durchzuführen, wird die
    Berechnung nur für zufällig gewählte Zweige durchgeführt und das
    Ergebnis gemittelt und als Schätzung für die Bewertung des Knotens
    genutzt.
-   Zum Berechnen der Bewertungen kann auch Reinforcement Learning
    herangezogen werden. Hier machen die Agenten nacheinander ihre Züge
    und erst am Ende erfolgt eine Bewertung durch den Trainer. Diese
    Bewertung wird dann auf die einzelnen Züge zurückgerechnet, und
    durch mehrfaches Durchspielen immer weiter verbessert.

##### Minimax mit mehreren Spielern

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/games/images/minimax3.png" width="35%" /></p>

Hier maximiert jeder Spieler sein eigenes Ergebnis. Im Grunde müsste
diese Variante dann besser "Maximax" heissen ...

Wenn es an einer Stelle im Suchbaum mehrere gleich gute (beste) Züge
geben sollte, kann der Spieler Allianzen bilden: Er könnte dann einen
Zug auswählen, der für einen der Mitspieler günstiger ist.

##### Zufallsspiele

<p align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Backgammon_lg.png/960px-Backgammon_lg.png" width="60%" /></p>

Quelle: [Backgammon
lg.png](https://commons.wikimedia.org/wiki/File:Backgammon_lg.png) by
[Ptkfgs](https://commons.wikimedia.org/wiki/User:Ptkfgs) on Wikimedia
Commons ([Public
Domain](https://en.wikipedia.org/wiki/en:public_domain))

Backgammon: Was ist in dieser Situation der optimale Zug?

##### Minimax mit Zufallsspielen: ZUFALLS-Knoten

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/games/images/expectimax.png" width="35%" /></p>

Zusätzlich zu den MIN- und MAX-Knoten führt man noch Zufalls-Knoten ein,
um das Würfelergebnis repräsentieren zu können. Je möglichem
Würfelergebnis $i$ gibt es einen Ausgang, an dem die Wahrscheinlichkeit
$P(i)$ dieses Ausgangs annotiert wird.

=\> Für Zufallsknoten **erwarteten** Minimax-Wert (*Expectimax*) nutzen

##### Minimax mit Zufall: Expectimax

Expectimax-Wert für Zufallsknoten $C$:

$$\mathop{\text{Expectimax}}(C) = \sum_i P(i) \mathop{\text{Expectimax}}(s_i)$$

-   $i$ mögliches Würfelergebnis
-   $P(i)$ Wahrscheinlichkeit für Würfelergebnis
-   $s_i$ Nachfolgezustand von $C$ gegeben Würfelergebnis $i$

Für die normalen Min- und Max-Knoten liefert `Expectimax()` die üblichen
Aufrufe von `Min-Value()` bwz. `Max-Value()`.

Auf
[wikipedia.org/wiki/Expectiminimax](https://en.wikipedia.org/wiki/Expectiminimax)
finden Sie eine Variante mit einem zusätzlichen Tiefenparameter, um bei
einer bestimmten Suchtiefe abbrechen zu können. Dies ist bereits eine
erweiterte Version, wo man beim Abbruch durch das Erreichen der
Suchtiefe statt `Utility()` eine `Eval()`-Funktion braucht. Zusätzlich
kombiniert der dort gezeigte Algorithmus die Funktionen `Expectimax()`,
`Min-Value()` und `Max-Value()` in eine einzige Funktion.

Eine ähnliche geschlossene Darstellung finden Sie im ([Russell und
Norvig 2021, 212](#ref-Russell2021)).

**Hinweis**: Üblicherweise sind die Nachfolger der Zufallsknoten gleich
wahrscheinlich. Dann kann man einfach mit dem Mittelwert der Bewertung
der Nachfolger arbeiten.

##### Wrap-Up

-   Minimax:
    -   Kriterien zur Begrenzung der Suchtiefe, Bewertung `Eval` statt
        `Utility`
    -   Erweiterung auf $>2$ Spieler
    -   Erweiterung auf Spiele mit Zufall: *Expectimax*

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Erweiterungen und
>     Heuristiken: Abschnitte 6.2.2, 6.3, 6.5
> -   Ertel ([2025](#ref-Ertel2025)): Kapitel 6.5 "Heuristische
>     Bewertungsfunktionen"
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Erweiterung von Minimax für mehr als zwei Spieler
>     erklären
> -   k2: Ich kann die Erweiterung von Minimax mit Zufallskomponenten
>     erklären
> -   k2: Ich kann die Heuristik erklären: Sortierung der Nachfolger
> -   k2: Ich kann erklären, wie die Suchtiefe beschränkt werden kann
>     durch den Übergang zu Bewertungsfunktion
> -   k2: Ich kann erklären, wie eine Stellungsbewertung über
>     Spieldatenbanken funktioniert
> -   k3: Ich kann den Minimax-Algorithmus implementieren
> -   k3: Ich kann Tiefenbeschränkung und Bewertungsfunktion bei Minimax
>     einsetzen
>
> </details>

<a id="id-c8c274bfbd36e9fdbf8c47df5f99c064b06d9ff3"></a>

#### Games: Alpha-Beta-Pruning

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Minimax entwickelt den gesamten Spielbaum. Wenn man dabei die bisher
> besten Werte für MAX und MIN als $\alpha$ und $\beta$ mitführt,
> beobachtet man, dass ein $\alpha$-Wert nie kleiner wird und ein
> $\beta$-Wert nie größer wird. Dies kann man ausnutzen und das
> Entwickeln von Pfaden abbrechen, wenn in einem MIN-Knoten der
> $\beta$-Wert kleiner wird als der $\alpha$-Wert des MAX-Vorgängers:
> (a) kann der $\beta$-Wert bei der weiteren Untersuchung der
> verbleibenden Nachfolger im MIN-Knoten nur noch kleiner werden, und
> (b) würde der MAX-Vorgänger diesen MIN-Knoten nie als Nachfolger in
> Betracht ziehen, da er bereits einen besseren Zug gesehen hat (da sein
> $\alpha$ größer ist als das $\beta$ im Nachfolger). Deshalb kann man
> hier sofort die Untersuchung der verbleibenden Nachfolger im
> MIN-Knoten abbrechen ("Pruning"). Eine analoge Überlegung gilt für
> einen MAX-Nachfolger unter einem MIN-Knoten.
>
> Dabei bleibt das Endergebnis erhalten. Man schneidet nur Suchpfade
> weg, die das Ergebnis von Minimax nicht verändern.
>
> Die mögliche Effizienzsteigerung ist sehr stark abhängig von
> Sortierung der Nachfolger! Deshalb stellt man häufig Heuristiken zur
> "richtigen" Sortierung der Nachfolger auf ("Killer-Moves").
>
> Zusätzlich kann man wie bei Minimax auch die Suchtiefe begrenzen und
> eine Bewertungsfunktion (statt der Nutzenfunktion) einsetzen. Auch
> hier kann die Bewertungsfunktion wieder gewichtete Features nutzen
> und/oder Positionen mit in Datenbanken gespeicherten Positionen und
> Bewertungen abgleichen.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Alpha-Beta-Pruning](https://youtu.be/_Hq-GCl__bU)
>
> </details>

##### Verbesserung Minimax-Algorithmus

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/games/images/minimax.png" width="35%" /></p>

=\> **Minimax-Baum**: Verbesserungen möglich?

##### Alpha-beta-Pruning

Minimax-Algorithmus mit zusätzlichen Informationen:

-   $\alpha$: bisher bester Wert für MAX (höchster Wert)
-   $\beta$: bisher bester Wert für MIN (kleinster Wert)

=\> Beobachtungen:

1.  $\alpha$ für MAX-Knoten wird nie kleiner
2.  $\beta$ für MIN-Knoten wird nie größer

##### Pruning-Regeln

1.  Schneide (unter) MIN-Knoten ab, deren $\beta$ $\le$ dem $\alpha$ des
    MAX-Vorgängers ist.

<!-- -->

2.  Schneide (unter) MAX-Knoten ab, deren $\alpha$ $\ge$ dem $\beta$ des
    MIN-Vorgängers ist.

<div align="center">

Abbruch, wenn kein Platz mehr zwischen Alpha und Beta

</div>

##### Alpha-beta-Pruning -- Der Algorithmus (Skizze)

``` python
def Max-Value(state, alpha, beta):
    if Terminal-Test(state): return Utility(state)

    v = -INF
    for (a, s) in Successors(state):
        v = MAX(v, Min-Value(s, alpha, beta))
        if (v >= beta): return v
        alpha = MAX(alpha, v)
    return v
```

``` python
def Min-Value(state, alpha, beta):
    if Terminal-Test(state): return Utility(state)

    v = +INF
    for (a, s) in Successors(state):
        v = MIN(v, Max-Value(s, alpha, beta))
        if (v <= alpha): return v
        beta = MIN(beta, v)
    return v
```

Initialer Aufruf von `Max-Value()` mit $\alpha = -\infty$ und
$\beta = +\infty$

**Achtung**: Es kursieren Varianten von diesem Algorithmus, bei denen
auf die Hilfsvariable `v` verzichtet wird und stattdessen `alpha` bzw.
`beta` direkt modifiziert werden und als Rückgabewert dienen. Das *kann*
zu anderen oder falschen Ergebnissen führen! Sie können das in der
Aufgabe auf Blatt 03 gut beobachten.

Hier noch zwei Links zu Online-Simulatoren für Minimax und
Alpha-Beta-Pruning:

[homepage.ufp.pt/jtorres/ensino/ia/alfabeta.html](http://homepage.ufp.pt/jtorres/ensino/ia/alfabeta.html)

[raphsilva.github.io/utilities/minimax_simulator/](https://raphsilva.github.io/utilities/minimax_simulator/#)
(englische Variante von https://github.com/lerneumann/minimax)

Vergleichen Sie die Ergebnisse im Simulator mit den selbst berechneten
Werten.

##### Alpha-beta-Pruning -- Eigenschaften

1.  Pruning beeinflusst nicht das Endergebnis!

2.  Sortierung der Nachfolger spielt große Rolle

3.  Perfekte Sortierung: $O(b^{d/2})$ =\> Verdopplung der Suchtiefe
    möglich

Für Schach immer noch zu aufwändig ...

##### Verbesserungen für Alpha-beta-Pruning

-   "Killer-Move": Maximale Effizienz nur wenn **optimaler Zug immer
    zuerst** untersucht =\> Zu untersuchende Züge
    **sortieren/priorisieren**, zb. Schach:
    a)  Figuren schlagen
    b)  Drohen
    c)  Vorwärts ziehen
    d)  Rückwärts ziehen

<!-- -->

-   Verändern der Suchtiefe nach Spielsituation

<!-- -->

-   Bewertungsfunktion `Eval`:
    -   Datenbanken mit Spielsituationen und Expertenbewertung:
        -   Eröffnungsspiele (besonders viele Verzweigungen)
        -   Endspiele
    -   Lernen der optimalen Gewichte für `Eval`-Funktion
    -   Berücksichtigung von Symmetrien

##### Beispiel DeepBlue (IBM, 1997)

-   Alpha-beta-Pruning mit Tiefenbeschränkung: ca. 14 Halbzüge
-   Dynamische Tiefenbeschränkung (stellungsabhängig, max. ca. 40 Züge)
-   Heuristische Stellungsbewertung `Eval`:
    -   mehr als 8.000 Features
    -   ca. 4.000 Eröffnungsstellungen
    -   ca. 700.000 Spielsituationen (von Experten bewertet)
    -   Endspiel-Datenbank: alle Spiele mit 5 Steinen, viele mit 6
        Steinen

Quelle: ([Russell und Norvig 2014](#ref-Russell2014), p. 185)

##### Beispiel AlphaGo (Google, 2016)

-   Beschränkung der Suchtiefe: Bewertung der Stellung durch *"Value
    Network"*
-   Beschränkung der Verzweigungsbreite: Bestimmung von Zugkandidaten
    durch *"Policy Network"*

<!-- -->

-   Training dieser *"Deep Neural Networks"*:
    -   Überwachtes Lernen: "Analyse" von Spiel-Datenbanken
    -   Reinforcement-Lernen: Self-Play, Bewertung am Ende
        -   Züge mit Monte-Carlo-Baumsuche ausgewählt

Quelle: ([<span class="nocase">Silver u. a.</span>
2016](#ref-Silver2016)), siehe auch
[deepmind.com/research/alphago/](https://deepmind.com/research/case-studies/alphago-the-story-so-far)

##### Wrap-Up

-   Alpha-beta-Pruning:
    -   Mitführen der bisher besten Werte für MAX und MIN: $\alpha$ und
        $\beta$
    -   Abschneiden von Pfaden, die Verschlechterung bewirken würden
    -   Endergebnis bleibt erhalten
    -   Effizienzsteigerung abhängig von Sortierung der Nachfolger

<!-- -->

-   Viele Verbesserungen denkbar:
    -   Zu untersuchende Züge "richtig" sortieren (Heuristik)
    -   Suchtiefe begrenzen und Bewertungsfunktion (statt
        Nutzenfunktion)
    -   Positionen mit Datenbank abgleichen

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Alpha-beta-Pruning:
>     Abschnitt 6.2.3, Erweiterungen: Abschnitt 6.3
> -   Ertel ([2025](#ref-Ertel2025)): Kapitel 6.4.2 "Alpha-Beta-Pruning"
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann Alpha-Beta-Pruning implementieren und anwenden
> -   k2: Ich kann die Anwendung verschiedener von Minimax her bekannter
>     Optimierungsmöglichkeiten auf Alpha-Beta-Pruning erklären:
>     Sortierung der Nachfolger, Suchtiefe beschränken (Übergang zu
>     Bewertungsfunktion), Spielzug-Bewertung über Spieldatenbanken
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Alpha-Beta-Pruning
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106584&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Optimale Spiele und MiniMax**
>
> Auf einem Tisch liegen nebeneinander 5 Streichhölzer. Es gibt zwei
> Spieler - Weiß und Schwarz - die abwechselnd ein oder zwei
> Streichhölzer wegnehmen dürfen (es muss mind. ein Streichholz genommen
> werden). Wer das letzte Streichholz nehmen muss, hat verloren. Zu
> Beginn ist Weiß am Zug.
>
> 1.  Spielbaum
>
>     Zeichnen Sie den **kompletten** Spielbaum auf. Geben Sie an den
>     Kanten jeweils die Zahl der genommenen und der verbleibenden
>     Hölzer an.
>
>     *Beispiel*: Wenn in einem Zug ein Holz genommen wird und 3 Hölzer
>     verbleiben, steht an der entsprechenden Kante "1/3". Geben Sie
>     jeweils an, welcher Spieler am Zug ist.
>
> 2.  Minimax
>
>     Geben Sie die Bewertung aller Spielzustände mit Hilfe des
>     Minimax-Algorithmus an. Bewerten Sie die Endzustände mit +1, wenn
>     Spieler Weiß gewonnen hat, mit -1, falls Schwarz gewonnen hat.
>
> 3.  Alpha-Beta-Pruning
>
>     Wenden Sie Alpha-Beta-Pruning auf den Spielbaum an. Werden damit
>     mehr oder weniger oder gleich viele Spielzüge wie mit Minimax
>     entwickelt? Begründen Sie Ihre Antwort.
>
> </details>

<a id="id-01bf667ff8abdbb608ee25a2d6f7a5f3ed39d939"></a>

### Entscheidungsbäume (Decision Tree Learner - DTL)

Beim überwachten Lernen soll eine Hypothese aufgebaut werden, die der
echten (zu lernenden) Funktion möglichst nahe kommt. Eine Hypothese kann
im einfachsten Fall als Entscheidungsbaum dargestellt werden. Die
Merkmale bilden dabei die Knoten im Baum, und je Ausprägung gibt es eine
Kante zu einem Nachfolgerknoten. Ein Merkmal bildet die Wurzel des
Baums, an den Blättern sind die Klassen zugeordnet.

Einen Entscheidungsbaum kann man zur Klassifikation eines Objekts
schrittweise durchlaufen: Für jeden Knoten fragt man die Ausprägung des
Merkmals im Objekt ab und wählt den passenden Ausgang aus dem Knoten.
Wenn man am Blatt angekommen ist, hat man die Antwort des Baumes auf das
Objekt, d.h. üblicherweise die Klasse.

<a id="id-82f362361464406c7ba09ef4a0893a4e32983b94"></a>

#### DTL: Machine Learning 101

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lernen wird in der KI oft als Verhaltensänderung (eines Systems)
> aufgefasst. Dabei soll eine Gütefunktion optimiert werden.
>
> Je nach verfügbarem Feedback eines "Lehrers" werden typischerweise
> drei Arten von Lernen unterschieden: Überwachtes Lernen, Unüberwachtes
> Lernen, Reinforcement Lernen. Dabei stellt der Lehrer beim überwachten
> Lernen Trainingsbeispiele plus eine Vorgabe (Klasse, Funktionswert)
> zur Verfügung, während beim unüberwachten Lernen nur die
> Trainingsbeispiele bereitgestellt werden und der Algorithmus selbst
> Zusammenhänge in den Daten erkennen soll. Beim Reinforcement Learning
> erfolgt das Feedback am Ende einer Kette von Aktionen, d.h. der
> Algorithmus muss diese Bewertung auf die einzelnen Aktionen
> zurückrechnen.
>
> Beim überwachten Lernen soll eine Hypothese aufgebaut werden, die der
> echten (zu lernenden) Funktion möglichst nahe kommt. Eine konsistente
> Hypothese erklärt die Trainingsdaten, eine generalisierende Hypothese
> kann auch unbekannte Daten (die aus der selben Quelle stammen, also
> zum selben Problem gehören) korrekt bewerten. Es wird unterschieden
> zwischen Klassifikation (einige wenige diskrete Label/Klassen, die den
> Trainingsbeispielen zugeordnet sind) und Regression (Lernen eines
> Funktionsverlaufs).
>
> Merkmalsvektoren gruppieren Eigenschaften des Problems bzw. der
> Objekte, d.h. jedes Objekt kann über einen Merkmalsvektor beschrieben
> werden. Trainingsdaten sind ausgewählte Beispielobjekte (durch
> Merkmalsvektoren beschrieben) plus die Vorgabe (Klasse oder
> Funktionswert) vom Lehrer.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Machine Learning 101](https://youtu.be/FliWEXQZhsw)
>
> </details>

##### Was ist Lernen?

> Verhaltensänderung eines Agenten in Richtung der Optimierung eines
> Gütefunktionals (Bewertungsfunktion) durch Erfahrung.

##### Warum Lernen?

-   Nicht alle Situationen vorhersehbar
-   Nicht alle Details modellierbar
-   Lösung oder Lösungsweg unbekannt, nicht explizit programmierbar
-   Data Mining: Entdeckung neuen Wissens durch Analyse der Daten
-   Selbstanpassende Programme

=\> Lernen wichtige Eigenschaft lebender Wesen :-)

##### Learning Agent

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/dtl/images/learning.png" width="70%" /></p>

##### Feedback während des Lernens

-   **Überwachtes Lernen**
    -   Lernen durch Beobachtung
    -   Vorgabe von Beispielen: Ein- und Ausgabewerte

    =\> Regression, Klassifikation

<!-- -->

-   **Unüberwachtes Lernen**
    -   Erkennen von Mustern in den Inputdaten, Clustering
    -   Kein Feedback (!)

<!-- -->

-   **Reinforcement Lernen**
    -   Bewertung der Aktionen des Agenten am Ende einer Aktionsfolge

**Beispiel Kleinkind**: Lernen von Klassen/Konzepten durch Beispiele

-   Zuerst ist alles "Katze" (Übergeneralisierung)
-   Differenzierung durch Feedback der Umwelt; Erkennung
    unterschiedlicher Ausprägungen

##### Beispiel: Kreditrisiko

-   Bankkunde beantragt Kredit
-   Soll er aus Sicht der Bank den Kredit bekommen?

<!-- -->

-   Bankangestellter betrachtet (relevante) Merkmale des Kunden:
    -   Alter, Einkommen, sozialer Status
    -   Kundenhistorie bei der Bank
    -   Höhe des Kredits

<!-- -->

-   Bewertung des Kreditrisikos:
    -   **Klassifikation**: Guter oder schlechter Kunde (Binäre
        Entscheidung: 2 Klassen)
    -   **Regression**: Vorhersage Gewinn/Verlust für die Bank (Höhe des
        Gewinns/Verlusts interessant)

##### Beispiel: Autoreparatur

-   **Gegeben**: Eigenschaften eines Autos

    =\> Eigenschaften: Ausprägungen der Merkmale

<!-- -->

-   **Gesucht**: Diagnose und Reparaturanleitung

    =\> Hypothese über den Merkmalen (Funktion $\mathop{\text{h}}$)

##### Lernen durch Beobachten: Lernen einer Funktion $\mathop{\text{f}}$

Funktionsapproximation: Lernen einer Funktion $\mathop{\text{f}}$ anhand
von Beispielen

-   Ein Beispiel ist ein Tupel
    $(\mathbf{x}, \mathop{\text{f}}(\mathbf{x}))$, etwa
    $$(\mathbf{x}, \mathop{\text{f}}(\mathbf{x})) = \left(\begin{array}{ccc}
    O & O & X \\
    . & X & . \\
    X & . & .
    \end{array}, +1\right)$$

<!-- -->

-   Aufgabe: Baue Hypothese $\mathop{\text{h}}$ auf, so dass
    $\mathop{\text{h}} \approx \mathop{\text{f}}$.
    -   Benutze dazu Menge von Beispielen =\> **Trainingsdaten**.

<!-- -->

-   Ziele:
    1.  **Konsistente Hypothese**: Übereinstimmung bei Trainingsdaten
    2.  **Generalisierende Hypothese**: Korrekte Vorhersage bei
        unbekannten Daten

*Anmerkung*: Stark vereinfachtes Modell realen Lernens!

##### Konstruieren einer konsistenten Hypothese

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/dtl/images/occams1.png" width="40%" /></p>

Welcher Zusammenhang ist hier dargestellt? Offenbar eine Art
Funktionsverlauf ... Wir haben für einige x-Werte die zugehörigen
y-Werte vorgegeben.

##### Konstruieren einer konsistenten Hypothese (cnt.)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/dtl/images/occams2.png" width="40%" /></p>

Die einfachste Approximation wäre eine lineare Funktion. Allerdings
werden hierbei einige Werte mehr oder weniger stark nicht korrekt
widergegeben, d.h. man hat einen relativ hohen (Trainings-) Fehler.

##### Konstruieren einer konsistenten Hypothese (cnt.)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/dtl/images/occams3.png" width="40%" /></p>

Die Hyperbel erklärt die Trainingsdaten bis auf den einen Punkt sehr
gut. Die Frage ist, ob dieser eine Punkt zum zu lernenden Zusammenhang
gehört oder ein Ausreißer ist, den man gefahrlos ignorieren kann?

##### Konstruieren einer konsistenten Hypothese (cnt.)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/dtl/images/occams4.png" width="40%" /></p>

Die grüne Hypothese ist von allen bisher gezeigten die komplexeste,
erklärt aber alle Datenpunkte. D.h. hier wäre der Trainingsfehler Null.
Zwischen den Trainingsdaten zeigt das Modell eine "glatte"
Approximation, d.h. es wird auch neue Daten, die es beim Training nicht
gesehen hat, relativ gut erklären. (Dabei liegt freilich die Annahme
zugrunde, dass alle relevanten Daten in der Trainingsmenge vorhanden
sind, d.h. dass es insbesondere zwischen den Datenpunkten keine
Ausreißer o.ä. gibt.)

##### Konstruieren einer konsistenten Hypothese (cnt.)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/dtl/images/occams5.png" width="40%" /></p>

Diese Hypothese erklärt ebenfalls sämtliche Trainingsdaten. Allerdings
schwingt die Funktion zwischen den Daten stark hin und her. Vermutlich
entspricht dies nicht dem zu lernenden Funktionsverlauf. Der
Trainingsfehler wäre wie bei der deutlich einfacheren Hypthese aus dem
letzten Schritt Null. Der Generalisierungsfehler (sprich die Abweichung,
wenn man das Modell nach Daten zwischen den Trainingspunkten fragt)
dürfte erheblich höher liegen.

D.h. hier hat das Modell einfach die Trainingsdaten auswendig gelernt,
aber nicht den Zusammenhang zwischen den Daten! Dies ist in der Regel
unerwünscht!

##### Occam's Razor

**Bevorzuge die einfachste konsistente Hypothese!**

1.  Wenn es mehrere mögliche Erklärungen für einen Sachverhalt gibt, ist
    die einfachste Erklärung allen anderen vorzuziehen.
2.  Eine Erklärung ist "einfach", wenn sie möglichst wenige Variablen
    und Annahmen enthält und wenn diese in klaren logischen Beziehungen
    zueinander stehen, aus denen der zu erklärende Sachverhalt logisch
    folgt.

##### Trainingsdaten und Merkmalsvektoren

Lehrer gibt Beispiele vor: Eingabe $\mathbf{x}$ und passende Ausgabe
$\mathop{\text{f}}(\mathbf{x})$

-   Ausgabe: typischerweise Skalar (Funktionswert oder Klasse) =\>
    Beispiel: Bewertung eines Spielstandes bei TicTacToe

<!-- -->

-   Eingabe: (Beschreibung des) Objekt(s) oder Situation, die zur
    Ausgabe gehört =\> Beispiel: Spielstand bei TicTacToe

**Merkmalsvektoren**:

-   Zusammenfassen der relevanten Merkmale zu Vektoren

##### Beispiel: Schwimmen im See

Beschreibung der Faktoren, wann ich im See schwimmen möchte:

1.  Scheint die Sonne?
2.  Wie warm ist das Wasser?
3.  Wie warm ist die Luft?

-   Trainingsbeispiel:
    -   Eingabe: Merkmalsvektor `(sonnig, warm, warm)`
    -   Ausgabe: Klasse `ja`

Dabei wird davon ausgegangen, dass jeder Faktor (jedes Merkmal) an einer
bestimmten Stelle im Merkmalsvektor aufgeführt ist. Beispielsweise
gehört das `sonnig` zur Frage "Scheint die Sonne", `warm` jeweils zur
Wasser- und zur Lufttemperatur.

Damit hat man in einem Vektor eine Situation komplett beschrieben, d.h.
einen Zustand der Welt mit den relevanten Dingen beschrieben. Diesem
Zustand kann man beispielsweise ein Label (Klasse) verpassen, hier in
diesem Fall "ja, in dieser Welt möchte ich schwimmen".

Die Trainingsmenge baut sich dann beim überwachten Lernen aus vielen
solcher Paare (Merkmalsvektor, Klasse) auf, und die Algorithmen sollen
diese Zuordnung lernen, d.h. ein Modell für diese Daten erzeugen,
welches die Daten gut erklärt und darüber hinaus für neue Daten aus der
selben Datenquelle gute Vorhersagen macht.

##### Trainingsdaten -- Merkmalsvektoren

**Generell**: Merkmalsvektor für Objekt $v$:
$$    \mathbf{x}(v) = (x_1, x_2, \ldots, x_n)$$

-   $n$ Merkmale (Attribute)
-   Attribut $x_t$ hat $m_t$ mögliche Ausprägungen
-   Ausprägung von $v$ bzgl. $x_t$: $\quad x_t(v) = i \quad$ (mit
    $i = 1 \ldots m_t$)

*Anmerkung*: Stellen Sie sich den Merkmalsvektor $\mathbf{x}$ vielleicht
wie einen Konstruktor einer Klasse `x` vor: Die einzelnen Attribute
$x_t$ sind die Parameter, aus denen der Merkmalsvektor aufgebaut
ist/wird. Jedes der Attribute hat einen Typ und damit eine bestimmte
Anzahl erlaubter Werte ("Ausprägungen") ...

**Trainingsbeispiel**:

-   Tupel aus Merkmalsvektor und zugehöriger Klasse:
    $\left(\mathbf{x}(v), k\right)$

##### Wrap-Up

-   Lernen ist Verhaltensänderung, Ziel: Optimierung einer Gütefunktion
    -   Aufbau einer Hypothese, die beobachtete Daten erklären soll
    -   Arten: Überwachtes Lernen, Unüberwachtes Lernen, Reinforcement
        Lernen

<!-- -->

-   Merkmalsvektoren gruppieren Eigenschaften des Problems bzw. der
    Objekte
-   Trainingsdaten: Beispielobjekte (durch Merkmalsvektoren beschrieben)
    plus Vorgabe vom Lehrer

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Lernen: Abschnitte
>     19.1 und 19.2
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k1: Ich kann den Begriff "(maschinelles) Lernen" definieren und
>     verschiedene Arten unterscheiden
> -   k2: Ich kann "Überwachtes Lernen" erklären: Lernen durch
>     Beobachten (mit Lehrer)
> -   k2: Ich kann wichtige Elemente des (maschinellen) Lernens
>     erklären: Merkmalsvektoren, Eigenschaften, Ausprägung, Objekte,
>     Trainingsmenge
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Intro ML
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106589&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Modellierung**
>
> Sie stehen vor der Entscheidung, ob Sie sich zur Vorbereitung auf die
> Flipped-Classroom-Sitzung noch das Skript anschauen. Welche Attribute
> benötigen Sie, um die Situation zu beschreiben?
>
> **Metriken für Klassifikatoren**
>
> Es ist wieder Wahlkampf: Zwei Kandidaten O und M bewerben sich um die
> Kanzlerschaft. Die folgende Tabelle zeigt die Präferenzen von sieben
> Wählern.
>
> | Nr. | Alter    | Einkommen | Bildung  | Kandidat | Vorhersage |
> |:----|:---------|:----------|:---------|:---------|:-----------|
> | 1   | $\ge 35$ | hoch      | Abitur   | O        | O          |
> | 2   | $< 35$   | niedrig   | Master   | O        | O          |
> | 3   | $\ge 35$ | hoch      | Bachelor | M        | M          |
> | 4   | $\ge 35$ | niedrig   | Abitur   | M        | M          |
> | 5   | $\ge 35$ | hoch      | Master   | O        | O          |
> | 6   | $< 35$   | hoch      | Bachelor | O        | M          |
> | 7   | $< 35$   | niedrig   | Abitur   | M        | O          |
>
> Auf diesem Datensatz wurde ein Klassifikator trainiert, die
> Trainingsergebnisse sind in der Tabelle unter "Vorhersage" angegeben.
>
> Bewerten Sie den Klassifikator.
> </details>

<a id="id-4807e4a11529854b6d77f86cd3ca37caabc11cc9"></a>

#### DTL: CAL2

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Eine Hypothese kann im einfachsten Fall als Entscheidungsbaum
> dargestellt werden. Die Merkmale bilden dabei die Knoten im Baum, und
> je Ausprägung gibt es eine Kante zu einem Nachfolgerknoten. Ein
> Merkmal bildet die Wurzel des Baums, an den Blättern sind die Klassen
> zugeordnet.
>
> Einen Entscheidungsbaum kann man zur Klassifikation eines Objekts
> schrittweise durchlaufen: Für jeden Knoten fragt man die Ausprägung
> des Merkmals im Objekt ab und wählt den passenden Ausgang aus dem
> Knoten. Wenn man am Blatt angekommen ist, hat man die Antwort des
> Baumes auf das Objekt, d.h. üblicherweise die Klasse.
>
> Den Baum kann man mit dem Algorithmus CAL2 schrittweise aufbauen. Man
> startet mit "Nichtwissen" (symbolisiert mit einem "\*") und iteriert
> durch alle Trainingsbeispiele, bis der Baum sich nicht mehr verändert.
> Wenn der Baum auf ein Beispiel einen "\*" ausgibt, dann ersetzt man
> diesen "\*" mit der Klasse des eben betrachteten Beispiels. Wenn der
> Baum bei einem Beispiel die passende Klasse ausgibt, macht man mit dem
> nächsten Beispiel weiter. Wenn der Baum bei einem Beispiel eine andere
> Klasse ausgibt, muss das Klassensymbol im Baum (an der Stelle, wo das
> Objekt gelandet ist) durch den nächsten Test ersetzt werden: Hierzu
> nimmt man das nächste, auf diesem konkreten Pfad noch nicht verwendete
> Merkmal. CAL2 kann nur mit diskreten Attributen und disjunkten Klassen
> einen fehlerfreien Baum erzeugen.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL CAL2](https://youtu.be/bR_QVYtPRx8)
>
> </details>

##### Entscheidungsbäume: Klassifikation

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/dtl/images/xor-decision-tree.png" width="60%" /></p>

-   Attribute als Knoten im Baum
-   Ausprägungen als Test (Ausgang, Verzweigung)
-   Klasse (Funktionswert) als Blatt

Erinnern Sie sich an das Beispiel mit der Auto-Reparatur aus der letzten
Sitzung.

Die relevanten Eigenschaften (Merkmale) eines Autos würden als Knoten im
Baum repräsentiert. Beispiel: "Motor startet" oder "Farbe".

Jedes Merkmal hat eine Anzahl von möglichen Ausprägungen, diese
entsprechen den Verzweigungen am Knoten. Beispiel: "startet", "startet
nicht" oder "rot", "weiß", "silber", ... .

Entsprechend kann man durch Abarbeiten des Entscheidungsbaumes am Ende
zu einer Diagnose gelangen (Klasse).

Eine andere Sichtweise ist die Nutzung als Checkliste für eine Reparatur
...

##### Definition Entscheidungsbaum

-   Erinnerung: **Merkmalsvektor** für Objekt $v$:
    $$    \mathbf{x}(v) = (x_1, x_2, \ldots, x_n)$$

    -   $n$ Merkmale (Attribute)
    -   Attribut $x_t$ hat $m_t$ mögliche Ausprägungen
    -   Ausprägung von $v$ bzgl. $x_t$: $\quad x_t(v) = i \quad$ (mit
        $i = 1 \ldots m_t$)

<!-- -->

-   **Alphabet** für Baum:
    $$\lbrace x_t | t=1,\ldots,n \rbrace \cup \lbrace \kappa | \kappa = \ast,A,B,C,\ldots \rbrace \cup \lbrace (,) \rbrace$$

<!-- -->

-   **Entscheidungsbaum** $\alpha$:
    $$\alpha = \left\lbrace  \begin{array}{ll}
            \kappa  & \text{Terminalsymbole: } \kappa = \ast,A,B, \ldots\\
            x_t(\alpha_1, \alpha_2, \ldots, \alpha_{m_t}) & x_t \text{ Testattribut mit } m_t \text{ Ausprägungen}
        \end{array}\right.$$

*Anmerkung*: Stellen Sie sich die linearisierte Schreibweise wieder wie
den (verschachtelten) Aufruf von Konstruktoren vor. Es gibt die
Oberklasse `Baum`, von der für jedes Attribut eine Klasse abgeleitet
wird. D.h. der Konstruktor für eine Attributklasse erzeugt letztlich ein
Objekt vom Obertyp `Baum`. Außerdem sind die Terminalsymbole `A`, `B`,
... Objekte vom Typ `Blatt`, welches eine Unterklasse von `Baum` ist ...

Dabei wird die Anzahl der möglichen Ausprägungen für ein Attribut
berücksichtigt: Jede Ausprägung hat einen Parameter im Konstruktor.
Damit werden die Unterbäume beim Erzeugen des Knotens übergeben.

##### Induktion von Entscheidungsbäumen: CAL2

1)  Anfangsschritt: $\alpha^{(0)} = \ast$ (totales Unwissen)

2)  $n$-ter Lernschritt: Objekt $v$ mit Klasse $k$, Baum
    $\alpha^{(n-1)}$ gibt $\kappa$ aus

    -   $\kappa = \ast$: ersetze $\ast$ durch $k$
    -   $\kappa = k$: keine Aktion nötig
    -   $\kappa \neq k$: Fehler
        -   Ersetze $\kappa$ mit neuem Test:
            $\kappa \gets x_{t+1}(\ast, \ldots, \ast, k, \ast, \ldots, \ast)$
        -   $x_{t+1}$: nächstes Attribut, auf dem aktuellen Pfad noch
            nicht verwendet
        -   Symbol $k$ an Position $i$ wenn $x_{t+1}(v) = i$

$\alpha^{(n)}$ bezeichnet den Baum im $n$-ten Lernschritt.

CAL2 ist ein **Meta-Algorithmus**: Es ist ein Algorithmus, um einen
Algorithmus zu lernen :-)

##### Beispiel mit CAL2

| $x_1$ | $x_2$ | $x_3$ | $k$ |
|:------|:------|:------|:----|
| 0     | 0     | 1     | A   |
| 1     | 0     | 0     | A   |
| 0     | 1     | 4     | B   |
| 1     | 1     | 2     | B   |
| 0     | 0     | 3     | A   |

**Ergebnis**: $x_1(x_2(A, B), x_2(A, B))$

*Anmerkung*: Denken Sie an die Analogie von oben. $x_1$ kann als
Konstruktor einer Klasse `x1` betrachtet werden, die eine Unterklasse
von `Baum` ist. Durch den Aufruf des Konstruktors wird als ein `Baum`
erzeugt.

Es gibt in $x_1$ zwei mögliche Ausprägungen, d.h. der Baum hat in diesem
Knoten zwei alternative Ausgänge. Diese Unterbäume werden dem
Konstruktor von `x1` direkt beim Aufruf übergeben (müssen also
Referenzen vom Typ `Baum` sein).

##### CAL2: Bemerkungen

-   Nur für diskrete Merkmale und disjunkte Klassen

<!-- -->

-   Zyklischer Durchlauf durch Trainingsmenge
-   Abbruch:
    -   Alle Trainingsobjekte richtig klassifiziert =\> Kein Fehler in
        einem kompletten Durchlauf
    -   (Differenzierung nötig, aber alle Merkmale verbraucht)
    -   (Lernschrittzahl überschritten)

##### Wrap-Up

-   Darstellung der Hypothese als Entscheidungsbaum
-   CAL2: diskrete Attribute, disjunkte Klassen

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Unger und Wysotzki ([1981](#ref-Unger1981)): Der Vollständigkeit
>     halber aufgeführt (Werk ist leider vergriffen und wird nicht mehr
>     verlegt)
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann den Entscheidungsbaumlerner CAL2 auf ein Beispiel
>     anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest CAL2
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106575&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Modellierung**
>
> Sie stehen vor der Entscheidung, ob Sie sich zur Vorbereitung auf die
> Flipped-Classroom-Sitzung noch das Skript anschauen.
>
> Zeichnen Sie einen Entscheidungsbaum, der Ihnen bei der Entscheidung
> hilft.
>
> **Textklassifikation**
>
> Betrachten Sie die folgenden Aussagen:
>
> > -   Patient A hat weder Husten noch Fieber und ist gesund.
> > -   Patient B hat Husten, aber kein Fieber und ist gesund.
> > -   Patient C hat keinen Husten, aber Fieber. Er ist krank.
> > -   Patient D hat Husten und kein Fieber und ist krank.
> > -   Patient E hat Husten und Fieber. Er ist krank.
>
> Aufgaben:
>
> 1.  Trainieren Sie auf diesem Datensatz einen Klassifikator mit CAL2.
> 2.  Ist Patient F krank? Er hat Husten, aber kein Fieber.
>
> **Handsimulation CAL2**
>
> Zeigen Sie mit einer Handsimulation, wie CAL2 mit dem folgenden
> Trainingsdatensatz schrittweise einen Entscheidungsbaum generiert.
> Nutzen Sie die linearisierte Schreibweise.
>
> | Beispiel | $x_1$ | $x_2$ | $x_3$ | Klasse |
> |:--------:|:-----:|:-----:|:-----:|:------:|
> |    1     |   a   |   a   |   a   |   1    |
> |    2     |   a   |   b   |   a   |   2    |
> |    3     |   a   |   a   |   b   |   1    |
> |    4     |   b   |   a   |   b   |   1    |
> |    5     |   a   |   a   |   c   |   1    |
> |    6     |   b   |   b   |   b   |   2    |
>
> Welchen Entscheidungsbaum würde CAL2 lernen, wenn dem
> Trainingsdatensatz der Vektor $((a,a,b), 2)$ als Beispiel Nr. 7
> hinzugefügt werden würde?
> </details>

<a id="id-19ffac22140785b62f48ef3e44c1bde3a43d2054"></a>

#### DTL: Pruning

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Pruning ist das Entfernen redundanter und irrelevanter Tests
> (Merkmale).
>
> Irrelevante Merkmale spielen keine Rolle bei der Klassifikation, an
> jedem Ausgang eines irrelevanten Merkmals findet sich exakt der selbe
> Baum. Diese Tests kann man einfach entfernen und durch einen ihrer
> Teilbäume ersetzen; dadurch ändert sich nicht die Klassifikation des
> Baumes.
>
> Bei redundanten Tests sind alle Ausgänge bis auf einen noch mit
> "Nichtwissen" ("\*") markiert. Hier kann man den Test durch den einen
> bekannten Ausgang ersetzen, wodurch sich die Klassifikation ändert.
> Allerdings wird der Klassifikationsfehler nicht größer, da man ja
> vorher nur für eine Ausprägung des redundanten Merkmals einen Baum
> hatte und für die anderen jeweils mit "\*" antworten musste (d.h. hier
> stets einen Fehler gemacht hatte).
>
> Über die Transformationsregel kann man einfach die Reihenfolge von
> Tests im Baum ändern.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Pruning](https://youtu.be/LKt9F2kGYdk)
>
> </details>

##### Pruning: Bedingt irrelevante Attribute

**Baum**: $\alpha = x_1(x_2(A, B),  x_2(A, B),  x_2(A, B))$

$x_1$ ist bedingt irrelevant =\> Vereinfachung: $\alpha = x_2(A, B)$

**Allgemein**:

-   Sei $\tilde{x}$ Weg zu Nichtendknoten $x_t$
-   Baum dort $\alpha/\tilde{x} = x_t(\alpha_1, \ldots, \alpha_{m_t})$
-   $x_t$ ist **bedingt irrelevant** unter der Bedingung $\tilde{x}$,
    wenn $\alpha_1 = \alpha_2 = \ldots = \alpha_{m_t}$
-   **Vereinfachung**: Ersetze in $\alpha/\tilde{x}$ den Test $x_t$
    durch $\alpha_1$

*Anmerkung*: Der durch das Entfernen von bedingt irrelevanten Attributen
entstandene Baum hat **exakt** die selbe Aussage (Klassifikation) wie
der Baum vor dem Pruning.

**Anmerkung**: $x_1$ im obigen Beispiel ist sogar **global** irrelevant,
da es sich hier um die Wurzel des Baumes handelt. Der Weg $\tilde{x}$
ist in diesem Fall der leere Weg ...

##### Pruning: Bedingt redundante Attribute

**Baum**: $\alpha = x_1(\ast,  \ast,  x_2(A, B))$

$x_1$ ist bedingt redundant =\> Vereinfachung: $\alpha = x_2(A, B)$

**Allgemein**:

-   Sei $\tilde{x}$ Weg zu Nichtendknoten $x_t$
-   Baum dort
    $\alpha/\tilde{x} = x_t(\ast, \ldots, \ast, \alpha_i, \ast, \ldots, \ast)$
    (mit $\alpha_i \neq \ast$)
-   $x_t$ ist **bedingt redundant** unter der Bedingung $\tilde{x}$
-   **Vereinfachung**: Ersetze in $\alpha/\tilde{x}$ den Test $x_t$
    durch $\alpha_i$

*Anmerkung*: Der durch das Entfernen von bedingt redundanten Attributen
entstandene Baum hat eine etwas andere Klassifikation als der Baum vor
dem Pruning. Wo vorher ein `*` ausgegeben wurde, wird nach dem Pruning
u.U. ein Klassensymbol ausgegeben. Der Klassifikationsfehler erhöht sich
aber **nicht**, da hier ein `*` wie ein falsches Klassensymbol zu werten
ist.

**Anmerkung**: $x_1$ im obigen Beispiel ist sogar **global** redundant,
da es sich hier um die Wurzel des Baumes handelt. Der Weg $\tilde{x}$
ist in diesem Fall der leere Weg ...

##### Allgemeine Transformationsregel

$$x_1(x_2(a, b),  x_2(c, d))  \Leftrightarrow  x_2(x_1(a, c),  x_1(b, d))$$

##### Wrap-Up

-   Pruning: Entfernen bedingt redundanter und irrelevanter Tests
-   Transformationsregel zum Umbauen von Entscheidungsbäumen

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Ertel ([2025](#ref-Ertel2025)): Entscheidungsbäume: Abschnitt 8.4
> -   Russell und Norvig ([2021](#ref-Russell2021)): Entscheidungsbäume:
>     Abschnitt 19.3
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann Pruning anwenden und bedingt irrelevante Tests
>     entfernen
> -   k3: Ich kann Pruning anwenden und bedingt redundante Tests
>     entfernen
> -   k3: Ich kann Entscheidungsbäume mit Hilfe der Transformationsregel
>     umformen
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Pruning
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106577&client_id=FH-Bielefeld)
>
> </details>

<a id="id-1867142959094a5c852b79c1c6f3caed8e931b63"></a>

#### DTL: CAL3

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
> CAL3 ist eine einfache Erweiterung von CAL2 für nicht-disjunkte
> (überlappende) Klassen. Statt beim Baumaufbau bei einer
> Fehlklassifikation sofort zu verzweigen, werden hier zunächst die im
> entsprechenden Pfad aufgelaufenen Klassensymbole gezählt. Wenn
> ausreichend viele davon gesehen wurden (Schwelle $S_1$), wird eine
> Entscheidung getroffen: Wenn eine Klasse in diesem temporären Blatt
> dominiert (ihre Häufigkeit über einer Schwelle $S_2$ liegt), dann
> entscheidet man sich in diesem Blatt fest für diese Klasse. Ansonsten
> (die Häufigkeit aller Klassen in dem Blatt liegt unter $S_2$) nimmt
> man analog zu CAL2 den nächsten, auf diesem Pfad noch nicht
> verwendeten Test hinzu.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL CAL3](https://youtu.be/9Wj51XvuntM)
>
> </details>

##### CAL3: Erweiterung von CAL2 für nicht-disjunkte Klassen

1)  Anfangsschritt: $\alpha^{(0)} = \ast$ (totales Unwissen)

2)  $n$-ter Lernschritt: Objekt $v$ mit Klasse $k$

    -   Rückweisung (Endknoten mit $\ast$): Ersetze $\ast$ durch
        Vereinigungsklasse $/k1/$

    -   Endknoten mit Vereinigungsklasse:

        -   Zähler für $k$ erhöhen, bzw.
        -   $k$ mit Anzahl $1$ in Vereinigungsklasse einfügen

    Falls nun die Summe aller Klassen am Endknoten größer/gleich $S_1$
    (Statistikschwelle):

    -   Für **genau eine** Klasse gilt: $P(k | \tilde{x}) \ge S_2$: =\>
        Abschluss: Ersetze Vereinigungsklasse durch $k$ (für immer!)

    -   Für **alle** Klassen gilt: $P(k | \tilde{x}) < S_2$: =\>
        Differenzierung: Ersetze Vereinigungsklasse durch neuen Test:
        $\kappa \gets x_{t+1}(\ast, \ldots, \ast, /k1/, \ast, \ldots, \ast)$

        $x_{t+1}$: nächstes Attribut, auf dem aktuellen Pfad $\tilde{x}$
        noch nicht verwendet Symbol $k$ mit Anzahl 1 an Position $i$
        wenn $x_{t+1}(v) = i$

##### Beispiel mit CAL3

| $x_1$ | $x_2$ | $k$ |
|:------|:------|:----|
| 0     | 0     | A   |
| 0     | 1     | B   |
| 0     | 1     | A   |
| 1     | 0     | B   |
| 1     | 1     | A   |

-   $S_1 = 4, S_2 = 0.7$

**Ergebnis**: $x_1(A,  x_2(B, A))$

Trainingsfehler: $1/5 = 0.2 < 1-S_2 = 1-0.7 = 0.3$

**Hinweis**: Bei nicht überlappenden Klassen erzeugt CAL3 u.U. andere
Bäume als CAL2 ...

##### CAL3: Abbruchbedingungen und Parameter

-   **Parameter**:
    -   $S_1$: Statistikschwelle, problemabhängig wählen
    -   $S_2$: $0.5 < S_2 \le 1.0$
    -   Klassifikationsfehler kleiner als $1-S_2$
        -   kleiner Fehler =\> großer Baum
        -   großer Fehler =\> kleiner Baum

<!-- -->

-   **Abbruch**:
    -   Alle Trainingsobjekte richtig klassifiziert =\> Kein Fehler in
        einem kompletten Durchlauf
    -   Alle Endknoten mit eindeutigen Klassensymbolen belegt
    -   Differenzierung nötig, aber alle Merkmale verbraucht
    -   Lernschrittzahl überschritten

##### Wrap-Up

-   CAL3: Erweiterung von CAL2 für überlappende Klassen
    -   Parameter $S_1$ (Anzahl Objekte bis Entscheidung), $S_2$
        (Dominanz?)
    -   Trainingsfehler wg. überlappender Klassen!

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Unger und Wysotzki ([1981](#ref-Unger1981)): Der Vollständigkeit
>     halber aufgeführt (Werk ist leider vergriffen und wird nicht mehr
>     verlegt)
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann den Meta-Algorithmus CAL3 für überlappende Klassen
>     anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest CAL3
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106576&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Textklassifikation**
>
> Betrachten Sie die folgenden Aussagen:
>
> > -   Patient A hat weder Husten noch Fieber und ist gesund.
> > -   Patient B hat Husten, aber kein Fieber und ist gesund.
> > -   Patient C hat keinen Husten, aber Fieber. Er ist krank.
> > -   Patient D hat Husten und kein Fieber und ist krank.
> > -   Patient E hat Husten und Fieber. Er ist krank.
>
> Aufgaben:
>
> 1.  Trainieren Sie auf diesem Datensatz einen Klassifikator mit CAL3
>     ($S_1=4, S_2=0.6$).
> 2.  Ist Patient F krank? Er hat Husten, aber kein Fieber.
>
> </details>

<a id="id-f085a6c9977296f3811e103376badb06ee228d84"></a>

#### DTL: Entropie

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Die Entropie kann als Maß für den Informationsgehalt einer
> Trainingsmenge betrachtet werden: Wieviele Ja/Nein-Entscheidungen sind
> nötig, um die Daten fehlerfrei zu repräsentieren?
>
> Nach der Wahl eines Attributs kann die verbleibende mittlere Entropie
> berechnet werden. Damit hat man ein Kriterium für die Auswahl von
> Attributen beim Aufbau von Entscheidungsbäumen: Nimm das Attribut,
> welches einen möglichst hohen Informationsgehalt hat. Oder
> andersherum: Wähle das Attribut, bei dem die verbleibende mittlere
> Entropie der Trainingsmenge nach der Wahl des Attributs am kleinsten
> ist.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Entropie](https://youtu.be/4IZYA5EWO1k)
>
> </details>

##### Wie Attribute wählen?

###### Erinnerung: CAL2/CAL3

-   Zyklische Iteration durch die Trainingsmenge
-   Ausschließlich aktuelles Objekt betrachtet
-   Reihenfolge der "richtigen" Attributwahl bei Verzweigung unklar

=\> Betrachte stattdessen die komplette Trainingsmenge!

###### Relevanz =\> Informationsgehalt

-   Shannon/Weaver (1949): **Entropie**
    -   Maß für die Unsicherheit einer Zufallsvariablen
    -   Anzahl der Bits zur Darstellung der Ergebnisse eines
        Zufallsexperiments

###### Beispiele

-   Münze, die immer auf dem Rand landet: keine Unsicherheit, 0 Bit
-   Faire Münze: Kopf oder Zahl: Entropie 1 Bit
-   Fairer 4-seitiger Würfel: 4 mögliche Ausgänge: Entropie 2 Bit
-   Münze, die zu 99% auf einer Seite landet: Entropie nahe Null

=\> Anzahl der Ja/Nein-Fragen, um zur gleichen Information zu kommen

##### Definition der Entropie $H(V)$ für Zufallsvariable $V$

-   Zufallsvariable $V$ =\> mögliche Werte $v_k$
-   Wahrscheinlichkeit für $v_k$ sei $p_k = P(v_k)$

$$H(V) = -\sum_k p_k \log_2 p_k$$

Hinweis:
$\log_2 x = \frac{\log_{10} x}{\log_{10} 2} = \frac{\log x}{\log 2}$

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/dtl/images/log_range.png"  /></p>

-   Nur eine Klasse: $\log_2 1 = 0$ =\> $H(V) = 0$ Bit
-   Zwei Klassen, gleichwahrscheinlich: $\log_2 0.5 = -1$ =\> $H(V) = 1$
    Bit

##### Beispiele Entropie: faire Münze

Entropie: $$H(V) = -\sum_k p_k \log_2 p_k$$

-   $v_1 = \mathop{\text{Kopf}},  v_2 = \mathop{\text{Zahl}}$
-   $p_1 = 0.5,  p_2 = 0.5$
-   $H(\mathop{\text{Fair}}) = -(0.5 \log_2 0.5 + 0.5 \log_2 0.5) = 1$
    Bit

$\log_2 0.5 = -1$

##### Beispiele Entropie: unfaire Münze

Entropie: $$H(V) = -\sum_k p_k \log_2 p_k$$

-   $v_1 = \mathop{\text{Kopf}},  v_2 = \mathop{\text{Zahl}}$

-   $p_1 = 0.99,  p_2 = 0.01$

-   $H(\mathop{\text{UnFair}}) = -(0.99 \log_2 0.99 + 0.01 \log_2 0.01)$

    $H(\mathop{\text{UnFair}}) \approx 0.08$ Bit

$\log_2 0.01 \approx -6.64$

$\log_2 0.99 \approx -0,014$

##### Beispiele Entropie: 4-seitiger Würfel

Entropie: $$H(V) = -\sum_k p_k \log_2 p_k$$

-   $v_1 = 1,  v_2 = 2,   v_3 = 3,   v_4 = 4$
-   $p_1 = p_2 = p_3 = p_4 = 0.25$
-   $H(\mathop{\text{Wuerfel}}) = -4\cdot(0.25 \log_2 0.25) = 2$ Bit

$\log_2 0.25 = -2$

##### Entropie der Trainingsmenge: Häufigkeit der Klassen zählen

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|:----|:------|:------|:------|:----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

-   Anzahl Klasse $A$: 4
-   Anzahl Klasse $B$: 2
-   Gesamtzahl Beispiele: 6

Wahrscheinlichkeit für $A$: $p_A = 4/6 = 0.667$

Wahrscheinlichkeit für $B$: $p_B = 2/6 = 0.333$

$$\begin{eqnarray}
    H(S) &=& -\sum_k p_k \log_2 p_k\\
         &=& -(4/6 \cdot \log_2 4/6 + 2/6 \cdot \log_2 2/6)\\
         &=& -(-0.39 -0.53) = 0.92 \mathop{\text{Bit}}
\end{eqnarray}$$

##### Mittlere Entropie nach Betrachtung von Attribut $A$

$$    R(S, A) = \sum_{v \in \mathop{\text{Values}}(A)} \frac{|S_v|}{|S|} H(S_v)$$

-   Auswahl von Attribut $A$ partitioniert die Trainingsmenge: Je
    Ausprägung $v$ von $A$ erhält man eine Submenge $S_v$

-   $R(S, A)$ berechnet die mittlere Entropie der Trainingsmenge,
    nachdem Attribut $A$ ausgewählt wurde: Unsicherheit/nötige Bits nach
    Auswahl von Attribut $A$

##### Entropie der Trainingsmenge nach Attributwahl

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|:----|:------|:------|:------|:----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

-   Sei Attribut $x_1$ ausgewählt
-   $x_1$ partitioniert die Trainingsmenge
    -   $x_1=0$ liefert $S_0 = \lbrace 1,3,5,6 \rbrace$
    -   $x_1=1$ liefert $S_1 = \lbrace 2,4 \rbrace$
    -   Häufigkeit für $x_1=0$: $4/6$
    -   Häufigkeit für $x_1=1$: $2/6$
    -   Gesamtzahl Beispiele: 6

$$\begin{eqnarray}
    R(S, A) &=& \sum_{v \in \mathop{\text{Values}}(A)} \frac{|S_v|}{|S|} H(S_v)\\
         &=& 4/6 \cdot H(\lbrace 1,3,5,6 \rbrace) + 2/6 \cdot H(\lbrace 2,4 \rbrace)\\
         &=& 4/6\cdot(-3/4 \cdot \log_2 3/4 - 1/4 \cdot \log_2 1/4) +\\
         && 2/6\cdot(-1/2 \cdot \log_2 1/2 - 1/2 \cdot \log_2 1/2)\\
         &=& 0.54 + 0.33 = 0.87 \mathop{\text{Bit}}
\end{eqnarray}$$

##### Ausblick: Gini Impurity

Wir haben hier die
[Entropie](https://en.wikipedia.org/wiki/Decision_tree_learning#Information_gain)
als Maß für den Informationsgehalt einer Trainingsmenge genutzt.
$R(S,A)$ als die mittlere Entropie nach Betrachtung von Attribut $A$
wird von typischen Entscheidungsbaumverfahren wie ID3 und C4.5 genutzt,
um bei einer Verzweigung das nächste möglichst aussagekräftige Merkmal
auszuwählen.

In anderen Entscheidungsbaumlernern wird stattdessen die [Gini
Impurity](https://en.wikipedia.org/wiki/Decision_tree_learning#Gini_impurity)
zur Bestimmung des Informationsgehalts eingesetzt (u.a. CART). Dieses
Maß sagt aus, wie oft man ein zufällig gezogenes Element des Datensatzes
falsch klassifizieren würde, wenn man es mit einer zufälligen Klasse
basierend auf der Verteilung der Klassen im Datensatz labeln würde.

Hierzu drei lesenswerte Blog-Einträge:

-   [Deep dive into the basics of Gini Impurity in Decision Trees with
    math
    Intuition](https://medium.com/poli-data/deep-dive-into-the-basics-of-gini-impurity-in-decision-trees-with-math-intuition-46c721d4aaec)
-   [Decision Trees,
    Explained](https://towardsdatascience.com/decision-trees-explained-d7678c43a59e)
-   [Decision Tree Algorithm With Hands-On
    Example](https://medium.datadriveninvestor.com/decision-tree-algorithm-with-hands-on-example-e6c2afb40d38)

##### Wrap-Up

-   Begriff und Berechnung der Entropie: Maß für die Unsicherheit
-   Begriff und Berechnung des Informationsgewinns
    -   Entropie für eine Trainingsmenge
    -   Mittlere Entropie nach Wahl eines Attributs

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Ertel ([2025](#ref-Ertel2025)): Entscheidungsbäume: Abschnitt 8.4
> -   Russell und Norvig ([2021](#ref-Russell2021)): Entscheidungsbäume:
>     Abschnitt 19.3
> -   Mitchell ([2010](#ref-Mitchell2010)): ID3: Kapitel 3
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann für konkrete Beispiele die Entropie und den
>     Information Gain ausrechnen
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Entropie
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106578&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Entropie einer Trainingsmenge**
>
> Betrachten Sie die folgenden Aussagen:
>
> > -   Patient A hat weder Husten noch Fieber und ist gesund.
> > -   Patient B hat Husten, aber kein Fieber und ist gesund.
> > -   Patient C hat keinen Husten, aber Fieber. Er ist krank.
> > -   Patient D hat Husten und kein Fieber und ist krank.
> > -   Patient E hat Husten und Fieber. Er ist krank.
>
> Aufgaben:
>
> 1.  Geben Sie die Entropie $H(S)$ der Trainingsmenge an.
> 2.  Berechnen Sie $R(H,A)$ (die mittlere Entropie der Trainingsmenge,
>     nachdem Attribut $A$ gesehen wurde) für die einzelnen Attribute.
>
> </details>

<a id="id-0d69ce52eac18a7d932147cc42b20bcd98d267f3"></a>

#### DTL: ID3 und C4.5

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Der Entscheidungsbaum-Lernalgorithmus **ID3** nutzt den
> Informationsgehalt für die Entscheidung bei der Attributwahl: Nimm das
> Attribut, welches einen möglichst hohen Informationsgehalt hat. Oder
> andersherum: Wähle das Attribut, bei dem die verbleibende mittlere
> Entropie der Trainingsmenge nach der Wahl des Attributs am kleinsten
> ist. Oder noch anders formuliert: Nimm das Attribut, bei dem die
> Differenz zwischen der Entropie der Trainingsmenge (vor der Wahl des
> Attributs) und der verbleibenden mittleren Entropie (nach der Wahl des
> Attributs) am größten ist (die Differenz nennt man auch "*Information
> Gain*"). Die Trainingsmenge wird entsprechend der Ausprägung in Bezug
> auf das eben gewählte Merkmal aufgeteilt und an die Kinder des Knotens
> weiter gereicht; dort wird der Baum rekursiv weiter aufgebaut.
>
> Durch eine Normierung des *Information Gain* kann eine Verbesserung in
> Bezug auf mehrwertige Attribute erreicht werden, dies führt zum
> Algorithmus **C4.5**.
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL ID3 und C4.5](https://youtu.be/Yo1cmeS6BK8)
>
> </details>

##### Wie Attribute wählen?

Erinnerung: CAL2/CAL3

-   Zyklische Iteration durch die Trainingsmenge
-   Ausschließlich aktuelles Objekt betrachtet
-   Reihenfolge der "richtigen" Attributwahl bei Verzweigung unklar

=\> Betrachte stattdessen die **komplette** Trainingsmenge!

##### Erinnerung Entropie: Maß für die Unsicherheit

-   Entropie $H(S)$ der Trainingsmenge $S$: relative Häufigkeit der
    Klassen zählen

-   Mittlere Entropie nach Betrachtung von Attribut $A$

    $$    R(S, A) = \sum_{v \in \mathop{\text{Values}}(A)} \frac{|S_v|}{|S|} H(S_v)$$

<!-- -->

-   Informationsgewinn durch Betrachtung von Attribut $A$

    $$\begin{eqnarray}
        \mathop{\text{Gain}}(S, A) &=& H(S) - R(S, A)\\[5pt]
                                &=& H(S) - \sum_{v \in \mathop{\text{Values}}(A)} \frac{|S_v|}{|S|} H(S_v)
    \end{eqnarray}$$

$R(S,A)$ ist die Unsicherheit/nötige Bits nach Auswahl von Attribut A.
Je kleiner $R(S,A)$, um so kleiner die **verbleibende Unsicherheit**
bzw. um so kleiner die Anzahl der nötigen Bits zur Darstellung der
partitionierten Trainingsmenge **nach** Betrachtung von Attribut $A$ ...

=\> Je kleiner $R(S,A)$, um so größer der Informationsgewinn

##### Informationsgewinn: Kriterium zur Auswahl von Attributen

1)  Informationsgewinn für alle Attribute berechnen
2)  Nehme Attribut mit größtem Informationsgewinn als nächsten Test

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|-----|-------|-------|-------|-----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

$H(S) = 0.92 \mathop{\text{Bit}}$

$$\begin{eqnarray}
\mathop{\text{Gain}}(S, x_1) &=& 0.92 - 0.87 = 0.05 \mathop{\text{Bit}}\\
\mathop{\text{Gain}}(S, x_2) &=& 0.92 - 2/6  \cdot 0 - 4/6 \cdot 1\\
                             &=& 0.25 \mathop{\text{Bit}}\\
\mathop{\text{Gain}}(S, x_3) &=& 0.92 - 3/6 \cdot 0.92 - 2/6 \cdot 1 - 1/6 \cdot 0\\
                             &=& 0.13 \mathop{\text{Bit}}
\end{eqnarray}$$

Informationsgewinn für $x_2$ am höchsten =\> wähle $x_2$ als nächsten
Test

##### Entscheidungsbaumlerner ID3 (Quinlan, 1986)

``` python
def ID3(examples, attr, default):
    # Abbruchbedingungen
    if examples.isEmpty():  return default
    if examples.each(class == A):  return A  # all examples have same class
    if attr.isEmpty():  return examples.MajorityValue()

    # Baum mit neuem Test erweitern
    test = MaxInformationGain(examples, attr)
    tree = new DecisionTree(test)
    m = examples.MajorityValue()
    for v_i in test:
        ex_i = examples.select(test == v_i)
        st = ID3(ex_i, attr - test, m)
        tree.addBranch(label=v_i, subtree=st)
    return tree
```

Russell und Norvig ([2021](#ref-Russell2021)): Man erhält aus dem
"Learn-Decision-Tree"-Algorithmus ([Russell und Norvig 2021,
678](#ref-Russell2021), Fig. 19.5) den hier vorgestellten
ID3-Algorithmus, wenn man die Funktion
$\mathop{\text{Importance}}(a, examples)$ als
$\mathop{\text{InformationGain}}(examples, attr)$ implementiert/nutzt.

**Hinweis**: Mit der Zeile `if examples.each(class == A):  return A`
soll ausgedrückt werden, dass alle ankommenden Trainingsbeispiele die
selbe Klasse haben und dass diese dann als Ergebnis zurückgeliefert
wird. Das "`A`" steht im obigen Algorithmus nur symbolisch für die selbe
Klasse! Es kann also auch ein anderes Klassensymbol als "`A`" sein ...

###### Beispiel ID3

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|-----|-------|-------|-------|-----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

-   $x2$ höchsten Information Gain
-   $x2=0$ =\> Beispiele 1,2 =\> A
-   $x2=1$ =\> Beispiele 3,4,5,6 =\> Information Gain berechnen, weiter
    teilen und verzweigen

##### Beobachtung: $\mathop{\text{Gain}}$ ist bei mehrwertigen Attributen höher

-   Faire Münze:
    -   Entropie =
        $H(\mathop{\text{Fair}}) = -(0.5 \log_2 0.5 + 0.5 \log_2 0.5) = 1 \mathop{\text{Bit}}$

<!-- -->

-   4-seitiger Würfel:
    -   Entropie =
        $H(\mathop{\text{Dice}}) = -4\cdot(0.25 \log_2 0.25) = 2 \mathop{\text{Bit}}$

=\> $\mathop{\text{Gain}}$ ist bei mehrwertigen Attributen höher

Damit würden Attribute bei der Wahl bevorzugt, nur weil sie mehr
Ausprägungen haben als andere.

*Anmerkung*: Im obigen Beispiel wurde einfach die Entropie für zwei
"Attribute" mit unterschiedlich vielen Ausprägungen betrachtet, das ist
natürlich kein $\mathop{\text{Gain}}(S, A)$. Aber es sollte deutlich
machen, dass Merkmale mit mehr Ausprägungen bei der Berechnung des Gain
für eine Trainingsmenge einfach wegen der größeren Anzahl an
Ausprägungen rechnerisch bevorzugt würden.

##### C4.5 als Verbesserung zu ID3

Normierter Informationsgewinn:
$\mathop{\text{Gain}}(S, A) \cdot \mathop{\text{Normalisation}}(A)$

$$    \mathop{\text{Normalisation}}(A) = \frac{1}{
        \sum_{v \in \mathop{\text{Values}}(A)} p_v \log_2 \frac{1}{p_v}
    }$$

C4.5 kann zusätzlich u.a. auch noch mit kontinuierlichen Attributen
umgehen, vgl.
[en.wikipedia.org/wiki/C4.5_algorithm](https://en.wikipedia.org/wiki/C4.5_algorithm).

In einem [Paper](http://www.cs.umd.edu/~samir/498/10Algorithms-08.pdf)
([DOI
10.1007/s10115-007-0114-2](https://doi.org/10.1007/s10115-007-0114-2))
wurde der Algorithmus zu den "Top 10 algorithms in data mining"
ausgewählt.

Im Wikipedia-Artikel [Information
Gain](https://en.wikipedia.org/wiki/Decision_tree_learning#Information_gain)
finden Sie weitere Informationen zum "Informationsgewinn" (*Information
Gain*).

Ein anderer, relativ ähnlich arbeitender Entscheidungsbaumlerner ist der
[CART (Classification And Regression
Tree)](https://en.wikipedia.org/wiki/Decision_tree_learning)-Algorithmus,
wobei der Begriff "CART" allerdings oft auch einfach allgemein für
"Entscheidungsbaumlerner" genutzt wird.

Hierzu drei lesenswerte Blog-Einträge:

-   [Deep dive into the basics of Gini Impurity in Decision Trees with
    math
    Intuition](https://medium.com/poli-data/deep-dive-into-the-basics-of-gini-impurity-in-decision-trees-with-math-intuition-46c721d4aaec)
-   [Decision Trees,
    Explained](https://towardsdatascience.com/decision-trees-explained-d7678c43a59e)
-   [Decision Tree Algorithm With Hands-On
    Example](https://medium.datadriveninvestor.com/decision-tree-algorithm-with-hands-on-example-e6c2afb40d38)

##### Beispiele zur Normierung bei C4.5

-   Faire Münze:
    -   Entropie =
        $H(\mathop{\text{Fair}}) = -(0.5 \log_2 0.5 + 0.5 \log_2 0.5) = 1 \mathop{\text{Bit}}$
    -   Normierung:
        $1/(0.5 \log_2 (1/0.5) + 0.5 \log_2 (1/0.5)) = 1/(0.5 \cdot 1 + 0.5 \cdot 1) = 1$
    -   Normierter Informationsgewinn:
        $\mathop{\text{Gain}}(S, A) \cdot \mathop{\text{Normalisation}}(A) = 1 \mathop{\text{Bit}} \cdot 1 = 1 \mathop{\text{Bit}}$

<!-- -->

-   4-seitiger Würfel:
    -   Entropie =
        $H(\mathop{\text{Dice}}) = -4\cdot(0.25 \log_2 0.25) = 2 \mathop{\text{Bit}}$
    -   Normierung:
        $1/(4\cdot 0.25 \log_2 (1/0.25)) = 1/(4\cdot 0.25 \cdot 2) = 0.5$
    -   Normierter Informationsgewinn:
        $\mathop{\text{Gain}}(S, A) \cdot \mathop{\text{Normalisation}}(A) = 2 \mathop{\text{Bit}} \cdot 0.5 = 1 \mathop{\text{Bit}}$

=\> Normierung sorgt für fairen Vergleich der Attribute

*Anmerkung*: Auch hier ist die Entropie natürlich kein
$\mathop{\text{Gain}}(S, A)$. Das Beispiel soll nur übersichtlich
deutlich machen, dass der "Vorteil" von Attributen mit mehr Ausprägungen
durch die Normierung in C4.5 aufgehoben wird.

##### Wrap-Up

-   Entscheidungsbaumlerner **ID3**
    -   Nutze *Information Gain* zur Auswahl des nächsten Attributs
    -   Teile die Trainingsmenge entsprechend auf ("nach unten hin")
-   Verbesserung durch Normierung des *Information Gain*: **C4.5**

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Ertel ([2025](#ref-Ertel2025)): Entscheidungsbäume: Abschnitt 8.4
> -   Russell und Norvig ([2021](#ref-Russell2021)): Entscheidungsbäume:
>     Abschnitt 19.3
> -   Mitchell ([2010](#ref-Mitchell2010)): ID3: Kapitel 3
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann die Entscheidungsbaumalgorithmen ID3 und C4.5 auf
>     konkrete Daten anwenden.
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Games: Behaviour Trees**
>
> In einem Dungeon-Crawler wurden über mehrere Spiele Daten für die
> Aktionen eines Monsters aufgezeichnet:
>
> | Nr. | Distanz | HP      | Mana   | Aktion    |
> |:----|:--------|:--------|:-------|:----------|
> | 01  | nah     | niedrig | genug  | heilen    |
> | 02  | fern    | niedrig | gering | fliehen   |
> | 03  | nah     | hoch    | gering | angreifen |
> | 04  | nah     | hoch    | genug  | angreifen |
> | 05  | mittel  | mittel  | genug  | angreifen |
> | 06  | fern    | mittel  | gering | fliehen   |
>
> Trainieren Sie mit diesen Daten einen Entscheidungsbaum als *Behaviour
> Tree* für das Monster, so dass es in einer konkreten Spielsituation
> von nun an die optimale Entscheidung treffen kann. Nutzen Sie dafür
> ID3.
>
> **Textklassifikation**
>
> Betrachten Sie die folgenden Aussagen:
>
> > -   Patient A hat weder Husten noch Fieber und ist gesund.
> > -   Patient B hat Husten, aber kein Fieber und ist gesund.
> > -   Patient C hat keinen Husten, aber Fieber. Er ist krank.
> > -   Patient D hat Husten und kein Fieber und ist krank.
> > -   Patient E hat Husten und Fieber. Er ist krank.
>
> Aufgaben:
>
> 1.  Trainieren Sie auf diesem Datensatz einen Klassifikator mit ID3.
> 2.  Ist Patient F krank? Er hat Husten, aber kein Fieber.
>
> </details>

<a id="id-be10acd16e60062cc9d59ad47fc4866f9624b198"></a>

### NN: Einführung in Neuronale Netze

Das Perzeptron kann als die Nachahmung einer biologischen Nervenzelle
betrachtet werden. Durch das Zusammenschließen dieser
"künstlichen"Nervenzellen" entstehen künstliche **Neuronale Netze**
(NN), die ähnlich wie das Gehirn **lernen** sollen, komplexe Aufgaben zu
bewerkstelligen.

<a id="id-e3a8542d0a1d7b0c7eb04d713c7976160d0eaf84"></a>

#### NN01: Das Perzeptron

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [NN1.1 - Einführung](https://youtu.be/IJdiwITTC9Y)
> -   [NN1.2 - Fallstudie und
>     Formalisierung](https://youtu.be/oWcvFyLgqYc)
> -   [NN1.3 - Das Perzeptron Modell](https://youtu.be/ZvWpI0Doocc)
> -   [NN1.4 - Perzeptron Beispiel](https://youtu.be/8Rdw2NBCCJk)
> -   [NN1.5 - Der Perzeptron
>     Lernalgorithmus](https://youtu.be/JD8Qsg8_kQI)
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> -   [NN01-Das_Perzeptron.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN01-Das_Perzeptron.pdf)
> -   [Perzeptron_Lernalgorithmus.ipynb](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/Perzeptron_Lernalgorithmus.ipynb)
>
> </details>

##### Kurze Übersicht

###### Definition "Maschinelles Lernen"

Fähigkeit zu lernen, ohne explizit programmiert zu werden. (Arthur
Samuel, 1959)

###### Arten des Lernens

-   Überwachtes Lernen (e.g. Klassifizierung, Regression)
-   Unüberwachtes Lernen (e.g. Clustering, Dimensionsreduktion)
-   Bestärkendes Lernen (e.g. Schach spielen)

Vergleiche auch [DTL: Machine Learning
101](#id-82f362361464406c7ba09ef4a0893a4e32983b94).

###### Formalisierung

-   Zielfunktion $f$
-   Merkmalraum (input space)
-   Ausgaberaum (output space)
-   Datensatz $\mathcal{D}$
-   Hypothesenmenge $\mathcal{H}$
-   Lernalgorithmus $\mathcal{A}$

###### Das Perzeptron

Das Perzeptron ist ein einfaches Modell für die **binäre
Klassifizierung**.

####### Hypothesenfunktion

-   Die **Hypothesenfunktion** ist eine gewichtete Summe der
    Eingabemerkmale $x_i$ plus eine Konstante $w_0$, auf die als
    Aktivierung die Signumfunktion angewendet wird:

$$\begin{aligned}
h(\mathbf{x})
&= \text{sgn}(w_0 + w_1 x_1 + w_2 x_2 + \ldots + w_n x_n) \\
\\
&= \text{sgn}(\mathbf{w}^T \mathbf{x}) \\
\\
&=
\begin{cases}
1, & \text{wenn } \mathbf{w}^T \mathbf{x} \ge 0, \\
-1, & \text{wenn } \mathbf{w}^T \mathbf{x} < 0
\end{cases}
\end{aligned}$$

-   Die **Ausgabe $\hat{y}$** des Modells ist somit eine Zahl aus der
    Menge $\{1, -1\}$.
-   $w_0, w_1, w_2, \ldots, w_n$ sind die Parameter des Modells, die es
    zu optimieren gilt.

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/perceptron-network.png" width="70%" /></p><p align="center">Perzeptron Aufbau und Berechnung</p>

####### Lineare Entscheidungsgrenze

-   Das Perzeptron erzeugt eine **lineare Entscheidungsgrenze** im
    Merkmalraum, die durch die folgende Gleichung definiert ist:

$$\mathbf{w}^T\mathbf{x} = w_0 + w_1x_1 + w_2x_2 + \ldots + w_nx_n = 0$$

-   Für einen gegebenen Datensatz müssen nun jene Parameter
    identifiziert werden, die eine Entscheidungsgrenze definieren, die
    alle Datenpunkte korrekt klassifiziert. Dies ist natürlich nur dann
    möglich, sofern die Daten **linear separierbar** sind.

-   Im zweidimensionalen Merkmalraum $\mathbb{R}^2$ entspricht die
    Entscheidungsgrenze einer **Geraden**. Die folgende Abbildung zeigt
    beispielsweise die Entscheidungsgrenze für die Parameter
    $w_0 = 0, w_1 = 2$ und $w_3 = -1$, entsprechend dem Modell
    $h(\mathbf{x}) = \text{sgn}(2x_1 - x_2)$.

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/perceptron-boundary.png" width="50%" /></p><p align="center">Perzeptron Entscheidungsgrenze</p>

###### Der Perzeptron Lernalgorithmus

Der Perzeptron Lernalgorithmus (PLA) startet mit zufälligen
Gewichtsparametern und aktualisiert methodisch die Gewichte, bis die
Daten alle richtig klassifiziert sind (oder eine festgelegte obere
Schranke von Aktualisierungsschritten erreicht wird).

**Ablauf des PLA**:

1.  Starte mit zufälligen Gewichtsparametern $\mathbf{w}$.
2.  Wiederhole die folgenden Schritte, solange es falsch klassifizierte
    Punkte gibt:
    -   Wähle einen beliebigen, falsch klassifizierten Punkt
        $\mathbf{x}$ aus. Sei $y$ das zugehörige Label (Zielwert).
    -   **Aktualisiere den Gewichtsvektor** wie folgt:

$$\mathbf{w} \leftarrow \mathbf{w} + \alpha \cdot y \cdot \mathbf{x}$$

Hier bezeichnet $\alpha$ die **Lernrate** (auch Schrittweite genannt).
Sie steuert, wie stark die Parameter in jedem Schritt in Richtung
$y \cdot \mathbf{x}$ aktualisiert werden, und beeinflusst somit
maßgeblich die Konvergenzgeschwindigkeit und Stabilität des
Lernprozesses. Es existiert kein universell optimaler Wert für $\alpha$;
dieser muss problemabhängig empirisch ermittelt werden. Typische
Startwerte für Experimente liegen bei $0.1$, $0.01$ oder $0.001$.

Die **Gewichtsaktualisierung** ist der Ort, wo das Lernen stattfindet.

###### Nicht-Lineare Entscheidungsgrenze

Um **nicht-lineare Entscheidungsgrenzen** zu ermöglichen, können die
Originalmerkmale auf nicht-lineare Weise kombiniert (z. B.
$x_1^2$,$x_2^2$, $x_1x_2$, ...) und diese neuen Werte als zusätzliche
Merkmale in den Vektor $\mathbf{x}$ aufgenommen werden. Die
Hypothesenfunktion bleibt dabei weiterhin **linear in den Gewichten**
$w_i$.

Im Fall von zwei Merkmalen kann beispielsweise die folgende
Hypothesenfunktion verwendet werden:

$$h(\mathbf{x}) =\text{sgn}(w_0 + w_1x_1 + w_2x_2 + w_3x_1^2 + w_4x_2^2).$$

Durch die Einbeziehung quadratischer Terme lassen sich nichtlineare
Entscheidungsgrenzen modellieren, darunter insbesondere kreisförmige
Entscheidungsgrenzen der Form

$$-4 + x_1^2 + x_2^2 = 0.$$

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann verschiedene Arten des maschinellen Lernens erklären
> -   k2: Ich kann die Formalisierung eines ML-Problems, insbesondere
>     der Klassifizierung erklären und dabei insbesondere die Begriffe
>     Datensatz, Merkmalsraum, Hypothesenfunktion und Zielfunktion an
>     einem Beispiel erläutern
> -   k2: Ich kann das Perzeptron als linearen Klassifikator verstehen
>     und erklären
> -   k2: Ich kann den Begriff der Entscheidungsgrenze erklären
> -   k3: Ich kann die Entscheidungsgrenze für ein konkretes Beispiel
>     berechnen
> -   k3: Ich kann den Perzeptron Lernalgorithmus implementieren und
>     anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Intro ML
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106589&client_id=FH-Bielefeld)
>
> </details>

<a id="id-52f9015d59d2dde3e4f18acb1be26aa3c10759ab"></a>

#### NN02: Lineare Regression und Gradientenabstieg

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [NN2.1 - Lineare Regression - Intro](https://youtu.be/f-DTaKMnkj4)
> -   [NN2.2 - Vergleich Perzeptron und
>     Bsp](https://youtu.be/UnLjjMswNRo)
> -   [NN2.3 - Kostenfunktiıon und
>     Gradientenvektor](https://youtu.be/H2YvYIaUW1Q)
> -   [NN2.4 - Berechnung Gradientenvektor -
>     Beispiel](https://youtu.be/URaVsZnfppQ)
> -   [NN2.5 - Berechnung Gradientenvektor -
>     Allgemein](https://youtu.be/5OZF3Qopous)
> -   [NN2.6 - Skalierung der Merkmale](https://youtu.be/m-TnM13I-no)
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> -   [NN02-Lineare_Regression.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN02-Lineare_Regression.pdf)
> -   [Lineare_Regression.ipynb](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/Lineare_Regression.ipynb)
>
> </details>

##### Kurze Übersicht

###### Formalisierung

-   Ausgabe $y$ ist reelle Zahl aus einem stetigen Bereich (zum Beispiel
    Hauspreis)
-   Die **Hypothesenfunktion** ist eine gewichtete Summe der Merkmale
    $x_i$ plus eine Konstante $w_0$:
    $$h(\mathbf{x}) = \mathbf{w}^T\mathbf{x} = w_0 + w_1x_1 + w_2x_2 + \ldots + w_nx_n$$
-   Der **Verlust** (engl. loss) für einen Datenpunkt $\mathbf{x}$ ist
    das **Fehlerquadrat**:
    $$\mathcal{L} = (\hat{y} - y)^2 = (h(\mathbf{x}) - y)^2$$
-   Die Kosten (engl. cost) sind der durchschnittliche Verlust über alle
    Datenpunkte:
    $$J = \frac{1}{2m} \sum_{i=1}^{m} (\hat{y} - y)^2 = \frac{1}{2m} \sum_{i=1}^{m} (h(\mathbf{x}) - y)^2$$

###### Der Gradient

-   Der **Gradientenvektor** $\nabla J(\mathbf{w})$ setzt sich zusammen
    aus den partiellen Ableitungen der Kostenfunktion $J$ nach den
    Gewichten $w_i$ und zeigt in jedem Punkt $\mathbf{w}$ in die
    **Richtung des steilsten Aufstiegs**:
    $$\nabla J = [ \partial J / \partial w_0
    \quad \partial J / \partial w_1 \quad \ldots
    \quad \partial J / \partial w_n]^T$$
-   **Schlussfolgerung**: In die entgegengesetzte Richtung, i.e. in
    Richtung $-\nabla J(\mathbf{w})$ geht es am *steilsten bergab!*
-   **IDEE**: Bewege $\mathbf{w}$ in Richtung $-\nabla J(\mathbf{w})$,
    um die Kosten $J$ möglichst schnell zu senken.

###### Der Gradientenabstieg (engl. Gradient Descent)

1.  Starte mit zufälligen Gewichten $\mathbf{w}$
2.  Berechne den Gradientenvektor im aktuellen Punkt $\mathbf{w}$
3.  **Gewichtsaktualisierung**: Gehe einen *kleinen* Schritt in Richtung
    $-\nabla J(\mathbf{w})$
    $$\mathbf{w} _{neu} := \mathbf{w} _{alt} - \alpha \cdot \nabla J(\mathbf{w} _{alt})$$
    ($\alpha$: Lernrate/Schrittweite).
4.  Wiederhole Schritte 2-3, bis das globale Minimum von $J$ erreicht
    ist.

###### Graphische Übersicht

-   **Lineare Regression**

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/lin_reg_nn.png" width="65%" /></p>

-   **Perzeptron**

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/perzeptron_nn.png" width="65%" /></p>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die lineare Regression aus Sicht neuronaler Netze
>     erklären und dabei auf die graphische Darstellung und den
>     Vergleich mit dem Perzeptron eingehen
> -   k2: Ich kann die Formalisierung von linearer Regression erklären
> -   k2: Ich kann den Begriff Verlust- und Kostenfunktion erklären
> -   k2: Ich kann den Gradientenvektor an einem Beispiel erklären
> -   k2: Ich kann den Begriff Lernrate erklären
> -   k3: Ich kann den Gradientenabstieg an einem Beispiel anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Lineare Regression
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106590&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Skalierung der Merkmale**
>
> Abbildung 1 und Abbildung 2 zeigen die
> [Höhenlinien](https://de.wikipedia.org/wiki/H%C3%B6henlinie) ([Contour
> Lines](https://en.wikipedia.org/wiki/Contour_line)) von zwei
> Kostenfunktionen.
>
> <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/contour_plot_a.png" width="40%" /></p><p align="center">Abbildung 1</p>
> <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/contour_plot_b.png" width="40%" /></p><p align="center">Abbildung 2</p>
>
> -   Erklären Sie, welcher der beiden Fälle nachteilhaft für den
>     Gradientenabstieg Algorithmus ist. Wo liegt der Nachteil? Wie kann
>     die Merkmalskalierung dem genannten Nachteil entgegenwirken?
> -   Zeigen Sie unter Verwendung Ihrer eigenen, zufällig generierten
>     Datenpunkte aus dem Bereich $[100, 300] \times [0, 2]$, wie sich
>     Standardisierung, Min-Max Skalierung und Normalisierung auf die
>     Daten auswirken. Vergleichen Sie dazu die jeweiligen
>     Streudiagramme (scatterplots). Sie können hierzu das folgende
>     [**Jupyter
>     Notebook**](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/Feature_Scaling_Starter.ipynb)
>     als Startpunkt benutzen.
>
> </details>

<a id="id-c320456aa6e007de53f56d63d12b19d7351a2f77"></a>

#### NN03: Logistische Regression

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [NN3.1 - Logistische Regression -
>     Intro](https://youtu.be/GpJmjrqA5RY)
> -   [NN3.2 - Logistische Regression - Hypothesenfunktion und
>     Bsp](https://youtu.be/z-jFZeNWMRc)
> -   [NN3.3 - Logistische Regression - Verlust und
>     Kosten](https://youtu.be/ruuCKupOhCE)
> -   [NN3.4 - Logistische Regression -
>     Gradientenabstieg](https://youtu.be/kPAZsr-r1LA)
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> -   [NN03-Logistische_Regression.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN03-Logistische_Regression.pdf)
> -   [Logistische_Regression.ipynb](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/Logistische_Regression.ipynb)
>
> </details>

##### Kurze Übersicht

###### Formalisierung

-   Ausgabe $y$ ist reelle Zahl aus dem stetigen Bereich $(0,1)$

-   Die **Hypothesenfunktion** ist:
    $$h(\mathbf{x}) = \sigma (\mathbf{w}^T\mathbf{x}) = \sigma (w_0 + w_1x_1 + w_2x_2 + \ldots + w_nx_n) \tag{1}$$

-   Der **Kreuzentropie Verlust** (engl. Cross-Entropy) für einen
    Datenpunkt $\mathbf{x}$:
    $$\mathcal{L}(a, y) =  - y  \log(a) - (1-y)  \log(1-a)\tag{2}$$
    wobei hier $a := \hat{y}$ die Vorhersage ist.

-   Die Kosten als durchschnittlicher Verlust über alle Datenpunkte
    $x^{(1)}, \ldots, x^{(m)}$:
    $$J = \frac{1}{m} \sum_{i=1}^m \mathcal{L}(a^{(i)}, y^{(i)})\tag{3}$$

###### Gradientenabstieg

-   Der Gradient für einen Datenpunkt $\mathbf{x}$:
    $$\frac{\partial \mathcal{L}}{\partial w} = (a-y)x \tag{4}$$
-   Der Gradient für alle Datenpunkte $X$ in Matrix-Notation:
    $$\nabla J = \frac{\partial J}{\partial w} = \frac{1}{m}X(A-Y)^T\tag{5}$$

###### Graphische Übersicht

-   **Logistische Regression**

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/log_reg_nn.png" width="65%" /></p>

-   **Lineare Regression**

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/lin_reg_nn.png" width="65%" /></p>

-   **Perzeptron**

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/perzeptron_nn.png" width="65%" /></p>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die logistische Regression aus Sicht neuronaler Netze
>     erklären und dabei auf die graphische Darstellung und den
>     Vergleich mit Perzeptron und linearer Regression eingehen
> -   k2: Ich kann die Formalisierung der logistische Regression
>     erklären
> -   k2: Ich kann die Sigmoid-Aktivierungsfunktion erklären und an
>     einem Beispiel demonstrieren
> -   k2: Ich kann Verlust- und Kosten (Cross-Entropy Loss) erklären
> -   k3: Ich kann den Gradientenabstieg für logistische Regression an
>     einem Beispiel anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Logistische Regression
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106591&client_id=FH-Bielefeld)
>
> </details>

<a id="id-ff282a3dce4dd000d38f923a472a928c94b93436"></a>

#### NN04: Overfitting und Regularisierung

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [NN4.1 - Nichtlineare Modelle](https://youtu.be/KJLT-h_ChRo)
> -   [NN4.2 - Overfitting und
>     Regularisierung](https://youtu.be/BW91MYPUH_k)
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> -   [NN04-Nichtlineare_Modelle_und_Overfitting.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN04-Nichtlineare_Modelle_und_Overfitting.pdf)
>
> </details>

##### Kurze Übersicht

###### Nichtlineare Modelle

-   Einführung von neuen Merkmalen in Form von nichtlienaren
    Kombinationen der ursprünglichen Merkmale
-   Erhöhung der Komplexität des Modells ermöglicht das Erfassen von
    nichtlinearen Beziehungen
-   **Bemerkung**: Die Hypothesenfunktion bleibt linear in den
    Gewichten, es wird weiterhin logistische Regression in einem
    **erweiterten** Merkmalraum durchgeführt.

###### Überanpassung und Regularisierung

-   Die **Überanpassung** (engl. Overfitting) ist eines der häufigsten
    und wichtigsten Probleme in ML und DL

    > "Was im Bereich des maschinellen Lernens Professionelle von
    > Amateuren unterscheidet, ist ihre Fähigkeit mit Überanpassung
    > umzugehen."
    >
    > -- Quelle: ([Abu-Mostafa u. a. 2012, 119](#ref-AbuMostafa2012))

-   Anzeichen von Überanpassung sind geringe Trainingskosten und hohe
    **Testkosten** (Kosten auf nicht-gesehenen Daten).

-   Regularisierung ist eine Maßnahme gegen Überanpassung. Man kann es
    sich als eine Reduktion in der Komplexität des Modells vorstellen.

-   Der Regularisierungsparameter $\lambda$ ist ein Hyperparameter. Je
    größer der $\lambda$-Wert, desto größer der Regularisierungseffekt.

-   Die **Kostenfunktion** bei regulariserter logistischer Regression:
    $$J = \frac{1}{m} \left\lbrack \sum_{i=1}^m \left( -y^{[i]}log(a^{[i]})-(1-y^{[i]})log(1-a^{[i]}) \right) + \frac{\lambda}{2} \sum_{j=1}^n (w^2_j)  \right\rbrack \tag{1}$$

-   Die **Gewichtsaktualisierung** mit Regularisierungsterm:
    $$w_j := w_j - \frac{\alpha}{m} \left\lbrack \sum_{i=1}^m \left( ( a^{[i]} - y^{[i]} )x_j^{[i]} \right) + \lambda w_j  \right\rbrack \tag{2}$$

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Abu-Mostafa u. a. ([2012](#ref-AbuMostafa2012)): Kapitel 4
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Erhöhung der Modell-Komplexität durch Einführung
>     von Merkmalen höherer Ordnung erklären
> -   k2: Ich kann die Begriffe Unter- und Überanpassung an einem
>     Beispiel erklären
> -   k2: Ich kann den Begriff Regularisierung erklären und die
>     Auswirkung auf die Gewichte und das Modell erläutern
> -   k3: Ich kann den Gradientenabstieg für regularisierte logistische
>     Regression an einem Beispiel anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Overfitting
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106595&client_id=FH-Bielefeld)
>
> </details>

<a id="id-94eb0e9e9c19bba8118b63b08886a14024a2acf3"></a>

#### NN05: Multilayer Perzeptron

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [NN5.1 - MLP Forward Propagation](https://youtu.be/7ltwa5WWuKI)
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> -   [NN05-MLP.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN05-MLP.pdf)
>
> </details>

##### Kurze Übersicht

###### Multilayer Perzeptron (MLP)

-   Das Perzeptron kann nur linear separable Daten korrekt
    klassifizieren.
-   Durch das Zusammenschließen von mehreren Perzeptronen kann man ein
    mehrschichtiges Perzeptron (engl. Multilayer Perceptron) aufstellen,
    das komplexere Funktionen modellieren kann.
-   Ein MLP wird oft auch als **Feed Forward Neural Network** oder als
    **Fully Connected Neural Network** bezeichnet.
-   Die "inneren" Schichten eines solchen Netzwerkes sind sogenannte
    **versteckte Schichten** (engl. hidden layer). Das sind alle
    Schichten ausgenommen die Eingangs- und Ausgangsschicht.

###### Graphische Übersicht und Vorwärtslauf

-   Ein Multi-Layer Perzeptron

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/mlp.png" width="65%" /></p>

    Ein Vorwärtslauf (forward pass):
    $$a^{[1]} = ReLU \left( W^{[1]} \cdot \mathbb{x} + b^{[1]} \right) \tag{1}$$
    $$\hat{y} := a^{[2]} = \sigma \left( W^{[2]} \cdot a^{[1]} + b^{[2]} \right) \tag{2}$$

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann das Multi-Layer Perzeptron (MLP) erläutern und dabei
>     auf die graphische Darstellung eingehen und den Vorwärtslauf
>     erklären
> -   k2: Ich kann verschiedene Aktivierungsfunktionen (insbesondere
>     ReLU) erklären
> -   k3: Ich kann den Vorwärtslauf (forward pass) für ein gegebenes MLP
>     anwenden
> -   k3: Ich kann die Berechnung der einzelnen Aktivierungen
>     durchführen
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Multilayer Perzeptron
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106592&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Lineares MLP**
>
> Gegeben sei ein MLP mit linearen Aktivierungsfunktionen, d.h. für
> jedes Neuron berechnet sich der Output durch die gewichtete Summe der
> Inputs: $y = g(w^T x)$, wobei $g(z) = z$ gilt, also $y = w^T x$.
> Zeigen Sie, dass dieses Netz durch eine einzige Schicht mit linearen
> Neuronen ersetzt werden kann.
>
> Betrachten Sie dazu ein zwei-schichtiges Netz (i.e. bestehend aus
> Eingabe-Schicht, Ausgabe-Schicht und einer versteckten Schicht) und
> schreiben Sie die Gleichung auf, die die Ausgabe als Funktion der
> Eingabe darstellt.
>
> Als Beispiel sei das zwei-schichtige MLP mit den folgenden Gewichten
> und Bias-Werten gegeben:
>
> Schicht 1: $W_1 = [[2, 2],[3, -2]]$, $b_1 = [[1],[-1]]$
>
> Schicht 2: $W_2 = [[-2, 2]]$, $b_2 = [[-1]]$
>
> -   Stellen Sie dieses Netzwerk graphisch dar. Was ist die Anzahl der
>     Zellen in den einzelnen Schichten?
> -   Berechnen Sie die Ausgabe für eine Beispiel-Eingabe Ihrer Wahl.
> -   Stellen Sie ein ein-schichtiges Netz auf, das für jede Eingabe die
>     gleiche Ausgabe wie das obige Netzwerk berechnet und es somit
>     ersetzen könnte.
>
> </details>

<a id="id-f08c9adef34314d8e7af05e5874f87e61cfd93a9"></a>

#### NN06: Backpropagation

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [NN6.1 - MLP Backpropagation 1](https://youtu.be/G9x75THjueQ)
> -   [NN6.2 - MLP Backpropagation 2](https://youtu.be/9Ku0dJ8pGrU)
> -   [NN6.3 - MLP Zusammenfassung](https://youtu.be/uvT4WPIIkwQ)
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> -   [NN06-MLP_Backpropagation.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN06-MLP_Backpropagation.pdf)
> -   [NN06.2-MLP_Backpropagation_Beispiel.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN06.2-MLP_Backpropagation_Beispiel.pdf)
>
> </details>

##### Kurze Übersicht

###### Forwärts- und Rückwärtslauf

-   Im Forwärtslauf (engl. forward pass oder forward propagation) wird
    ein einzelner **Forwärtsschritt** von Schicht $[l-1]$ auf Schicht
    $[l]$ wie folgt berechnet:
    $$Z^{[l]} = W^{[l]}A^{[l-1]} + b^{[l]} \tag{1}$$
    $$A^{[l]} = g(Z^{[l]}) \tag{2}$$ Dabei bezeichnet $g$ die
    Aktivierungsfunktion (z.B. Sigmoid oder ReLU).

-   Im Rückwärtslauf (engl. *backpropagation*) werden in einem einzelnen
    **Rückwärtsschritt** von Schicht $[l]$ auf Schicht $[l-1]$ die
    folgenden Gradienten berechnet:

    $$dZ^{[l]} := \frac{\partial J }{\partial Z^{[l]}} = dA^{[l]} * g'(Z^{[l]}) \tag{3}$$

    $$dW^{[l]} := \frac{\partial J }{\partial W^{[l]}} = \frac{1}{m} dZ^{[l]} A^{[l-1] T} \tag{4}$$

    $$db^{[l]} := \frac{\partial J }{\partial b^{[l]}} = \frac{1}{m} \sum_{i = 1}^{m} dZ^{[l](i)}\tag{5}$$

    $$dA^{[l-1]} := \frac{\partial J }{\partial A^{[l-1]}} = W^{[l] T} dZ^{[l]} \tag{6}$$

    Dabei steht "$*$" für die elementweise Multiplikation.

-   Beachten Sie:

    -   Der Forwärtsschirtt übernimmt $A^{[l-1]}$ von dem vorherigen
        Schritt und gibt $A^{[l]}$ an den nächsten Schritt weiter.
    -   Der Rückwärtschritt übernimmt $dA^{[l]}$ von dem vorherigen
        Schritt und gibt $dA^{[l-1]}$ an den nächsten Rückwärtsschritt
        weiter.

###### Parameteraktualisierung

-   Die Aktualisierung der Parameter in Schicht $l$ erfolgt wie gewohnt
    durch: $$W^{[l]} = W^{[l]} - \alpha \text{ } dW^{[l]} \tag{7}$$
    $$b^{[l]} = b^{[l]} - \alpha \text{ } db^{[l]} \tag{8}$$ Dabei
    bezeichnet $\alpha$ die Lernrate.

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann den Forwärts- und Rückwärtslauf in Matrix Notation
>     mit mehreren Datenpunkten als Eingabe erklären
> -   k3: Ich kann Aktivierungsfunktionen ableiten
> -   k3: Ich kann die Berechnung der partiellen Ableitungen durchführen
> -   k3: Ich kann den Rückwärtslauf (backpropagation) für ein gegebenes
>     MLP durchführen
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Backpropagation
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106593&client_id=FH-Bielefeld)
>
> </details>

<a id="id-59d01c7aa50822d6f5b2f5f0413bf60ad710fcdf"></a>

#### NN07: Training & Testing

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [NN7.1 - Training, Testing,
>     Validierung](https://youtu.be/PUw-TvLJULI)
> -   [NN7.2 - Kreuzvalidierung](https://youtu.be/DqjdZ8HaDSo)
> -   [NN7.3 - Beispiel](https://youtu.be/7XATTMNI-gI)
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> -   [NN07-Testing-Validierung.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN07-Testing-Validierung.pdf)
>
> </details>

##### Kurze Übersicht

###### Training und Testing

-   Der tatsächliche **Erfolg** eines Modells wird nicht durch niedrige
    Trainingskosten gemessen, sondern durch geringe Kosten auf
    ungesehenen Daten, d.h. **hohe Vorhersagekraft, gute
    Generalisierung**!

-   Die Menge aller gelabelten Daten in **Trainingsset und Testset**
    aufteilen, Testset nicht während des Trainings einsetzen!.

    -   $E_{in}$ bezeichnet den Fehler auf dem Trainingsset, auch
        **in-sample error**.
    -   $E_{out}$ bezeichnet den Fehler auf dem gesamten Eingaberaum
        $X$, auch **out-of-sample error**. $E_{out}$ ist der eigentliche
        Indikator für den zukünftigen Erfolg des Modells, ist uns aber
        nicht zugänglich.
    -   $E_{test}$ bezeichnet den Fehler auf dem Testset und ist eine
        **Näherung** für $E_{out}$.

> [!TIP]
>
> **Analogie**:
>
> $E_{in}$ : Erfolg in Übungsaufgaben und Probeprüfungen.
>
> $E_{test}$ : Erfolg in Endprüfung.

-   Die Näherung $E_{test}$ sollte möglichst genau sein, damit es als
    ein verlässliches **Gütesiegel** dienen kann.

    -   Das Testset sollte genug Daten enthalten. Üblicher Anteil an
        Testdaten:
        -   bei $|D| \approx 100.000 \rightarrow$ ca. 20%
        -   bei $|D| \approx 10.000.000 \rightarrow$ ca. 1%
        -   Beispiel: Hat man 1000 Beispiele im Testset, wird $E_{test}$
            mit $\ge 98\%$ Wahrscheinlichkeit in der $\pm 5\%$ Umgebung
            von $E_{out}$ liegen (für theoretische Grundlagen und
            Herleitung siehe ([Abu-Mostafa u. a. 2012,
            39--69](#ref-AbuMostafa2012))).
    -   Trainingsdaten und Testdaten sollten möglichst aus derselben
        Verteilung kommen, wie die zukünftigen **Real-World-Daten**.

-   **Wichtige Bemerkung**:

    -   Testdaten nicht anfassen, bis das Modell Einsatzbereit ist!
    -   Die Testdaten dürfen in **keinster Weise** bei der Auswahl der
        endgültigen Hypothese eingesetzt werden, weder bei der
        Berechnung der Parameter (Training), noch bei der Bestimmung der
        Hyperparameter (Hyperparameter-Tuning).
    -   Sobald der Testfehler die Auswahl der endgültigen Hypothese
        beeinflusst, kann sie nicht mehr als "Gütesiegel" eingesetzt
        werden.\
        **CHECK**: Hätte man zufällig andere Testdaten gewählt, könnte
        sich dadurch die endgültige Hypothese ändern?

###### Validierung und Modellauswahl

-   Das Ziel ist es, das Modell mit bester Generalisierung, also
    kleinstem $E_{out}$ zu bestimmen. $E_{out}$ ist jedoch unbekannt und
    die Näherung $E_{test}$ *darf nicht* bei der Modellauswahl
    eingesetzt werden.

-   LÖSUNG: Einen weiteren Teil der Daten als **Validierungsset** (auch
    *development set*) beiseitelegen und nicht für das Training
    (i.e. Minimierung des Trainingsfehlers $E_{in}$) verwenden!

-   **Bemerkung**:

    Das Wort **Modell** kann je nach Kontext unterschiedliche
    Bedeutungen annehmen.\
    Ein Modell im aktuellen Kontext ist als ein Paar
    $(\mathcal{H},\mathcal{A})$ von Hypothesenraum (bzw.
    **Modellarchitektur**) und **Lernalgorithmus** definiert.

    -   Die Auswahl eines Modells kann aus einer Menge von Modellen
        unterschiedlicher Art erfolgen (z.B. lineare Modelle,
        polynomiale Modelle, neuronale Netze), oder von Modellen
        derselben Art aber mit unterschiedlichen Hyperparametern (z.B.
        Neuronale Netze mit unterschiedlicher Anzahl von versteckten
        Schichten).
    -   Außerdem kann dieselbe Modellarchitektur $\mathcal{H}$ mit
        unterschiedlichen Lernalgorithmen trainiert werden, was wiederum
        die endgültige Hypothese beeinflussen kann. Die Bestimmung der
        Hyperparameter von ${\mathcal{A}}$ (wie z.B.
        Optimierungsfunktion, Lernrate, Kostenfunktion,
        Regularisierungsparameter usw.) sind daher auch Teil der
        Modellauswahl.

-   Der **Validierungsfehler $E_{val}$** kann nun als
    Entscheidungsgrundlage an verschiedenen Stellen des Lernrpozesses
    eingesetzt werden, wie zum Beispiel:

    -   Bei der **Auswahl geeigneter Hyperparameter** wie z.B. Anzahl
        Schichten, Anzahl Zellen/Schicht, Aktivierungsfunktion,
        Regularisierungsparameter (siehe Abbildung 1).

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/val1.png" width="80%" /></p><p align="center">Abbildung 1 - Einsatz der Validierung für das Hyperparameter-Tuning</p>

    -   Bei der **Auswahl der endgültigen Hypothese** ($\rightarrow$
        Parameterauswahl!): unter allen Hypothesen, die während des
        Trainings durchlafen werden, wähle jene mit kleinstem $E_{val}$
        (siehe Abbildung 2).

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/val2.png" width="80%" /></p><p align="center">Abbildung 2 - Einsatz der Validierung bei der Auswahl der entgültigen Hypothese</p>

    -   Bei der graphischen **Darstellung von Lernkurven** für die
        Diagnose von Über- und Unteranpassung (siehe Abbildung 3).

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/val3.png" width="80%" /></p><p align="center">Abbildung 3 - Lernkurven</p>

-   Übliche train/val/test Aufteilung der Daten (in Prozent):

    -   bei $|D| \approx 100.000 \rightarrow$ ca. 60/20/20
    -   bei $|D| \approx 10.000.000 \rightarrow$ ca. 98/1/1

-   **Bemerkung**:

    Das Modell ist trainiert für gute Ergebnisse auf Trainingsdaten und
    "fine-tuned" für gute Ergebnisse auf den Validierungsdaten.
    Ergebnisse auf Testdaten werden mit hoher wahrscheinlichkeit
    schlechter ausfallen, als auf Validierungsdaten ($E_{val}$ ist eine
    zu optimistische Näherung).

-   Sind Validierungs- und/oder Trainingsset zu klein, führt das zu
    schlechten Näherungen $E_{val}$ und folglich zu schlechten
    Entscheidungen.

    -   Bei der Aufteilung muss ein gutes Trade-off gefunden werden.
    -   Wenn kein Gütesiegel notwendig ist, kann man auf das Testset
        verzichten und die Daten in Trainings- und Validierungsset
        aufteilen.
    -   Für eine bessere Näherung mit weniger Validierungsdaten kann
        k-fache Kreuzvalidierung eingesetzt werden (wenn genug
        Rechenkapazität vorhanden ist).

###### K-fache Kreuzvalidierung (engl. k-fold cross-validation):

-   Das Modell $(\mathcal{H_m},\mathcal{A_m})$ wird $k$ mal trainiert
    und validiert, jedes mal mit unterschiedlichen Trainings- und
    Validierungsmengen:
    -   Die Trainingsdaten werden in $k$ disjunkte Teilmengen
        $D_1, D_2, ..., D_k$ aufgeteilt.

    -   Bei dem $i$-ten Training werden die Teilmenge $D_i$ für die
        Berechnung des Validierungsfehlers $e_i := E_{val}(h_m^{*(i)})$
        und die restlichen $k-1$ Teilmengen für das Training verwendet.

    -   Der **Kreuzvalidierungsfehler** des Modells
        $(\mathcal{H_m},\mathcal{A_m})$ ist der Durchschnitt der $k$
        Validierungsfehler $e_1, e_2, ..., e_k$ (siehe Abbildung 4).
        $$E_{CV}(m) := \frac{1}{k} \sum_{i=1}^{k} e_i = \frac{1}{k} \sum_{i=1}^{k} E_{val}(h_m^{*(i)})$$

    <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/val4.png" width="80%" /></p><p align="center">Abbildung 4 - Kreuzvalidierung</p>
-   Bemerkung: Die Kreuzvalidierung wird nur bei der Modellauswahl
    eingesetzt: es liefert verlässlichere Näherungen für $E_{out}$ und
    führt daher zu besseren Entscheidungen. Das zuletzt ausgewählte
    Modell wird danach wie gewohnt auf den gesamten Trainigsdaten
    (ausgenommen Testdaten) trainiert und zum Schluss mit den Testdaten
    evaluiert.

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Begriffe Trainings-, Validierungs- und Testfehler
>     erklären
> -   k2: Ich kann den Zweck einer Testmenge erläutern
> -   k2: Ich kann das Verfahren der Kreuzvalidierung erklären
> -   k2: Ich kann den Begriff Hyperparameter-Tuning erklären
> -   k3: Ich kann verschiedene Lernkurven interpretieren
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Training & Testing
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106594&client_id=FH-Bielefeld)
>
> </details>

<a id="id-754af026d5303aa4a872ce1693668530aefee309"></a>

#### NN08: Performanzanalyse

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [NN8.1 - Confusion Matrix](https://youtu.be/T-WYL28iwdU)
> -   [NN8.2 - Precision und Recall](https://youtu.be/fpsNzn4Moow)
> -   [NN8.3 - Precision Recall Trade-off](https://youtu.be/Wx_HAuIXTAQ)
> -   [NN8.4 - F1-Score](https://youtu.be/UAV7EpdIe6Q)
> -   [NN8.5 - Harmonisches Mittel-
>     Intuition](https://youtu.be/vsmoYiArtrA)
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> -   [NN08-Performanzanalyse.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN08-Performanzanalyse.pdf)
>
> </details>

##### Kurze Übersicht

###### Performanzmetriken für Klassifizierungsprobleme

####### Wahrheitsmatrix (engl. Confusion Matrix)

-   Gibt eine Übersicht über die Anzahl von richtig und falsch
    klassifizierten Datenpunkten (bei binärer Klassifizierung)
    -   $TP =$ \# True Positives $=$ Anzahl richtiger 1-Vorhersagen
    -   $FP =$ \# False Positives $=$ Anzahl falscher 1-Vorhersagen
    -   $FN =$ \# False Negatives $=$ Anzahl falscher 0-Vorhersagen
    -   $TN =$ \# True Negatives $=$ Anzahl richtiger 0-Vorhersagen
-   Bei Klassifizierungsproblemen mit $N$ Klassen hat man eine
    $N \times N$ Matrix, die in Position $(i,j)$ die Anzahl der
    Klasse-$j$-Beispiele enthält, die als Klasse-$i$ vorhergesagt
    wurden.

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/nn/images/nn8-1.png" width="80%" /></p><p align="center">Abbildung 1 - Wahrheitsmatrix bei binärer Klassifizierung</p>

####### Treffergenauigkeit (engl. Accuracy)

-   Anzahl richtig klassifizierter Datenpunkte, Erfolgsrate (engl.
    correct rate) $$Accuracy = \frac{TP+TN}{TP+TN+FP+FN}$$

-   Accuracy vermittelt ein falsches Bild des Erfolges bei
    unausgewogenen Datensätzen

    Beispiel:

    -   Klasse 1 hat 10, Klasse 0 hat 990 Beispiele.
    -   Ein Modell, das immer 0 ausgibt, hat $990/1000 = 0.99$
        Treffergenauigkeit, ist aber offensichtlich kein gutes Modell!

####### Precision

-   Positive Predictive Value (PPV)
-   Antwort auf: Von allen **positiven Vorhersagen**, wie viele sind
    richtig? $$Precision = \frac{TP}{TP + FP}$$
-   Wahrscheinlichkeit, dass ein positiv klassifiziertes Beispiel auch
    tatsächlich positiv ist.
-   Je näher an 1, desto besser.
-   Accuracy of **positive predictions**.

####### Recall

-   True Positive Rate, auch Sensitivität (engl. Sensitivity)
-   Antwort auf: Von allen **positiven Beispielen**, wie viele wurden
    richtig klassifiziert? $$Recall = \frac{TP}{TP + FN}$$
-   Wahrscheinlichkeit, dass ein positives Beispiel tatsächlich als
    solches erkannt wird.
-   Je näher an 1, desto besser.
-   Accuracy of **positive examples**.

####### Precision-Recall Trade-off

-   Ein gutes Modell sollte hohe Precision und zugleich hohes Recall
    haben.
-   Man kann die Precision eines Modells beliebig erhöhen (durch das
    Vergrößern des Schwellenwertes bei der Klassifizierung), jedoch wird
    dabei der Recall abnehmen.
-   Genau so kann man den Recall eines Modells beliebig erhöhen (durch
    das Verkleinern des Schwellenwertes bei der Klassifizierung), jedoch
    wird dabei die Precision abnehmen.
-   Es gilt ein gutes Trade-off zu finden.
-   Eine Zwei-Zahlen-Metrik erschwert den Entscheidungsprozess bei
    Evaluierung und Modellauswahl.

####### $F_1$-Score (Harmonisches Mittel)

-   Fasst Precision (P) und Recall (R) in einer Metrik zusammen
    (Harmonisches Mittel von P und R):
    $$F_1-Score = \frac{2}{\frac{1}{P} + \frac{1}{R}} = 2 \cdot \frac{PR}{P + R}$$
-   Der $F_1$-Score wird nur dann hoch sein, wenn P und R beide hoch
    sind.
-   Je näher an 1, desto besser.
-   Sehr kleine P und R Werte ziehen den $F_1$-Score sehr stark
    herunter. In dieser Hinsicht gibt diese Metrik ein akkurates Bild
    über den Erfolg eines Modells.

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die betrachteten Performanzmetriken für die
>     Evaluierung von Klassifizierungsmodellen erläutern
> -   k2: Ich kann die Wahrheitsmatrix (engl. Confusion Matrix) erklären
> -   k2: Ich kann den Begriff Treffergenauigkeit (engl. Accuracy)
>     erklären
> -   k2: Ich kann den Begriff Precision (engl. Precision) erklären
> -   k2: Ich kann den Begriff Recall erklären
> -   k2: Ich kann den Begriff F_1-Score (Harmonisches Mittel) erklären
> -   k3: Ich kann Precision und Recall berechnen und deuten
> -   k3: Ich kann den F_1-Score berechnen und deuten
> -   k3: Ich kann die Performanzmetriken bei der Evaluierung und
>     Auswahl von Modellen einsetzen
>
> </details>

<a id="id-a264d337dcfeece8936f208b6f89bb1efe99ea0f"></a>

## Praktikum/Übung

Hier finden Sie die Übungsblätter.

Bitte bearbeiten Sie vor der jeweiligen Sprechstunde das bereitgestellte
Material (Skripte, Videos, Quizzes, Literatur, ...) und versuchen Sie
vor der Sprechstunde das entsprechende Übungsblatt zu lösen, damit Sie
in der der Sprechstunde Ihre Fragen zum Thema stellen können.

<a id="id-97b1dd75d6bb5e4678ebee3df7fe5a521e52d6e2"></a>

### Übungsblatt: Constraints

#### CSP.01: Logikrätsel (2P)

Betrachten Sie die Variante des berühmten
["Einstein-Rätsels"](https://de.wikipedia.org/wiki/Zebrar%C3%A4tsel) auf
Wikipedia.

Formulieren Sie das Problem als CSP (Variablen, Wertebereiche,
Constraints) zunächst auf dem Papier. Machen Sie sich klar, was die
Variablen und was deren Wertebereiche sind. Schreiben Sie die
Constraints als (unäre bzw. binäre) Relationen zwischen den Variablen
auf.

*Hinweis*: Machen Sie sich zunächst klar, was die Variablen und was
deren Wertebereiche sind. Schreiben Sie die Constraints als (unäre bzw.
binäre) Relationen auf.

*Thema*: Formulierung von Problemen als CSP

#### CSP.02: Framework für Constraint Satisfaction (3P)

Lösen Sie nun das obige Rätsel (aus CSP.01):

1.  Lösen Sie das Rätsel zunächst mit dem Basis-Algorithmus `BT_Search`
    aus der Vorlesung.
2.  Erweitern Sie den Algorithmus um die Heuristiken MRV und
    Gradheuristik und lösen Sie das Problem erneut. Vergleichen Sie die
    Ergebnisse und die Laufzeit der beiden Experimente.
3.  Wenden Sie vor dem Start von `BT_Search` den AC-3 an. Erhalten Sie
    damit bereits eine Lösung (bzw. Unlösbarkeit)? Falls nicht, wenden
    Sie anschließend den ergänzten Algorithmus aus Schritt (2) an.
    Vergleichen Sie wieder die Ergebnisse und die Laufzeiten.
4.  Wenden Sie die *Min-Conflicts* Heuristik zur Lösung des Problems an.
    Vergleichen Sie wieder die Ergebnisse und die Laufzeiten.

Sie können dafür eine Handsimulation anwenden oder die Algorithmen
implementieren. Sie können gern auch die Java-Klassen im Paket
[`aima.core.search.csp`](https://github.com/aimacode/aima-java/tree/AIMA3e/aima-core/src/main/java/aima/core/search/csp)
bzw. die Python-Klassen in
[`csp.py`](https://github.com/aimacode/aima-python/blob/master/csp.py)
als Ausgangspunkt nutzen.[^6]

#### CSP.03: Kantenkonsistenz mit AC-3 (1P)

Sei $D=\lbrace 0, \ldots, 5 \rbrace$, und ein Constraintproblem
definiert durch

$$\langle
    \lbrace v_1, v_2, v_3, v_4 \rbrace,
    \lbrace D_{v_1} = D_{v_2} = D_{v_3} = D_{v_4} = D \rbrace,
    \lbrace c_1, c_2, c_3, c_4 \rbrace
\rangle$$

mit

-   $c_1=\left((v_1,v_2), \lbrace (x,y) \in D^2 | x+y = 3 \rbrace\right)$,
-   $c_2=\left((v_2,v_3), \lbrace (x,y) \in D^2 | x+y \le 3 \rbrace\right)$,
-   $c_3=\left((v_1,v_3), \lbrace (x,y) \in D^2 | x \le y \rbrace\right)$
    und
-   $c_4=\left((v_3,v_4), \lbrace (x,y) \in D^2 | x \ne y \rbrace\right)$.

1.  Zeichnen Sie den Constraint-Graph
2.  Wenden Sie den AC-3-Algorithmus auf das CSP an. Geben Sie den
    Zustand der Queue und das Ergebnis von `ARC_Reduce`, d.h. den
    Ergebniszustand des aktuellen $D_i$, für jede Iteration des
    Algorithmus an.

*Thema*: Handsimulation des AC-3-Algorithmus

#### CSP.04: Forward Checking und Kantenkonsistenz (1P)

Betrachten Sie erneut das CSP aus der vorigen Aufgabe und die Zuweisung
$\alpha = \lbrace v_1 \to  2 \rbrace$.

1.  Erzeugen Sie Kantenkonsistenz in $\alpha$. Geben Sie hierzu die
    Wertebereiche der Variablen vor und nach dem Erzeugen der
    Kantenkonsistenz an.

    *Hinweis*: Sie dürfen annehmen, dass der Wertebereich von Variablen
    mit bereits zugewiesenen Werten nur aus dem zugewiesenen Wert
    besteht, während unbelegte Variablen den vollen Wertebereich haben.

    *Hinweis*: Sie müssen zur Lösung dieser Teilaufgabe nicht den AC-3
    nutze.

2.  Führen Sie Forward-Checking in $\alpha$ aus. Vergleichen Sie das
    Ergebnis mit (1).

*Thema*: Kantenkonsistenz und Forward Checking verstehen

#### CSP.05: Planung von Indoor-Spielplätzen (3P)

Sie sind für die Planung von Indoor-Spielplätzen zuständig.

Ein Spielplatz hat eine rechteckige Form, etwa 40x100 m. Zur
Vereinfachung wird diese Fläche in ein gleichmäßiges Raster unterteilt,
beispielsweise 10x10 cm. Es gibt am Rand mehrere Türen (normaler
Eingang, Notausgänge).

Auf dieser Grundfläche sollen verschiedene Spielgeräte angeordnet
werden, beispielsweise Go-Kart-Bahnen, Hüpfburgen und Kletterberge.
Diese Spielgeräte haben selbst eine rechteckige Grundfläche, wobei die
Abmessungen rastergenau sein sollen (also Vielfache der Rastergröße).
Weiterhin gibt es eine Bar, die als größerer rechteckiger Bereich
modelliert werden kann (keine Unterscheidung in Tresen plus Tische plus
Stühle o.ä. notwendig).

Die Aufgabe besteht darin, die Spielgeräte und den Bar-Bereich nach
bestimmten Randbedingungen anzuordnen. Zu diesen Vorgaben gehört, dass
sich die Spielgeräte nicht überlappen oder berühren, dass bestimmte
Sicherheitsabstände eingehalten werden (1m zw. den Spielgeräten), dass
Entspannungszonen eingerichtet werden und dass Sichtlinien gewährleistet
sind (z.B. sollten die Aktivitäten am Kletterberg vom Barbereich aus
beobachtet werden können). Die Bar ist bevorzugt direkt am Eingang zu
finden. Notausgänge dürfen nicht verstellt werden.

Abstrahieren Sie das gegebene Problem angemessen und geben Sie eine
geeignete Modellierung als CSP an. Definieren Sie sich ein paar
Spielgeräte und lösen Sie das Problem mit Hilfe von *MAC* und
*Min-Conflicts*.

*Thema*: Modellierung eines Real-World-Problems

#### Bonus: DSL für Constraint Solving: MiniZinc (2P)

[MiniZinc](https://www.minizinc.org/) ist eine *Domain Specific
Language* (DSL) zum Modellieren von Constraint- und
Optimierungs-Problemen.

Schauen Sie sich das
[Tutorial](https://docs.minizinc.dev/en/stable/part_2_tutorial.html) an.
Stellen Sie das Einstein-Rätsel oder das Spielplatz-Problem in MiniZinc
dar. Nutzen Sie zur Ausführung einen der im
[Playground](https://play.minizinc.dev) angebotenen Solver. Vergleichen
Sie die Modellierung und die Laufzeiten mit Ihren Ergebnissen aus den
vorigen Aufgaben.

*Thema*: DSL zur Formulierung von Constraint-Problemen

<a id="id-8b661cb2908035ca0da1b1837f2b800c4381ebad"></a>

### Übungsblatt: Naive Bayes

#### NB.01: Wahlkampf mit Naive Bayes (4P)

Betrachten Sie erneut das Szenerio von [Aufgabe
DTL.01](#id-4a134eae1417a20b6726b2fdc2b1dfd28a683e29).

(2P) "Trainieren" Sie für den gezeigten Datensatz einen Naive Bayes
Klassifikator (manuell).

(2P) Welchen Kandidaten würde der Klassifikator einem Wähler ($< 35$,
niedrig, Bachelor) zuordnen? Erklären Sie die Arbeitsweise des
Klassifikators.

#### NB.02: Textklassifikation mit Naive Bayes: Spam-Erkennung (6P)

Laden Sie sich den Datensatz ["Spam Mails Dataset"
(Kaggle)](https://www.kaggle.com/datasets/venky73/spam-mails-dataset)
herunter. Dieser besteht aus knapp 5000 vorklassifizierten Einträgen
(Mails mit den Klassen `ham` bzw. `spam`).

(2P) Bereiten Sie diesen Datensatz für das Training eines Naive Bayes
Klassifikators vor. Überlegen Sie sich, was mögliche Merkmale sein
könnten und schreiben Sie sich ein Skript, welches den Datensatz
entsprechend bearbeitet/transformiert. (*Tipp*: Ein
["Bag-of-Words"](https://en.wikipedia.org/wiki/Bag-of-words_model) ist
ein guter Anfang.)

(2P) Implementieren Sie einen Naive Bayes Klassifikator in einer
Programmiersprache Ihrer Wahl oder machen Sie sich mit existierenden
Implementierungen vertraut, beispielsweise in
[NLTK](https://www.nltk.org/index.html) oder
[scikit-learn](https://scikit-learn.org/stable/index.html) oder
[Weka](https://waikato.github.io/weka-wiki/).

(2P) Splitten Sie den vorbereiteten Datensatz in eine Trainings- und
eine Testmenge auf und trainieren Sie den Naive Bayes Klassifikator. Wie
sieht ihr Klassifikator aus, was sind die wichtigsten Begriffe jeweils
für die Klasse `spam` bzw. `ham`? Bewerten Sie das Testergebnis.

<a id="id-ab3ff3658bdafaf1ee5c17c11ffae098b587c048"></a>

### Übungsblatt: Problemlösen, Suche

#### Bonus: Möglichkeiten und Grenzen sowie Auswirkungen der KI (2P)

Recherchieren Sie, welche Probleme bereits mittels Computer- bzw.
Robotereinsatz gelöst werden können und welche aktuell noch ungelöst
sind.

Recherchieren und diskutieren Sie Auswirkungen auf die Gesellschaft
durch die KI, etwa durch autonomes Fahren oder durch *Large Language
Models* (LLM).

Hier ein paar Startpunkte:

-   "Empirical evidence of Large Language Model's influence on human
    spoken communication" (https://arxiv.org/abs/2409.01754) - Gut?
    Schlecht? Egal?
-   "AI and Cognitive Decline"
    (https://www.reddit.com/r/Professors/s/Otxpcpe65L)
-   "Data Center the Size of Manhattan"
    (https://www.reddit.com/r/artificial/comments/1m1oup8/zuckerberg_says_meta_will_build_data_center_the)
-   "Mach dir selbst ein Video"
    (https://www.zeit.de/digital/2024-07/ki-filme-videos-newsletter-kuenstliche-intelligenz)
-   "Police pulls over a driverless Waymo car"
    (https://www.reddit.com/r/Damnthatsinteresting/comments/1dvsod6/phoenix_police_officer_pulls_over_a_driverless)
-   "AI is making it up. Your authoritative source is the documentation"
    (https://github.com/jgm/pandoc/discussions/10994)

*Thema*: Gefühl für bereits realisierbare Aufgaben, Chancen und Risiken,
Ethik

#### Search.01: Problemformalisierung, Zustandsraum (3P)

Drei Elben und drei Orks befinden sich an einem Ufer eines Flusses und
wollen diesen überqueren. Es steht dazu ein Pferd zur Verfügung, welches
maximal zwei Wesen tragen kann. Das Pferd kann den Fluss nicht allein
überqueren.

Gesucht ist eine Möglichkeit, alle Elben und Orks über den Fluss zu
bringen. Dabei darf zu keiner Zeit an keinem Ufer die Anzahl der sich
dort befindlichen Orks größer sein als die der dort wartenden Elben, da
es sonst zu Konflikten zwischen beiden Gruppen kommt.

1.  Formalisieren Sie das Problem (Zustände, Aktionen, Start- und
    Endzustand).
2.  Skizzieren Sie den Problemgraph.

*Thema*: Formalisierung von Problemen, Problemgraph

#### Search.02: Suchverfahren (5P)

Betrachten Sie folgende Landkarte und Restwegschätzungen:

<p align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MapGermanyGraph.svg/476px-MapGermanyGraph.svg.png" width="40%" /></p>

Quelle: [MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg)
by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and
[Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on Wikimedia
Commons ([Public
Domain](https://en.wikipedia.org/wiki/en:public_domain))

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/homework/images/MapGermanyGraph-Kosten.png" width="40%" /></p>

1.  Finden Sie nacheinander mit Tiefensuche (1P) und Breitensuche (1P)
    (jeweils in der Graph-Search-Variante) sowie A\* (2P) (in der
    Tree-Search-Variante mit der Verbesserung "keine Zyklen", siehe
    Vorlesung) jeweils einen Weg von Würzburg nach München.

    Vergleichen Sie die drei Algorithmen: Wie viele Einträge gibt es in
    der Datenstruktur maximal, wie oft wird die Hauptschleife
    durchlaufen (also ein Element aus der Datenstruktur entnommen,
    untersucht und weiterentwickelt)?

    Sie können dafür eine Handsimulation anwenden oder die Algorithmen
    implementieren. Sie können gern auch die Java-Klassen im Paket
    [`aima.core.search`](https://github.com/aimacode/aima-java/tree/AIMA3e/aima-core/src/main/java/aima/core/search)
    bzw. die Python-Klassen in
    [`search.py`](https://github.com/aimacode/aima-python/blob/master/search.py)
    als Ausgangspunkt nutzen.[^7]

2.  Dürfen die oben gegebenen Restkostenabschätzungen in A\* verwendet
    werden? (1P)

    -   Falls ja, warum?
    -   Falls nein, warum? Wie müssten die Abschätzungen ggf. korrigiert
        werden?

    Falls Sie der Meinung waren, die Abschätzungen sind nicht korrekt,
    korrigieren Sie die Abschätzungen nun und führen Sie erneut eine
    Suche mit A\* durch.

*Hinweis*: Reihenfolge bei gleichen $f(n)$-Kosten: alphabetische
Reihenfolge, d.h. Mannheim käme vor München, Karlsruhe vor Kassel etc.

#### Search.03: Dominanz (1P)

Was bedeutet *"Eine Heuristik $h_1(n)$ dominiert eine Heuristik
$h_2(n)$"*?

Wie wirkt sich die Nutzung einer dominierenden Heuristik $h_1(n)$ in A\*
aus (im Vergleich zur Nutzung einer Heuristik $h_2$, die von $h_1$
dominiert wird)?

Geben Sie selbstgewählte Beispiele an.

*Thema*: Begriff der dominierenden Heuristik (Selbststudium)

#### Search.04: Beweis der Optimalität von A\* (1P)

Beweisen Sie, dass A\* in der Tree-Search-Variante bei Nutzung einer
zulässigen Heuristik optimal ist.

*Thema*: Bedeutung einer zulässigen Heuristik (Selbststudium)

<a id="id-cb2cf09f6031a168fc7c9094c3ee2d9df377e9f0"></a>

### Übungsblatt: Lokale Suche, GA

#### Bonus: ChatGPT Taboo (2P)

Spielen Sie [Tabu](https://en.wikipedia.org/wiki/Taboo_(game)) mit Ihrem
Lieblings-Chatbot und bringen Sie den Bot dazu, ein bestimmtes Wort oder
einen Satz zu sagen. Sie haben dabei eine Liste mit Wörtern, die Sie
nicht verwenden dürfen.

Geben Sie einen Bericht darüber ab, was Sie versucht haben, wie
leicht/schwer es war und eine vollständige Historie des "Gesprächs".
(Grenze: nicht länger als 30 Minuten, nicht mehr als 5 Seiten)

*Thema*: Interaktion mit Chatbots

#### EA.01: Modellierung von GA (2P)

Betrachten Sie das 8-Queens-Problem sowie das Landkarten-Färbeproblem
(aus Vorlesung [CSP:
Intro](#id-84f051404cae6b3a63ddc230ad80cb495047845f)). Starten Sie beim
Färbeproblem mit fünf verschiedenen Farben, Ziel sollte eine
konfliktfreie Einfärbung mit einer minimalen Anzahl an Farben sein.

Geben Sie für beide Probleme je eine geeignete **Kodierung** der
Individuen, passende Operatoren (**Crossover**, **Mutation**) und eine
geeignete **Fitnessfunktion** an, damit die Probleme mit einem GA gelöst
werden können. Begründen Sie Ihre Wahl!

Was würden Sie noch benötigen, um die obigen Probleme jeweils mit
Simulated Annealing lösen zu können?

*Thema*: Modellierung für GA und Gradientensuche

#### EA.02: Implementierung (5P)

Implementieren Sie den in der Vorlesung besprochenen GA und wenden Sie
den Algorithmus nacheinander auf beide Probleme an. Sie können gern auch
die Java-Klassen im Paket
[`aima.core.search.local`](https://github.com/aimacode/aima-java/tree/AIMA3e/aima-core/src/main/java/aima/core/search/local)
bzw. die Python-Klassen in
[`search.py`](https://github.com/aimacode/aima-python/blob/master/search.py)
als Ausgangspunkt nutzen.[^8]

Untersuchen Sie **systematisch** unterschiedliche
Varianten/Einstellungen der in der VL vorgestellten Operatoren. Führen
Sie pro Einstellung jeweils mind. 100 Läufe durch und messen Sie die
besprochenen Kennzahlen.

Erstellen Sie eine geeignete (systematische!) Auswertung Ihrer
Experimente.

#### EA.03: Anwendungen (3P)

1.  Analysieren Sie die Implementierung von [Randal Olson "Here's Waldo:
    Computing the optimal search strategy for finding
    Waldo"](http://www.randalolson.com/2015/02/03/heres-waldo-computing-the-optimal-search-strategy-for-finding-waldo/)
    ([Direktlink](https://github.com/rhiever/Data-Analysis-and-Machine-Learning-Projects)).
2.  Schauen Sie sich nun den ["Evolution
    Simulator"](https://www.openprocessing.org/sketch/205807) an. Wie
    ist dort die Modellierung erfolgt (Kodierung, Operatoren,
    Fitnessfunktion)?
3.  Wie werden EA/GA konkret im ["american fuzzy
    lop"](https://lcamtuf.coredump.cx/afl/) eingesetzt?

Welche Fitnessfunktion wurden in den drei Beispielen jeweils genutzt,
wie die Individuen und die Operatoren codiert?

Recherchieren Sie, in welchen *anderen* Anwendungen Evolutionäre
Algorithmen eingesetzt werden. Erklären Sie kurz, wie und wofür die
EA/GA jeweils genutzt werden.

*Thema*: Analyse von GA-Implementierungen

<a id="id-999c549c4e5cc5a8e810d1e55e7b21a1e3c85906"></a>

### Übungsblatt: Spiele

#### Bonus: Verlässlichkeit von ChatGPT (2P)

Vergleichen Sie Informationen aus zuverlässigen Quellen mit
Informationen aus einem LLM. Beurteilen Sie, ob die vom Model generierte
Information korrekt ist oder ob Dinge fehlen oder Halluzinationen
vorliegen.

Beispiel I: Erstellung einer Zeitleiste eines historischen Ereignisses.

Beispiel II: Erstellen von Quellcode zu einem Standardproblem aus der
Informatik.

*Thema*: Qualität und Zuverlässigkeit von generierten Inhalten

#### Games.01: Handsimulation: Minimax und alpha-beta-Pruning (3P)

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/homework/images/alphabeta.png"  /></p>

1.  (1P) Geben Sie für den Spielbaum die Minimax-Bewertungen an.

2.  (1P) Markieren Sie die Kanten, die bei alpha-beta-Pruning nicht mehr
    untersucht werden würden, d.h. wo Pruning stattfinden würde. Geben
    Sie für jeden Knoten die (sich ändernden) $\alpha$- und
    $\beta$-Werte an.

3.  (1P) Können die Knoten derart geordnet werden, dass
    alpha-beta-Pruning eine größere Anzahl von Zweigen abschneidet? Wenn
    ja, geben Sie eine solche Ordnung an. Wenn nein, begründen Sie Ihre
    Antwort.

*Hinweis*: Reihenfolge der Abarbeitung der Kindknoten: Wie in der VL von
links nach rechts.

*Thema*: Minimax und alpha-beta-Pruning

#### Games.02: Optimale Spiele: Minimax und alpha-beta-Pruning (4P)

1.  (2P) Implementieren Sie den Minimax-Algorithmus (wie in der VL
    besprochen) am Beispiel *Tic Tac Toe* in einer Sprache Ihrer Wahl.

2.  (1P) Ergänzen Sie Ihre Implementierung um alpha-beta-Pruning.

3.  (1P) Vergleichen Sie die Anzahl der jeweils berechneten Knoten.
    Überlegen Sie sich dazu ein **sinnvolles** Szenario.

*Thema*: Anwendung Minimax und alpha-beta-Pruning

#### Games.03: Minimax vereinfachen (1P)

Vereinfachen Sie den Minimax-Algorithmus aus der Vorlesung, indem Sie
die Eigenschaft *Nullsummenspiel* berücksichtigen und die Funktionen
`Min-Value` und `Max-Value` in eine einzige Funktion ohne explizite
Unterscheidung der Spieler zusammenfassen.

Überlegen Sie sich einen Beispielbaum und zeigen Sie anhand dessen die
Bewertung durch den Minimax-Algorithmus und durch Ihren vereinfachten
Algorithmus.

*Thema*: Nullsummenspiel, Minimax

#### Games.04: Suchtiefe begrenzen (1P)

Die Verwendung der Suchtiefenbeschränkung erfordert den Einsatz einer
Evaluierungsfunktion.

Betrachten Sie die auf
[https://github.com/aimacode/aima-exercises/blob/master/markdown/5-Adversarial-Search/exercises/ex_9/question.md](https://aimacode.github.io/aima-exercises/game-playing-exercises/ex_9/)
gegebene Evaluierungsfunktion für *Tic-Tac-Toe*.

Geben Sie die Werte der Evaluierungsfunktion für sechs verschiedene
Spielzustände an (3 Endzustände, 3 Zwischenzustände). Begründen Sie,
warum diese Evaluierungsfunktion im Zusammenhang mit *Tic-Tac-Toe*
sinnvoll sein kann.

*Thema*: Suchtiefenbegrenzung und Evaluierungsfunktion

#### Games.05: Minimax generalisiert (1P)

Betrachten Sie nun das Problem, den Spielbaum eines Drei-Personen-Spiels
zu evaluieren, das nicht notwendigerweise die Nullsummenbedingung
erfüllt.

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/homework/images/minmax-multiplayer.png"  /></p>

Die Spieler heißen 1, 2 und 3. Im Gegensatz zu
Zwei-Personen-Nullsummenspielen liefert die Bewertungsfunktion nun
Tripel $(x_1, x_2, x_3)$ zurück, wobei $x_i$ der Wert für Spieler $i$
ist. Allianzen zwischen Spielern sind nicht erlaubt.

Vervollständigen Sie den Spielbaum, indem Sie alle inneren Knoten und
den Wurzelknoten mit den entsprechenden Wert-Tripeln annotieren.

*Thema*: Minimax generalisiert für mehrere Spieler

<a id="id-4a134eae1417a20b6726b2fdc2b1dfd28a683e29"></a>

### Übungsblatt: Entscheidungsbäume (Decision Tree Learner DTL)

#### Bonus: Starke vs. Schwache KI (2P)

Recherchieren Sie und diskutieren Sie folgende Punkte:

-   Ist ein System wie ChatGPT "intelligent"? Was ist der Kern des
    Systems?
-   Gibt es Systeme, die intelligent sind? Was tun diese, wie arbeiten
    sie?
-   Brauchen wir wirklich Intelligenz in Systemen? Reicht auch schwache
    KI, d.h. reichen intelligent *wirkende* Systeme?
-   Absicht vs. Auswirkung: vorteilhafte Anwendungen vs. Unfälle
    (Robustheit und falsche Korrelationen, Fairness, Sicherheit)
    vs. Missbrauch (Spam, Betrug, Spear-Phishing, Desinformation)
    vs. doppelte Verwendung ("*dual use*": Raketen, Kernkraft,
    Genbearbeitung, ...) vs. *Bias* (Voreingenommenheit)

*Thema*: Schwache vs. starke KI, Auswirkungen und Nutzen

#### DTL.01: Entscheidungsbäume mit CAL3 und ID3 (6P)

Es ist wieder Wahlkampf: Zwei Kandidaten O und M bewerben sich um die
Kanzlerschaft. Die folgende Tabelle zeigt die Präferenzen von sieben
Wählern.

| Nr. | Alter    | Einkommen | Bildung  | Kandidat |
|:----|:---------|:----------|:---------|:---------|
| 1   | $\ge 35$ | hoch      | Abitur   | O        |
| 2   | $< 35$   | niedrig   | Master   | O        |
| 3   | $\ge 35$ | hoch      | Bachelor | M        |
| 4   | $\ge 35$ | niedrig   | Abitur   | M        |
| 5   | $\ge 35$ | hoch      | Master   | O        |
| 6   | $< 35$   | hoch      | Bachelor | O        |
| 7   | $< 35$   | niedrig   | Abitur   | M        |

Trainieren Sie nacheinander mit den Verfahren CAL3 (3P) und ID3 (3P) auf
der obigen Trainingsmenge je einen Entscheidungsbaum. Nutzen Sie für
CAL3 dabei die Schwellen $S_1=4$ und $S_2=0.7$.

Sie können dafür eine Handsimulation anwenden oder die Algorithmen
implementieren. Sie können gern auch die Java-Klassen im Paket
[`aima.core.learning`](https://github.com/aimacode/aima-java/blob/AIMA3e/aima-core/src/main/java/aima/core/learning/learners/DecisionTreeLearner.java)
bzw. die Python-Klassen in
[`learning.py`](https://github.com/aimacode/aima-python/blob/master/learning.py)
als Ausgangspunkt nutzen.[^9]

#### DTL.02: Pruning (1P)

Vereinfachen Sie schrittweise den Baum

$$x_3(x_2(x_1(C,A), x_1(B,A)), x_1(x_2(C,B), A))$$

so weit wie möglich.

Nutzen Sie die linearisierte Schreibweise. Geben Sie die jeweils
verwendete Regel an.

*Thema*: Anwendung der Transformations- und Pruning-Regeln

#### DTL.03: Machine Learning mit Weka (3P)

Weka
([waikato.github.io/weka-wiki/](https://waikato.github.io/weka-wiki/))
ist eine beliebte Sammlung von (in Java implementierten) Algorithmen aus
dem Bereich des Maschinellen Lernens. Laden Sie sich das Tool in der
aktuellen stabilen Version herunter und machen Sie sich mit der
beiliegenden Dokumentation vertraut.

Laden Sie sich die Beispieldatensätze "Zoo" (`zoo.csv`) und "Restaurant"
(`restaurant.csv`) aus dem AIMA-Repository
([github.com/aimacode/aima-data](https://github.com/aimacode/aima-data))
herunter.[^10] Zum Laden der Beispieldatensätze in Weka müssen die
`.csv`-Dateien eine Kopfzeile mit den Namen der Attribute haben. Passen
Sie die Dateien entsprechend an und laden Sie diese im Reiter
"Pre-Process" mit "Open file ...".

*Hinweis*: Wenn Sie *Weka 3.6* einsetzen, sind alle für dieses Blatt
erforderlichen Algorithmen bereits vorhanden. In neueren Versionen
müssen Sie in der Weka-Haupt-GUI den Paketmanager unter "Tools" starten
und dort nach einem Paket suchen, welches ID3 enthält, und dieses Paket
nachinstallieren.

1.  Training mit J48 (1P)

    Wechseln Sie auf den Reiter "Classify" und wählen Sie mit dem Button
    "Choose" den Entscheidungsbaum-Lerner J48 aus. (Dies ist eine
    Java-Implementierung von C4.5. Die ID3-Implementierung funktioniert
    für den `zoo.csv`-Datensatz leider nicht ...)

    Lernen Sie für die beiden Datensätze je einen Entscheidungsbaum. Wie
    sehen die Bäume aus? Wie hoch ist jeweils die Fehlerrate für den
    Trainingssatz? (Stellen Sie unter "Test options" den Haken auf "Use
    training set".) Interpretieren Sie die **Confusion Matrix**.

2.  ARFF-Format (1P)

    Lesen Sie in der beiliegenden Doku zum Thema "ARFF" nach. Dabei
    handelt es sich um ein spezielles Datenformat, womit man Weka
    mitteilen kann, welche Attribute es gibt und welchen Typ diese haben
    und welche Werte auftreten dürfen.
    ([Link](https://waikato.github.io/weka-wiki/formats_and_processing/arff/))

    Erklären Sie die Unterschiede zwischen "nominal", "ordinal" (bzw.
    "numeric") und "string".

    Konvertieren Sie den Zoo- und Restaurantdatensatz in das
    ARFF-Format. Beachten Sie, dass die ID3-Implementierung von Weka
    nicht mit bestimmten Attributtypen umgehen kann.

3.  Training mit ID3 und J48 (1P)

    Trainieren Sie für die im letzten Schritt erstellten Datensätze (Zoo
    und Restaurant) im ARFF-Format erneut Entscheidungsbäume. Nutzen Sie
    diesmal sowohl ID3 als auch J48.

    Vergleichen Sie wieder die Ergebnisse (Entscheidungsbäume,
    Fehlerraten, Confusion Matrix) untereinander und mit den Ergebnissen
    aus dem J48-Lauf mit den `.csv`-Dateien.

*Thema*: Kennenlernen von Weka

<a id="id-509c9bafc24171e16bb93dfcd473d2b9bae04d15"></a>

### Übungsblatt: Perzeptron

#### NN.Perzeptron.01: Entscheidungsgrenze (2P)

-   (1P) Betrachten Sie das durch den Gewichtsvektor
    $(w_0,w_1,w_2)^T = (2,1,1)^T$ gegebene Perzeptron. Zeichnen Sie die
    Trennebene und markieren Sie den Bereich, der mit $+1$ klassifiziert
    wird.
-   (1P) Welche der folgenden Perzeptrons haben die selbe Trennebene?
    Welche weisen exakt die gleiche Klassifikation auf?
    -   $(w_0,w_1,w_2)^T = (1, 0.5, 0.5)^T$
    -   $(w_0,w_1,w_2)^T = (200, 100, 100)^T$
    -   $(w_0,w_1,w_2)^T = (\sqrt{2}, \sqrt{1}, \sqrt{1})^T$
    -   $(w_0,w_1,w_2)^T = (-2, -1, -1)^T$

*Thema*: Verständnis Interpretation Perzeptron
(Trennebene/Entscheidungsgrenze)

#### NN.Perzeptron.02: Logische Funktionen als Perzeptron (2P)

-   (1.5P) Das Perzeptron kann zur Ausführung zahlreicher logischer
    Funktionen verwendet werden. Implementieren Sie die binären
    Logikfunktionen UND, ODER und KOMPLEMENT und demonstrieren Sie Ihre
    Implementierung in der Übung/im Praktikum.
-   (0.5P) Eine grundlegende Einschränkung des Perzeptrons besteht
    darin, dass es die EXKLUSIV-ODER-Funktion nicht implementieren kann.
    Erklären Sie den Grund für diese Einschränkung.

*Thema*: Verständnis Perzeptron

#### NN.Perzeptron.03: Perzeptron Lernalgorithmus (6P)

Ziel dieser Aufgabe ist es, mit Hilfe eines Experiments ein Gefühl für
die Laufzeit des Perzeptron-Lernalgorithmus zu bekommen und eine Art
empirische Approximation zu bestimmen.

##### Datensatz (1P)

-   Konstruieren Sie Ihren eigenen Datensatz $\mathcal{D}$ mit $m=10$
    gleichförmig verteilten Zufallspunkten aus dem Bereich
    $\mathcal{X}=[-1, 1]\times[-1, 1]$.
-   Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte
    Punkte aus dem Bereich $[-1, 1]\times[-1, 1]$. Verwenden Sie die
    Gerade, die durch diese zwei Punkte verläuft, als die
    Entscheidungsgrenze Ihrer Zielfunktion $f$. Sie können die positiv
    beschriftete Seite beliebig festlegen.
-   Werten Sie die Zielfunktion für jeden Datenpunkt $\mathbf{x}^{(j)}$
    aus, um die entsprechenden Beschriftungen (Ausgangslabel) $y^{(j)}$
    zu erhalten.

##### Training (3P)

Führen Sie nun den Perzeptron-Lernalgorithmus $1000$ mal hintereinander
aus. Initialisieren Sie jedes Mal die Gewichte mit $0$. Wählen Sie in
jedem Lernschritt einen Punkt $\mathbf{x}^{(i)}$ *zufällig* aus der
Menge der falsch klassifizierten Punkte und aktualisieren Sie die
Gewichte entsprechend der folgenden Formel:
$$\mathbf{w}:=\mathbf{w}+\alpha ( y^{(i)} - h(\mathbf{x}^{(i)}) ) \mathbf{x}^{(i)}$$

Nehmen Sie $\alpha=1$ als Lernrate. Halten Sie für jeden Durchlauf fest,
wie viele Schritte der Algorithmus benötigt, um zu der endgültigen
Hypothese $h^{*}(\mathbf{x})$ zu konvergieren. Berechnen Sie am Ende die
durchschnittliche Anzahl von benötigten Schritten. In welcher
Größenordnung liegt sie?

##### Experimente (2P)

Wiederholen Sie das obige Experiment mit $m=100$ und $m=1000$
Datenpunkten, jeweils ein Mal mit den Lernraten $\alpha=1$ und
$\alpha=0.1$. In welcher Größenordnung liegt die durchschnittliche
Anzahl von benötigten Schritten in diesen Fällen?

Um eine zuverlässigere Schätzung zu erhalten, können Sie dasselbe
Experiment mehrfach mit anderen zufällig generierten Datensätzen
derselben Größe $m$ wiederholen und danach den Durchschnitt über alle
Wiederholungen betrachten.

##### Visualisierung (optional)

-   Halten Sie während des Trainings die Anzahl der falsch
    klassifizierten Punkte fest und veranschaulichen Sie anschließend
    den Lernprozess mit Hilfe eines zweidimensionalen Plots.
-   Visualisieren Sie (auf eine geeignete Weise) Meilenstein 2.1, wie
    sich die Entscheidungsrenze während des Trainings verändert.

Sie können das folgende [**Jupyter
Notebook**](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/homework/files/perzeptron_lernalgorithmus_starter.ipynb)
als Startpunkt benutzen.

Quelle: *Idee nach* Yaser S. Abu-Mostafa, Malik Magdon-Ismail, and
Hsuan-Tien Lin. 2012. Learning From Data. AMLBook.

<a id="id-715e7fb7bfa3ef282899962cfa93c2f3da8c95bc"></a>

### Übungsblatt: Lineare / Logistische Regression & Gradientenabstieg

#### NN.Regression.01: Lineare Regression & Gradientenabstieg (3P)

Es sind folgende Trainingsdaten gegeben:

$$( x^{(1)}, y^{(1)} ) = (1, 1), ( x^{(2)}, y^{(2)} ) = (2, 1), ( x^{(3)}, y^{(3)} ) = (3, 2)$$

Es soll das lineare Regressionsmodell $h(x) = w_0 + w_1 x$ mit diesen
Daten trainiert werden, wobei die zu minimierende Kostenfunktion
(durchschnittliche Summe der Fehlerquadrate) wie folgt gegeben ist:

$$J(\mathbf{w}) = \frac{1}{2m} \sum^{m}_{j=1} (h(x^{(j)}) - y^{(j)} )^2$$

-   (1P) Geben Sie $n$ und $m$ an und schreiben Sie die Kostenfunktion
    für die gegebenen Datenpunkte explizit auf. Berechnen Sie den
    Gradientenvektor $\nabla J$ und beschreiben Sie die Bedeutung dieses
    Vektors.

-   (2P) Seien die Gewichte in einem Iterationsschritt
    $w_0 = 1, w_1 = 1$. Führen Sie für die Lernraten $\alpha=0.01$,
    $\alpha=0.1$ und $\alpha=1$ jeweils fünf aufeinanderfolgende
    Iterationen des Gradientenabstieg (Gradient Descent) Algorithmus
    durch.

    Erstellen Sie eine Tabelle mit den Spalten $w_0$, $w_1$,
    $J(\mathbf{w})$, $\nabla J(\mathbf{w})$,
    $\alpha \cdot \nabla J(\mathbf{w})$ und notieren Sie die zugehörigen
    Werte für jede Iteration. Erklären Sie, wie die
    Gewichtsaktualisierungen durchgeführt werden und geben Sie die dafür
    verwendete Formel an.

    Wie verändern sich die Kosten während des Gradientenabstieges für
    die unterschiedlichen Lernraten? Begründen Sie dieses Verhalten.

    Sie können das folgende
    [**Geogebra-Arbeitsblatt**](https://www.geogebra.org/classic/rcfffgsj)
    zu Hilfe nehmen.

*Thema*: Verständnis und Ablauf Gradientenabstieg und Lernrate

#### NN.Regression.02: Logistische Regression & Gradientenabstieg (7P)

##### Datensatz (1P)

-   Konstruieren Sie Ihren eigenen Datensatz $\mathcal{D}$ mit $m=100$
    gleichförmig verteilten Zufallspunkten aus dem Bereich
    $\mathcal{X}=[-1, 1]\times[-1, 1]$.
-   Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte
    Punkte aus dem Bereich $[-1, 1]\times[-1, 1]$. Verwenden Sie die
    Gerade, die durch diese zwei Punkte verläuft, als die
    Entscheidungsgrenze Ihrer Zielfunktion $f$. Sie können die positiv
    beschriftete Seite beliebig festlegen.
-   Werten Sie die Zielfunktion für jeden Datenpunkt $\mathbf{x}^{(j)}$
    aus, um die entsprechenden Beschriftungen (Ausgangslabel) $y^{(j)}$
    zu erhalten.

##### Training (3P)

Trainieren Sie ein logistisches Regressionsmodell auf diesen Daten, um
$h^{*}=\sigma(w^T x)$ zu finden. Verwenden Sie dazu den
Gradientenabstieg-Algorithmus. Initialisieren Sie alle Gewichtswerte mit
0 und führen Sie 2000 Iterationen durch. Nehmen Sie $\alpha=0.1$ als
Lernrate. Speichern Sie alle 100 Schritte die berechneten Kosten.
Zeichnen Sie am Ende die Kosten als Diagramm über die Anzahl der
Iterationen auf.

##### Experimente (3P)

Wiederholen Sie das obige Experiment mit unterschiedlichen Lernraten,
z.B. $\alpha=0.1$, $\alpha=0.01$ und $\alpha=0.001$. Vergleichen Sie die
Kosten-Diagramme.

Sie können das folgende [**Jupyter
Notebook**](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/homework/files/logistische_regression_starter.ipynb)
als Startpunkt benutzen. Sie können alternativ auch eine andere
Programmiersprache und/oder einen anderen Datensatz (z.B. zufällig
generierter Datensatz mittels Numpy and Scikit-Learn) verwenden.

*Thema*: Verständnis und Implementierung Logistische Regression

<a id="id-cba17b43f628a8fbf19e217d186183ebcd63bad5"></a>

### Übungsblatt: Overfitting & MLP

#### NN.MLP.01: Perzeptron-Netze (2P)

Konstruieren Sie ein Netz mit drei Perzeptrons, welches für zwei
Eingabevariablen $x_1$ und $x_2$ die in der folgenden Abbildung
blau-grau dargestellten Bereiche mit +1 klassifiziert. Benutzen Sie die
$\mathop{\text{sign}}$-Funktion als Aktivierungsfunktion.

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/homework/images/perzeptron_netz.png" width="50%" /></p><p align="center">Abbildung 1</p>

#### NN.MLP.02: Vorwärtslauf im MLP (2P)

Gegeben sei ein MLP mit 25 Zellen in der Eingangsschicht, 64 Zellen in
der ersten versteckten Schicht, 32 Zellen in der zweiten versteckten
Schicht und 4 Zellen in der Ausgabeschicht (die Bias-Zellen nicht
mitgezählt). In allen Zellen wird die ReLU Aktivierungsfunktion
verwendet.

-   Was sind die Dimensionen der Gewichtsmatrizen $W^{[1]}$, $W^{[2]}$
    und $W^{[3]}$ und der Bias-Vektoren $b^{[1]}$, $b^{[2]}$ und
    $b^{[3]}$?
-   Wie wird die Ausgabe berechnet? Schreiben Sie den Vorwärtslauf in
    Matrix-Notation auf. Wie könnte man die Ausgabe deuten; welches
    Problem könnte durch dieses Netzwerk möglicherweise gelöst werden?

#### NN.MLP.03: Tensorflow Playground (6P)

Benutzen Sie den [Neural Network
Playground](https://playground.tensorflow.org/), um die unten gelisteten
Experimente durchzuführen. Achten Sie bei allen Experimenten auf das
Verhalten der Trainings- und Testkosten. Sie können mit Hilfe der
Checkbox unter der Ausgabezelle (ganz rechts, unten) die Testdaten ein-
und ausblenden. Der Play-Knopf startet dabei das Training und der
Reload-Knopf setzt das Netzwerk zurück.

1.  (1P) Trainieren Sie ein **logistisches Regressionsmodell** zunächst
    auf dem "**Gaussian**" Datensatz (linear separierbarer Datensatz
    links-unten), danach auf den anderen Datensätzen.

2.  (3P) Trainieren Sie ein **MLP** mit

    -   einer versteckten Schicht mit 2 Neuronen,
    -   einer versteckten Schicht mit 3 Neuronen,
    -   einer versteckten Schicht mit 5 Neuronen,
    -   zwei versteckten Schichten mit jeweils 5 Neuronen pro Schicht
    -   drei versteckten Schichten mit jeweils 7 Neuronen pro Schicht
    -   vier versteckten Schichten mit jeweils 7 Neuronen pro Schicht

    auf dem kreisförmigen (**Circle**) und auf dem spiralförmigen
    (**Spiral**) Datensatz, mehrmals mit jeweils den
    Aktivierungsfunktionen ReLU, tanh und Sigmoid. Hat die Auswahl der
    Aktivierungsfunktion einen Einfluss auf die Form der
    Entscheidungsgrenze oder die Geschwindigkeit der Berechnung?

3.  (2P) Setzen Sie nun den **Noise-Level auf 15** und wiederholen Sie
    die Experimente. Wann kann von einer Überanpassung gesprochen
    werden?

Sprechen Sie für alle Experimente die folgenden Punkte an:

-   Wie verhält sich die Entscheidungsgrenze?
-   Was können Sie über Trainings- und Testkosten sagen? Entsteht eine
    Überanpassung?
-   Wie schnell wird die Entscheidungsgrenze berechnet?
-   Können alle Datenpunkte jedes mal korrekt klassifiziert werden?
    Warum?
-   Untersuchen und vergleichen Sie die Ausgaben der Zellen in den
    versteckten Schichten, in dem Sie die Maus über die jeweilige Zelle
    bewegen. Bemerken Sie einen wesentlichen Unterschied in den Ausgaben
    der ersten Schicht im Vergleich zu der letzten Schicht?

<a id="id-670c545ed4052dcfd1d123a2ba8b68b3154acccc"></a>

### Übungsblatt: Backpropagation

#### NN.Backprop.01: Gewichtsupdates für versteckte Schichten (2P)

In der Vorlesung wurde(n) die Gewichtsupdates bei der Backpropagation
für die Ausgabeschicht und die davor liegende letzte versteckte Schicht
hergeleitet, wobei in der Ausgabeschicht die Sigmoid und in der
versteckten Schicht die ReLU Aktivierungsfunktionen eingesetzt wurden.
Leiten Sie die Gewichtsupdates für die erste versteckte Schicht (für ein
Netz mit zwei echten versteckten Schichten) her. Verwenden Sie dabei die
Sigmoid Funktion als Aktivierung in allen Schichten.

*Thema*: Verständnis Backpropagation

#### NN.Backprop.02: Forward- und Backpropagation (2P)

Betrachten Sie das folgende MLP mit zwei Schichten mit insgesamt zwei
Zellen. Die Gewichte sind an den Kanten angegeben. Das Netz erhält den
skalaren Input $x$ und berechnet daraus die Ausgabe $y$. Beide Zellen
verwenden die Aktivierungsfunktion $\sigma(z) = \frac{1}{ 1 + e^{-z} }$.

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/homework/images/mlp.png" width="50%" /></p><p align="center">Abbildung 1</p>

-   (1P) Berechnen Sie die Ausgabe $y$ für die Eingabe
    $(x,y_T)=(0, 0.5)$. Wie groß ist der Fehler?

-   (1P) Berechnen Sie die partiellen Ableitungen für die Gewichte. Wie
    lauten die Gewichtsupdates für das obige Trainingsbeispiel? Setzen
    Sie $\alpha = 0.01$.

#### NN.Backprop.03: MLP und Backpropagation (6P)

Implementieren Sie ein Feedforward MLP mit mindestens einer versteckten
Schicht. Nutzen Sie die Cross-Entropy Verlustfunktion.

-   (2P) Implementieren Sie die Forwärtspropagation. Nutzen Sie als
    Aktivierungsfunktion in der Ausgangsschicht
    $g(z) = \frac{1}{ 1 + e^{-z} }$ und in der versteckten Schicht
    $g(z) = ReLU(z)$.

-   (2P) Implementieren Sie das Backpropagations-Verfahren zum
    Aktualisieren der Gewichte. Achten Sie insbesondere darauf, die
    bereits berechneten partiellen Ableitungen der jeweils hinteren
    Schicht wieder zu verwenden (und nicht jeweils erneut zu
    berechnen!), d.h. propagieren Sie die Fehler von hinten nach vorn
    durch das Netz.

-   (2P) Trainieren Sie das Netz für den Iris-Datensatz (iris.csv) aus
    dem [AIMA-Repository](https://github.com/aimacode/aima-data) und
    nutzen Sie dabei die Variante des stochastischen Gradientenabstiegs.
    Messen Sie pro Epoche (also nach jedem Durchlauf durch den
    kompletten Datensatz) den Trainingsfehler. Zeichnen Sie den
    Trainingsfehler als Diagramm über den Epochen auf.

Falls der Trainingsfehler nach einigen tausend Epochen nicht gegen einen
Wert nahe Null strebt, erweitern Sie Ihr Netz (beispielsweise eine
versteckte Schicht mehr oder mehr Zellen in der schon existierenden
versteckten Schicht, ...) und trainieren Sie es erneut. Nach wievielen
Epochen ist der Trainingsfehler fast Null?

*Thema*: Verständnis MLP und Backpropagation, Gefühl für nötige Größe
des Netzes

<a id="id-d033e22ae348aeb5660fc2140aec35850c4da997"></a>

## Organisatorisches

<a id="id-a9a587e6c5156b582e9029de040daaab2e66903b"></a>

### Prüfung & Noten (TDU)

#### Notenzusammensetzung

| Prüfung         | Gewicht                   |
|:----------------|---------------------------|
| Zwischenprüfung | **40 %**                  |
| Endprüfung      | **60 %**                  |
| Übung           | 10 % Bonus für Endprüfung |

Wenn in der Endprüfung die 40 Punkte Mindestgrenze erreicht wird
(**Endprüfungsnote $\ge$ 40**), werden **10 % der Übungspunkte als
Bonus** zu der Endprüfungsnote hinzugefügt.

#### Übungspunkte

Für die Vergabe von Übungspunkten ist eine **erfolgreiche Teilnahme an
der Übung** erforderlich. Dies bedeutet: Aufgaben lösen, gelöste
Aufgaben ankreuzen und Lösungen in Übungsstunde vorstellen.

##### Aufgaben lösen

-   Lösen Sie die Aufgaben auf dem jeweiligen Übungsblatt und laden Sie
    Ihre Lösungen im Google Classroom hoch.
-   Bei Textaufgaben laden Sie Ihre Lösungen als **eine PDF-Datei** im
    Google Classroom hoch.
-   Lösen Sie Programmieraufgaben in einem Jupyter Notebook auf Google
    Colaboratory und laden Sie dieses als **eine .ipnyb Datei** hoch.
-   Benennen Sie Ihre Dateien wie folgt, benutzen Sie dabei Ihren vollen
    Namen:
    -   **Vorname_Nachname_UE1.pdf**
    -   **Vorname_Nachname_UE1.ipnyb**
-   Die Bearbeitung der Aufgaben erfolgt individuell.
    -   Das Diskutieren der Themen untereinander ist vorteilhaft, das
        Teilen von Lösungen nicht!

##### Gelöste Aufgaben ankreuzen

-   Geben Sie im Google Classroom über das bereitgestellte Google
    Formular an, welche Aufgaben Sie gelöst haben.
-   Sie müssen in der Lage sein, Ihre Lösungen zu den angekreuzten
    Aufgaben in der Übungsstunde vorzustellen.
-   Die Lösung muss nicht unbedingt 100% korrekt sein, muss aber eine
    intensive Beschäftigung mit der jeweiligen Aufgabe erkennen lassen
    (ca. 60%).

##### Lösungen vorstellen

-   Seien Sie pünktlich anwesend in der Übungsstunde und (wenn
    aufgefordert) stellen Sie Ihre eigene Lösung vor.
-   Die Vorstellung kann mit einem Medium Ihrer Wahl stattfinden. Sie
    können zum Beispiel Ihren Bildschirm teilen und Ihre Lösung
    erklären.
-   **Achtung:** Wenn man angibt, eine Aufgabe gelöst zu haben, dann
    aber in der Übungsstunde nicht (oder zu spät) erscheint oder die
    Lösung nicht vorstellen kann, bekommt man für das gesamte
    Übungsblatt 0 Punkte!

#### Schriftliche Prüfungen

-   Raum und Zeit der Prüfungen werden rechtzeitig angekündigt.
-   Prinzipiell sind **alle Themen** der Vorlesung auch Teil der Prüfung
    (wenn nicht anders bekanntgegeben).
    -   Sie müssen in der Prüfung kein Code schreiben.
    -   Verständnis und Anwendung von Pseudocode kann abgefragt werden.
    -   Anwendung und Interpretation von Algorithmen (auf Papier) kann
        abgefragt werden.
-   Sie dürfen ein **mit Ihrer Handschrift befülltes A4 Blatt** mit in
    die Prüfung nehmen
    -   Sie dürfen das Blatt beidseitig beliebig füllen.
    -   Gedruckte oder fotokopierte Blätter sind nicht erlaubt und
        werden am Anfang der Prüfung eingesammelt.
    -   Außer diesem Blatt dürfen keine weiteren Materialien benutzt
        werden.

<a id="id-b84558cce3a2e0f317eaa3c5c23c6f26a9cc2232"></a>

### Prüfungsvorbereitung (HSBI)

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> **Durchführung: Präsenz oder Open-Book (je nach Corona-Lage)**
>
> Die Klausur wird dieses Semester elektronisch stattfinden. Dazu werden
> wir den Prüfungs-ILIAS der HSBI nutzen.
>
> Sofern die Situation dies zulässt, wird die Klausur in den Räumen der
> HSBI am Campus Minden unter Aufsicht durchgeführt. Hier werden Ihnen
> Rechner für den Zugang zum Prüfungs-ILIAS zur Verfügung gestellt, Sie
> benötigen nur Ihre HSBI-Zugangsdaten (User, Passwort), einen
> Studierendenausweis und Personalausweis sowie Ihren
> DIN-A4-Spickzettel.
>
> Wenn die Corona-Lage eine Durchführung in Präsenz nicht erlaubt, wird
> die Klausur stattdessen als *Open-Book-Ausarbeitung* aus dem
> Home-Office durchgeführt. Sie benötigen dazu einen normalen Rechner
> oder Laptop mit einem Standardbrowser. Tablets und Handys können wg.
> der Mobil-Version der Browser problematisch sein. Sie müssen
> JavaScript aktivieren und Cookies zulassen, der Privacy-Modus ist
> bitte ebenfalls zu deaktivieren. Sie erreichen den Prüfungs-ILIAS
> [eassessment.hsbi.de](https://eassessment.hsbi.de) nur über VPN.
>
> Die Entscheidung über die konkrete Durchführung wird spätestens zwei
> Wochen vor der Prüfung getroffen und Ihnen per EMail über das LSF
> mitgeteilt.
>
> **Ablauf der Klausur**
>
> Die Prüfung (das ILIAS-Objekt) selbst schalte ich erst zum Start der
> Prüfung online. Bei der Durchführung als Open-Book-Ausarbeitung wird
> parallel zur Prüfung eine Zoom-Sitzung laufen, in der Sie Fragen
> stellen können.
>
> **Hilfsmittel und Themen**
>
> Bei der Durchführung in Präsenz am Campus Minden ist ein Spickzettel
> (DIN A4, beidseitig beschrieben) als Hilfsmittel zugelassen.
>
> Bei der Durchführung als "Open-Book-Ausarbeitung" im Home-Office sind
> alle Hilfsmittel zugelassen.
>
> Die Unterstützung durch Dritte bzw. jegliche Kommunikation mit Dritten
> ist in keinem Fall zugelassen. Sie sollen die Prüfung selbstständig
> bearbeiten.
>
> Es wird keines der behandelten Themen ausgeschlossen, allerdings
> eignen sich manche Themen etwas besser für Klausurfragen als andere
> ;-)
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [Hinweise zur Prüfung:
>     Fragetypen-Demo](https://youtu.be/warjJ9ZXvEM)
> -   [Hinweise zur Prüfung: Technische
>     Vorbereitung](https://youtu.be/_cVhJX-D6zM)
>
> </details>

#### Elektronische Klausur: Termin, Materialien

##### Termin

Die schriftliche Prüfung erfolgt durch eine Klausur, die als digitale
Prüfung auf einem Prüfungs-ILIAS durchgeführt wird.

Es wird angestrebt, die Klausur in Präsenz in den Rechnerpools am Campus
Minden durchzuführen. Falls dies wegen der Corona-Situation oder anderer
Umstände nicht möglich sein sollte, wird die Klausur als
"Open-Book-Ausarbeitung" im Home-Office durchgeführt.

Es wird in beiden Prüfungszeiträumen ein Termin angeboten. Die Termine
werden vom Prüfungsamt bekannt gegeben.

Dauer jeweils 90 Minuten.

-   Die konkrete Durchführungsform (in Präsenz am Campus Minden oder im
    Home-Office) wird Ihnen spätestens zwei Wochen vor der Prüfung über
    das LSF bekanntgegeben

##### Zugelassene Hilfsmittel

<details>
<summary><strong>Präsenz (in Minden)</strong></summary>

**Zugelassene Materialien**: **DIN-A4-Spickzettel (beidseitig)**

Sie dürfen **einen** Spickzettel im **DIN-A4**-Format benutzen, der
beidseitig beschrieben sein kann.

Ich möchte Sie hier noch einmal ermuntern, diesen Zettel tatsächlich
manuell zu erstellen (also ganz traditionell zu **schreiben**), da
bereits der Schreibvorgang einen gewissen Lerneffekt bewirkt!
</details>
<details>
<summary><strong>Open-Book-Ausarbeitung (Homeoffice)</strong></summary>

Falls die Prüfung als Open-Book-Ausarbeitung im Home-Office durchgeführt
werden sollte, dürfen Sie alle Unterlagen benutzen.

-   Ausnahme: **Keine Hilfe durch Dritte!** (insbesondere keine
    Zusammenarbeit, keine Kommunikation)

    Sie sollen die Prüfung eigenständig bearbeiten. Hilfe von Dritten
    sowie jegliche Kommunikation mit Dritten ist in keinem Fall
    zugelassen und wird als Täuschungsversuch gewertet.

</details>

##### Einsicht

-   Prüfungseinsicht: Zeitnah; Bekanntgabe per Mail

#### Technische Vorbereitungen

<details>
<summary><strong>Präsenz (in Minden)</strong></summary>

Diese Bemerkungen betreffen die Durchführung als Präsenzprüfung in den
Räumen am Campus Minden.

-   **HSBI-Zugangsdaten**: Username, Passwort

    Bei der Durchführung der Prüfung am Campus Minden wird Ihnen ein
    Rechner zur Verfügung gestellt. Dort läuft voraussichtlich ein
    Browser im Kiosk-Mode, wo Sie sich am Prüfungs-ILIAS anmelden. Dazu
    benötigen Sie ihre HSBI-Zugangsdaten, mit denen Sie sich auch im
    "normalen" ILIAS anmelden.

-   **Studierendenausweis** und Personalausweis

    An der Prüfung dürfen nur Personen teilnehmen, die dafür im LSF
    angemeldet sind. Es findet eine entsprechende Kontrolle statt.
    Halten Sie Ihren Studierendenausweis und Personalausweis bereit.

</details>
<details>
<summary><strong>Open-Book-Ausarbeitung (Homeoffice)</strong></summary>

Diese Bemerkungen betreffen die Durchführung aus dem Home-Office mit
Ihrer Hardware. Bei der Durchführung in Präsenz in den Räumen am Campus
Minden werden die technischen Details von uns für Sie vorbereitet sein.

-   **Rechner**: Nutzen Sie für die Prüfung einen stationären Rechner
    oder ein Notebook.

    Vermeiden Sie die Verwendung von Tablets und Smartphones! Bei der
    Verwendung von Tablets kann es unter Umständen zu
    Darstellungsproblemen kommen. Smartphones sind aufgrund des kleinen
    Bildschirms für die Prüfungsdurchführung schlicht ungeeignet.

    Bei fehlendem Zugang zu einem entsprechenden Endgerät kontaktieren
    Sie bitte frühzeitig die Prüfungsverantwortlichen.

-   **Netz**: Stabil genug? Belastbar genug?

    Wenn Sie keinen Zugang zu einer ausreichend stabilen
    Internetverbindung haben, setzen Sie sich frühzeitig mit Ihren
    Prüfungsverantwortlichen in Verbindung.

-   **VPN**: Der Prüfungs-ILIAS ist nur im HSBI-VPN erreichbar.

    Installieren Sie den VPN-Client (Anleitung:
    [hsbi.de/dvz/faq/cat/7](https://www.hsbi.de/dvz/faq/cat/7)) und
    testen Sie im Vorfeld der Prüfung bei aktivierter VPN-Verbindung den
    Zugang zur Prüfungsplattform
    [eassessment.hsbi.de](https://eassessment.hsbi.de). Zugangsdaten wie
    im normalen ILIAS.

    Achtung: Auch wenn Sie sich in den Räumen der HSBI befinden, müssen
    Sie oft die VPN-Verbindung aktivieren, um Zugang zur
    Prüfungsplattform zu erhalten.

-   **Browser**: Nutzen Sie einen der Standardbrowser (Edge, Firefox,
    Safari, Chrome/Chromium) in der Standardeinstellung: insbesondere
    JavaScript und Cookies müssen aktiviert/erlaubt sein.

    Deaktivieren Sie sämtliche Browser-Erweiterungen wie z.B. Ad-Blocker
    (AdBlockPlus, uBlock, ...) oder JavaScript-Blocker (No-Script,
    Ghostery, ...) für den Prüfungszeitraum.

    **Nutzen Sie Ihren Browser nicht im Privacy-Modus!**

-   **HSBI-Zugangsdaten**: Username, Passwort

    Bei der Durchführung der Prüfung als Open-Book-Ausarbeitung führen
    Sie die Prüfung auf Ihrer eigenen Hardware im Home-Office durch.
    Auch hier müssen Sie sich am Prüfungs-ILIAS anmelden. Dazu benötigen
    Sie ihre HSBI-Zugangsdaten, mit denen Sie sich auch im "normalen"
    ILIAS anmelden.

</details>

#### Bearbeitung des E-Assessment

1.  Lesen Sie sich die Hinweise auf der Startseite durch

2.  Bearbeiten Sie die Aufgaben in **einem einzigen** Browser-Tab

    **Öffnen Sie die Aufgaben *NICHT* in parallelen Tabs!** Es kann
    sonst zu Fehlfunktionen von ILIAS kommen.

    Bewegen Sie sich nicht per Browser-Navigation ("vor", "zurück" im
    Browser) durch die Aufgaben, sondern nutzen Sie dafür die Buttons
    "nächste Frage", "Weiter" oder "Zurück" vom ILIAS!

3.  Hinweis zu Anzeige der restlichen Bearbeitungsdauer

    Wenn Sie den Browser bzw. das Tab mit der Prüfung im Laufe der
    Prüfung verlassen, wird Ihnen bei der Rückkehr unter Umständen eine
    falsche restliche Bearbeitungsdauer angezeigt. Sie können die
    Anzeige korrigieren/aktualisieren, indem Sie einfach zu einer
    vorigen oder nächsten Aufgabe navigieren.

    Hinweis: Die restliche Bearbeitungsdauer wird im Test nur dann
    angezeigt, wenn diese Funktion von den Prüfenden aktiviert wurde.

4.  Parallel zum E-Assessment läuft eine Zoom-Session, dort können Sie
    Fragen stellen

5.  Verbindungsprobleme (Home-Office):

    -   Bei kurzzeitigen Verbindungsabbrüchen loggen Sie sich einfach
        wieder ein
    -   Wenn die Probleme länger dauern, gilt der Versuch als nicht
        unternommen (außer Sie haben die Probleme aktiv herbeigeführt,
        dann kann das als Täuschungsversuch gewertet werden, vgl. RPO
        §22a (4))

#### Fragetypen-Demo

In Ihrem ILIAS-Kurs finden Sie eine
[**Fragetypen-Demo**](https://www.hsbi.de/elearning/goto.php?target=tst_1352273&client_id=FH-Bielefeld)
mit den wichtigsten Fragetypen. Machen Sie sich mit der Mechanik der
Fragetypen vertraut und schauen Sie sich die Kommentare bei den
einzelnen Aufgaben an. Sie können die Demo bei Bedarf beliebig oft
wiederholen.

#### Hinweise zu den Inhalten

-   Klausurrelevant: Vorlesung und Praktikum
-   Für Verständnis u.U. hilfreich: Studium der vertiefenden
    Literaturangaben

<!-- -->

-   **Fragen**:
    -   Schauen Sie sich die Challenges und/oder Quizzes an ...
    -   Schauen Sie sich die Praktikumsaufgaben an ...
    -   Überlegen Sie sich, was zu einem Themengebiet im Rahmen einer
        Prüfung möglich ist und (wie) gefragt werden könnte :)

<div align="center">

**Können vor Kennen :-)**

</div>

#### Beispiele für mögliche Fragen

##### Breitensuche

Betrachten Sie den folgenden Graphen:

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/admin/images/graph.png" width="60%" /></p>

Mittels Breitensuche (Variante "Tree-Search") soll der kürzeste Weg von
"K" nach "B" gefunden werden. Die folgende Queue stellt den aktuellen
Zustand der Suche dar:

`[KSF, KSP]`

Führen Sie den nächsten Schritt des Breitensuche-Algorithmus durch und
geben Sie die resultierende Queue an. Achten Sie auf die korrekte
Sortierung und halten Sie sich an die vorgegebene Notation.

*Hinweis*: Die vorgegebene Queue kann willkürlich konstruiert sein und
muss nicht viel mit Breitensuche zu tun haben.

##### Suche und Constraints

-   Worin liegt der Unterschied zwischen einem Knoten und einem Zustand?
-   Was ist ein Suchbaum? Wo liegt der Unterschied zum Zustandsraum?
-   Muss der Suchbaum über eine eigene Datenstruktur realisiert werden?
-   Was bedeutet Kantenkonsistenz?

Erklären Sie die jeweiligen Begriffe nachvollziehbar. Nutzen Sie dazu
ein eigenes kleines Beispiel.

##### Handsimulation Perzeptron

Gegeben sei folgendes Perzeptron mit den Gewichten
$w_0=0, w_1=0, w_2=0$. Betrachten Sie den folgenden Eingabevektor
$x_0=1, x_1=1, x_2=0$ mit der Klasse $+1$. Geben Sie für diesen Vektor
folgende Werte an:

(a) Skalarprodukt $\mathbf{w}^T \mathbf{x}$,
(b) Aktivierung $\text{sgn}(\mathbf{w}^T \mathbf{x})$.
(c) Falls notwendig, führen Sie einen Lernschritt durch. Nutzen Sie
    dabei $\alpha=1$.

Geben Sie die resultierenden (neuen) Gewichte an (auch wenn Sie keinen
Lernschritt durchführen mussten).

##### Entscheidungsbäume mit ID3

Gegeben sei folgender Trainingsdatensatz ...

Mit Hilfe von ID3 soll für diesen Datensatz ein Entscheidungsbaum
konstruiert werden. Der Algorithmus läuft schon und hat das Merkmal
$x_2$ als Wurzelknoten ausgewählt. Beschreiben Sie detailliert, wie ID3
die nächste Ebene aufbaut. Gehen Sie dabei konkret auch auf den
Algorithmus ein. Geben Sie die eingesetzten Formeln für Entropien und
Gains an und erklären Sie Ihr Vorgehen.

*Hinweis*: Sie sollen die Formeln nur einsetzen, aber nicht ausrechnen.

##### CSP

Betrachten Sie das folgende Constraintproblem:

-   $\mathrm{C}_1 = \{(a,b) |   a \ne b\}$
-   $\mathrm{C}_2 = \{(b,c) |   b \ne c\}$
-   $\mathrm{C}_3 = \{(a,c) |   a = c\}$

<!-- -->

-   $D_a=D_b=D_c=\{1,2,3,4,5\}$, $D_d=\{1,2,5\}$, $D_e=\{1,3\}$

Zeigen Sie per Handsimulation, wie der Algorithmus AC-3 schrittweise
Kantenkonsistenz herstellt. Hier ist die Queue in einem bestimmten
Schritt: ... Führen Sie einen Schritt durch und geben Sie die
resultierende Queue an. Erklären Sie Ihr Ergebnis.

##### NB

Betrachten Sie den folgenden Datensatz: ... "Trainieren" Sie für diesen
Datensatz einen vollständigen Naive-Bayes-Klassifikator. Nutzen Sie die
Variante "Multinomial NB". Geben Sie alle Bestandteile an. Erklären Sie
Ihr Vorgehen nachvollziehbar.

*Hinweis*: Sie brauchen die Brüche nicht ausrechnen.

------------------------------------------------------------------------

> [!NOTE]
>
> <details >
> <summary><strong>👀 Quellen</strong></summary>
>
> <div id="refs" class="references csl-bib-body hanging-indent">
>
> <div id="ref-AbuMostafa2012" class="csl-entry">
>
> Abu-Mostafa, Y. S., M. Magdon-Ismail, und H. Lin. 2012. *Learning From
> Data*. AMLBook. <https://work.caltech.edu/telecourse>.
>
> </div>
>
> <div id="ref-Ertel2025" class="csl-entry">
>
> Ertel, W. 2025. *Grundkurs Künstliche Intelligenz*. 6th edition.
> Springer Vieweg Wiesbaden.
> <https://doi.org/10.1007/978-3-658-44955-1>.
>
> </div>
>
> <div id="ref-goldberg1986" class="csl-entry">
>
> Goldberg, D. E. 1986. „The genetic algorithm approach: why, how, and
> what next?" In *Adaptive and learning systems: Theory and
> applications*. Springer.
>
> </div>
>
> <div id="ref-holland1975" class="csl-entry">
>
> Holland, J. H. 1975. „Adaptation in Natural and Artificial Systems: An
> Introductory Analysis with Applications to Biology, Control, and
> Artificial Intelligence". Phdthesis, PhD Thesis, University of
> Michigan Press, Ann Arbor.
>
> </div>
>
> <div id="ref-holland1992" class="csl-entry">
>
> Holland, J. H. 1992. *Adaptation in Natural and Artificial Systems: An
> Introductory Analysis with Applications to Biology, Control, and
> Artificial Intelligence*. MIT press.
>
> </div>
>
> <div id="ref-Mitchell2010" class="csl-entry">
>
> Mitchell, T. 2010. *Machine Learning*. McGraw-Hill.
>
> </div>
>
> <div id="ref-rechenberg1978" class="csl-entry">
>
> Rechenberg, I. 1978. „Evolutionsstrategien". *Simulationsmethoden in
> der Medizin und Biologie: Workshop, Hannover, 29. Sept.--1. Okt.
> 1977*, 83--114.
>
> </div>
>
> <div id="ref-Russell2014" class="csl-entry">
>
> Russell, S., und P. Norvig. 2014. *Artificial Intelligence: A Modern
> Approach*. 3rd revised edition. Pearson.
> <http://aima.cs.berkeley.edu>.
>
> </div>
>
> <div id="ref-Russell2021" class="csl-entry">
>
> Russell, S., und P. Norvig. 2021. *Artificial Intelligence: A Modern
> Approach*. 4th Edition. Pearson. <http://aima.cs.berkeley.edu>.
>
> </div>
>
> <div id="ref-schwefel1975" class="csl-entry">
>
> Schwefel, H. P. 1975. „Evolutionsstrategie und numerische
> Optimierung". Phdthesis, PhD Thesis, Technical University of Berlin,
> Department of Process Engineering.
>
> </div>
>
> <div id="ref-Schwefel1995" class="csl-entry">
>
> Schwefel, H. P. 1995. *Evolution and Optimum Seeking*. Wiley.
>
> </div>
>
> <div id="ref-Silver2016" class="csl-entry">
>
> <span class="nocase">Silver, D., A. Huang, C. Maddison, u. a.</span>
> 2016. „Mastering the Game of Go with Deep Neural Networks and Tree
> Search". *Nature* 529 (7587): 484.
> <https://doi.org/10.1038/nature16961>.
>
> </div>
>
> <div id="ref-Unger1981" class="csl-entry">
>
> Unger, S., und F. Wysotzki. 1981. *Lernfähige Klassifizierungssysteme
> (Classifier Systems Which Are Able to Learn)*. Akademie-Verlag.
>
> </div>
>
> <div id="ref-Weicker2015" class="csl-entry">
>
> Weicker, K. 2015. *Evolutionäre Algorithmen*. 3rd edition. Springer
> Vieweg Wiesbaden. <https://doi.org/10.1007/978-3-658-09958-9>.
>
> </div>
>
> </div>
>
> </details>

------------------------------------------------------------------------

<p align="center"><img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png"  /></p>

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

**Exceptions:**

-   ["Kognition"](https://de.wikipedia.org/wiki/Kognition) by
    [Arbraxan](https://de.wikipedia.org/wiki/User:Arbraxan) and
    [others](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Kognition?uselang=de)
    on Wikipedia ([CC BY-SA
    3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode))
-   [AvB - RoboCup 2013 -
    Eindhoven](https://www.flickr.com/photos/80267257@N05/10151827605)
    by [RoboCup2013](https://www.flickr.com/photos/80267257@N05) on
    Flickr.com ([CC BY
    2.0](https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=rich))
-   [Photo Evolution](https://unsplash.com/photos/aWDgqexSxA0) by
    [Johannes Plenio](https://unsplash.com/@jplenio) on Unsplash.com
    ([Unsplash License](https://unsplash.com/license))
-   [Backgammon
    lg.png](https://commons.wikimedia.org/wiki/File:Backgammon_lg.png)
    by [Ptkfgs](https://commons.wikimedia.org/wiki/User:Ptkfgs) on
    Wikimedia Commons ([Public
    Domain](https://en.wikipedia.org/wiki/en:public_domain))
-   [MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg)
    by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and
    [Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on
    Wikimedia Commons ([Public
    Domain](https://en.wikipedia.org/wiki/en:public_domain))
-   ["Exp e.svg"](https://commons.wikimedia.org/wiki/File:Exp_e.svg) by
    Marcel Marnitz, reworked by
    [Georg-Johann](https://commons.wikimedia.org/wiki/User:Georg-Johann)
    on Wikimedia Commons ([Public
    Domain](https://en.wikipedia.org/wiki/Public_domain))
-   ["Intelligenz"](https://de.wikipedia.org/wiki/Intelligenz) by
    [Cumtempore](https://de.wikipedia.org/wiki/Benutzer:Cumtempore) and
    [others](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Intelligenz?uselang=de)
    on Wikipedia ([CC BY-SA
    3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode))
-   [Turing Test version
    3.png](https://commons.wikimedia.org/wiki/File:Turing_Test_version_3.png)
    by [Bilby](https://commons.wikimedia.org/wiki/User:Bilby) on
    Wikimedia Commons ([Public
    Domain](https://en.wikipedia.org/wiki/en:public_domain))
-   ["künstliche
    intelligenz"](https://pixabay.com/de/illustrations/k%c3%bcnstliche-intelligenz-netzwerk-3706562/)
    by [Gerd Altmann
    (geralt)](https://pixabay.com/de/users/geralt-9301/) on Pixabay.com
    ([Pixabay License](https://pixabay.com/de/service/license/))

<blockquote><p><sup><sub><strong>Last modified:</strong> 1765d71 2026-03-27 readme: add an extra start heading for the new tooling<br></sub></sup></p></blockquote>

[^1]: gilt für Tree-Search-Variante; vollständig in
    Graph-Search-Variante bei endlichem Suchraum

[^2]: falls *b* endlich

[^3]: $O(b^{d})$ mit vorgezogener Zielprüfung (vgl. ([Russell und Norvig
    2021](#ref-Russell2021)))

[^4]: BnB vollständig: Kosten größer Epsilon (positiv)

[^5]: gilt für Tree-Search-Variante; vollständig bei Graph-Search und
    endlichen Problemräumen

[^6]: Im Python-Code tauchen immer wieder "TODO"-Marker auf - bitte mit
    Vorsicht genießen!

[^7]: Im Python-Code tauchen immer wieder "TODO"-Marker auf - bitte mit
    Vorsicht genießen!

[^8]: Im Python-Code tauchen immer wieder "TODO"-Marker auf - bitte mit
    Vorsicht genießen!

[^9]: Im Python-Code tauchen immer wieder "TODO"-Marker auf - bitte mit
    Vorsicht genießen!

[^10]: Zum Zoo-Datensatz gibt es die Erklärung direkt im Repo, für den
    Restaurant-Datensatz finden Sie die Erklärung im AIMA (Buch).
