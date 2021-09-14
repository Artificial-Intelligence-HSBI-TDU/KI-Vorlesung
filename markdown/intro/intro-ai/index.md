---
type: lecture-cg
title: "Intro: Was ist Künstliche Intelligenz?"
menuTitle: "Einführung KI"
author: "Carsten Gips (FH Bielefeld)"
weight: 1
readings:
  - key: "Russell2020"
    comment: "Kapitel 1: Introduction"
  - key: "Ertel2017"
    comment: "Kapitel 1: Introduction"
quizzes:
  - link: TODO
    name: "TODO"
assignments:
  - topic: sheet01
youtube:
  - id: ENclDk8-AD8
fhmedia:
  - link: https://www.fh-bielefeld.de/medienportal/m/d1af81af48ecb6da40cc80202ed810c79a49d5c8aefd7c97f8b7cb4e9e0819baaf886f54f00df729879fd3ccba68bcab763efefacd44416726c799651ab664dd
    name: "Direktlink FH-Medienportal: KI Einführung"
---


## Was ist (künstliche) Intelligenz?

![](https://live.staticflickr.com/2889/10151827605_911e35be10_c_d.jpg){width="80%"}

[Quelle: [AvB - RoboCup 2013 - Eindhoven](https://www.flickr.com/photos/80267257@N05/10151827605), by [RoboCup2013](https://www.flickr.com/photos/80267257@N05), licensed under [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=rich)]{.origin}

::: notes
*   Was ist (künstliche) Intelligenz?
*   Ist [Commander Data](https://en.wikipedia.org/wiki/Data_(Star_Trek)) intelligent?
*   Woran erkennen Sie das?
:::

[Diskussion]{.bsp}


## Definition Intelligenz

> Intelligenz (von lat. *intellegere* "verstehen", wörtlich "wählen zwischen ..."
> von lat. *inter* "zwischen" und *legere* "lesen, wählen") ist in der
> Psychologie ein Sammelbegriff für die **kognitive Leistungsfähigkeit** des
> Menschen. Da einzelne kognitive Fähigkeiten unterschiedlich stark ausgeprägt
> sein können und keine Einigkeit besteht, wie diese zu bestimmen und zu
> unterscheiden sind, gibt es **keine allgemeingültige Definition der
> Intelligenz**.
>
> \hfill\ [Quelle: [de.wikipedia.org/wiki/Intelligenz](https://de.wikipedia.org/wiki/Intelligenz), [verschiedene Autoren](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Intelligenz?uselang=de), licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode)]{.origin}

::: notes
TODO
:::

\bigskip
\bigskip

::: notes
TODO

> Kognition ist ein uneinheitlich verwendeter Begriff, mit dem auf die
> Informationsverarbeitung von Menschen und anderen Systemen Bezug genommen
> wird. Oft ist mit "Kognition" das Denken in einem umfassenden Sinne gemeint.
:::

> Zu den **kognitiven Fähigkeiten** eines Menschen zählen die
> **Wahrnehmung**, die Aufmerksamkeit, die Erinnerung, das **Lernen**, das
> **Problemlösen**, die Kreativität, das **Planen**, die Orientierung, die
> Imagination, die **Argumentation**, die Introspektion, der Wille, das
> Glauben und einige mehr. Auch Emotionen haben einen wesentlichen kognitiven
> Anteil.
>
> \hfill\ [Quelle: [de.wikipedia.org/wiki/Kognition](https://de.wikipedia.org/wiki/Kognition), [verschiedene Autoren](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Kognition?uselang=de), licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode)]{.origin}

::: notes
TODO

> Kognitive Fähigkeiten werden von verschiedenen Wissenschaften untersucht,
> z.B. der Psychologie, der Biologie, den Neurowissenschaften, der Psychiatrie,
> der Philosophie und der Forschung zur Künstlichen-Intelligenz. Die
> wissenschaftliche Erforschung der Kognition wird unter dem Begriff der
> Kognitionswissenschaft zusammengefasst.
:::


## Versuch einer Definition für "KI"

> Ziel der KI ist es, Maschinen zu entwickeln, die sich verhalten, als
> verfügten sie über Intelligenz.
>
> \hfill\ -- John McCarthy (1955)

::: notes
Einwand: [Braitenberg-Vehikel](https://en.wikipedia.org/wiki/Braitenberg_vehicle) zeigen
so etwas wie "intelligentes" Verhalten, sind aber noch lange nicht intelligent! Bezieht
sich nur auf *Verhalten*!
:::

\bigskip
\smallskip

> KI ist die Fähigkeit digitaler Computer oder computergesteuerter Roboter,
> Aufgaben zu lösen, die normalerweise mit den höheren intellektuellen
> Verarbeitungsfähigkeiten von Menschen in Verbindung gebracht werden ...
>
> \hfill\ -- Encyclopedia Britannica

::: notes
Einwand: Dann wäre aber auch Auswendig-Lernen oder das Multiplizieren langer
Zahlen als intelligent zu betrachten! Bezieht sich vor allem auf "*Denken*"!
:::

\bigskip
\smallskip

> Artificial Intelligence is the study of how to make computers do things at
> which, at the moment, people are better.
>
> \hfill\ -- Elaine Rich ("Artificial Intelligence", McGraw-Hill, 1983)

[Quelle: nach "Introduction to Artificial Intelligence" 2nd ed. [@Ertel2017, S.1-3]]{.origin}

::: notes
Dazu gehört auch

*   Anpassung an sich verändernde Situationen
*   Erkennung von Bildern und Gesichtern und Emotionen
*   Erkennung von Sprache
*   Umgang mit kontextbehafteten, unvollständigen Informationen
*   Ausräumen von Geschirrspülern ;-)
*   Über Emotionen und Empathie verfügen
:::


## Alan Turing 1950: Turing-Test (begründet Zweige der KI)

::: notes
*   Wann verhält sich eine Maschine intelligent?
:::

::: center
![](https://upload.wikimedia.org/wikipedia/commons/e/e4/Turing_Test_version_3.png){width="40%"}

[Quelle: [Turing Test version 3.png](https://commons.wikimedia.org/wiki/File:Turing_Test_version_3.png), by [Bilby](https://commons.wikimedia.org/wiki/User:Bilby), licensed under [Public domain](https://en.wikipedia.org/wiki/en:public_domain)]{.origin}
:::

::: notes
Zum Bestehen des Turing-Tests ist (u.a.) erforderlich:

*   *Wissensrepräsentation*: Speichern des gesammelten Wissens **=>** **Wissensbasierte Systeme**
*   *Logisches Schließen*: Beantworten von Fragen mit Hilfe des vorhandenen Wissens **=>** **Logik, Resolution**
*   *Maschinelles Lernen*: Anpassung an veränderliches Umfeld **=>** **Musteranalyse und Mustererkennung und Mustervorhersage**
*   *Verarbeitung natürlicher Sprache*: Erfolgreiche Kommunikation, beispielsweise in Englisch **=>** **NLP**

"Totaler Turing-Test": zusätzlich **Computer Vision** (Erkennen von Objekten) und
**Robotik** (Manipulation von Objekten)

Damit begründet der Turing-Test die Gebiete der KI.


**Problem**: Der Turing-Test ist nicht reproduzierbar, nicht konstruktiv und
nicht mathematisch analysierbar ... Außerdem wird durch den Turing-Test im Wesentlichen
nur Funktionalität geprüft, nicht ob Intention oder Bewusstsein vorhanden ist.
:::


## Starke vs. schwache KI

### "Schwache KI"
-   Simulation intelligenten Verhaltens
-   Lösung konkreter Probleme
-   Adaptives Verhalten ("Lernen")
-   Umgang mit Unsicherheit und unvollständigen Informationen

\bigskip
\bigskip

### "Starke KI"
-   Eigenschaften der "schwachen KI"
-   Intelligenz nach menschlichen Maßstäben (auf "Augenhöhe")
-   Bewusstsein
-   Emotionen (?)
-   Empathie


## Typische Ansätze in der KI

::: center
![](images/dimensionen-ki.png){width="60%"}
:::

\bigskip
\bigskip

::: notes
Untersuchung von

*   Verhalten vs. Denken
*   Rational vs. menschlich

Motivation dabei
:::

*   Menschliche Intelligenz verstehen
*   Intelligente/intelligent wirkende Systeme bauen

:::::::::: notes
Damit erhält man vier Kombinationen:

*   Menschliches Denken
*   Rationales Denken
*   Rationales Verhalten
*   Menschliches Verhalten


### Menschliches Denken: Kognitive Modellierung

-   Welche kognitiven Fähigkeiten sind für intelligentes Verhalten nötig?
    Wie laufen Denkprozesse im Gehirn ab?
-   Erfordert Theorien über interne Aktivitäten des Gehirns
-   Ansätze:
    -   top-down: Vorhersage und Test von menschlichem Verhalten
    -   bottom-up:  Auswertung neurobiologischer Daten
-   Wissenschaftszweige: Kognitionswissenschaft (Verbindung der
    Computermodelle der KI mit den Experimenten und Theorien der
    Psychologie), Neurobiologie/-informatik

**=>** "**Neuronale KI**"


### Rationales Denken: Aristoteles: Was sind korrekte Argumente und Denkprozesse? => Wie sollen wir denken?

Beispiel:

    Fakt: Sokrates ist ein Mensch.
    Fakt: Alle Menschen sind sterblich.
    Folgerung: Sokrates ist sterblich.

-   Formalisierte Problembeschreibung
-   Problemlösung durch *logische Prozesse*
-   Verbindung von moderner KI zur Mathematik und Philosophie

**=>** "**Symbolische KI**"


### Rationales Verhalten: Das "Richtige" tun

-   Das "Richtige": Verhalten zum Erzielen des besten (erwarteten)
    Ergebnisses (unter Berücksichtigung der verfügbaren Informationen)

    Ein System ist rational, wenn es das seinen Kenntnissen nach "Richtige"
    macht.
-   Denken ist nicht unbedingt notwendig (zb. Reflexe können auch rationales
    Verhalten sein)
-   Interessant: "richtige" Handlung unter unvollständigen/unsicheren
    Informationen

**=>** "**Spiel-Theorie, Naive Bayes**"


### Menschliches Verhalten: Na ja, Sie wissen schon ;-)
:::::::::


## Kurzer Geschichtsüberblick -- Wichtigste Meilensteine

*   1943: McCulloch/Pitts: binäres Modell eines Neurons
*   1950: Turing-Test
*   1956: Dartmouth Workshop (Minsky, McCarthy, ...) -- McCarthy schlägt den Begriff "Artificial Intelligence" vor
*   1960er: Symbolische KI (Theorembeweiser), Blockwelt, LISP
*   1970er: Wissensbasierte System (Expertensysteme)
*   1980er: zunächst kommerzieller Erfolg der Expertensysteme, später
    Niedergang ("KI-Eiszeit"); Zuwendung zu Neuronalen Netzen
*   1990er: Formalisierung der KI-Methoden, Einführung probabilistischer
    Methoden (Bayes'sches Schließen), verstärkte mathematische Fundierung
*   heute: friedliche Koexistenz verschiedener Paradigmen und Methoden;
    Rückkehr zu "Human-Level AI" (McCarthy, Minsky, Nilsson, Winston); Rückkehr
    zu Neuronalen Netzen (CNN/RNN)

\bigskip

Siehe auch Abbildung 1.3 in [@Ertel2017, S.8] ...

## Wrap-Up

*   Definition von "Intelligenz" nicht ganz einfach
*   Dimensionen: Denken vs. Verhalten, menschlich vs. rational
*   Ziele der KI: Verständnis menschlicher Fähigkeiten, Übertragen auf künstliche Systeme







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions

*   Figure "Humanoider Roboter beim RoboCup 2013": [AvB - RoboCup 2013 - Eindhoven](https://www.flickr.com/photos/80267257@N05/10151827605), by [RoboCup2013](https://www.flickr.com/photos/80267257@N05), licensed under [CC BY 2.0](https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=rich)
*   Citation "Intelligenz": [de.wikipedia.org/wiki/Intelligenz](https://de.wikipedia.org/wiki/Intelligenz), [verschiedene Autoren](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Intelligenz?uselang=de), licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode)
*   Citation "Kognition": [de.wikipedia.org/wiki/Kognition](https://de.wikipedia.org/wiki/Kognition), [verschiedene Autoren](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Kognition?uselang=de), licensed under [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode)
*   Citations "Definitionsversuche KI": nach "Introduction to Artificial Intelligence" 2nd ed. [@Ertel2017, S.1-3]
*   Figure "Turing Test": [Turing Test version 3.png](https://commons.wikimedia.org/wiki/File:Turing_Test_version_3.png), by [Bilby](https://commons.wikimedia.org/wiki/User:Bilby), licensed under [Public domain](https://en.wikipedia.org/wiki/en:public_domain)


:::
