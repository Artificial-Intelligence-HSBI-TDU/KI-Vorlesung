---
author: Carsten Gips (HSBI)
title: "Intro: Was ist Künstliche Intelligenz?"
---

::: tldr
KI ist ein altes und modernes Forschungsgebiet, welches periodisch Hype-Zeiten
erlebt hat und sich aktuell wieder in einer Hoch-Phase befindet. Wer heute "KI"
sagt, meint meist Maschinelles Lernen oder (noch genauer) eine Form von *Deep
Learning*. Dabei gibt es in der KI viele weitere Gebiete: Suche (Problemlösen),
Spiele, Constraintprobleme, Entscheidungsbäume, ..., um nur einige zu nennen.

Der *Turing-Test* (Alan Turin, 1950) hat gewissermaßen die modernen Zweige der KI
begründet, u.a. *Wissensrepräsentation*, *Logisches Schließen*, *Maschinelles
Lernen*, *Verarbeitung natürlicher Sprache*, *Computer Vision* und *Robotik*. Dabei
ist zwischen *starker KI* und *schwacher KI* zu unterscheiden.

Häufig werden die Gebiete in einem Diagramm eingeordnet, wobei die x-Achse Verhalten
vs. Denken und die y-Achse Rational vs. Menschlich aufspannen. So kann man
beispielsweise Logik dem rationalen Denken zuordnen oder die Erforschung kognitiver
Prozesse dem Quadranten menschliches Denken.

Wenn man sich die Geschichte der KI anschaut, beobachtet man bei fast allen Themen,
dass sie in der Vergangenheit eine Hype-Phase erlebt haben und dabei die oft stark
überzogenen Erwartungen enttäuscht haben und danach meist nur wenig Beachtung
erfuhren. Nach einer Weile kamen die Themen wieder "auf die Tagesordnung", diesmal
mit vernünftigen Erwartungen.
:::

::: youtube
-   [VL Einführung](https://youtu.be/oETxokgYdDk)
:::

# Was ist (künstliche) Intelligenz?

![](https://live.staticflickr.com/2889/10151827605_911e35be10_c_d.jpg){width="80%" web_width="60%"}

[[AvB - RoboCup 2013 -
Eindhoven](https://www.flickr.com/photos/80267257@N05/10151827605) by
[RoboCup2013](https://www.flickr.com/photos/80267257@N05) on Flickr.com ([CC BY
2.0](https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=rich))]{.credits}

::: notes
-   Was ist (künstliche) Intelligenz?
-   Ist [Commander Data](https://en.wikipedia.org/wiki/Data_(Star_Trek))
    intelligent?
-   Woran erkennen Sie das?
:::

[[Diskussion]{.ex}]{.slides}

# Definition Intelligenz

> Intelligenz (von lat. *intellegere* "verstehen", wörtlich "wählen zwischen ..."
> von lat. *inter* "zwischen" und *legere* "lesen, wählen") ist in der Psychologie
> ein Sammelbegriff für die **kognitive Leistungsfähigkeit** des Menschen. Da
> einzelne kognitive Fähigkeiten unterschiedlich stark ausgeprägt sein können und
> keine Einigkeit besteht, wie diese zu bestimmen und zu unterscheiden sind, gibt es
> **keine allgemeingültige Definition der Intelligenz**.
>
> `\hfill`{=tex} [["Intelligenz"](https://de.wikipedia.org/wiki/Intelligenz) by
> [Cumtempore](https://de.wikipedia.org/wiki/Benutzer:Cumtempore) and
> [others](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Intelligenz?uselang=de)
> on Wikipedia ([CC BY-SA
> 3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode))]{.credits}

::: notes
Das ist spannend: Es gibt keine allgemeingültige Definition für den Begriff
"Intelligenz". Damit wird es schwierig, auch "Künstliche Intelligenz" zu definieren
...

Aber wir können aus dieser Definition auf Wikipedia mitnehmen, dass es um kognitive
Fähigkeiten geht. Verstehen und im weiteren Sinne Denken sind bereits im Begriff
enthalten und damit auch Teil der kognitiven Fähigkeiten.

Schauen wir uns nun noch die Definition von "kognitiven Fähigkeiten" genauer an.
:::

\bigskip
\bigskip

> Zu den **kognitiven Fähigkeiten** eines Menschen zählen die **Wahrnehmung**, die
> Aufmerksamkeit, die Erinnerung, das **Lernen**, das **Problemlösen**, die
> Kreativität, das **Planen**, die Orientierung, die Imagination, die
> **Argumentation**, die Introspektion, der Wille, das Glauben und einige mehr. Auch
> Emotionen haben einen wesentlichen kognitiven Anteil.
>
> `\hfill`{=tex} [["Kognition"](https://de.wikipedia.org/wiki/Kognition) by
> [Arbraxan](https://de.wikipedia.org/wiki/User:Arbraxan) and
> [others](https://xtools.wmflabs.org/articleinfo-authorship/de.wikipedia.org/Kognition?uselang=de)
> on Wikipedia ([CC BY-SA
> 3.0](https://creativecommons.org/licenses/by-sa/3.0/legalcode))]{.credits}

::: notes
Zu den kognitiven Fähigkeiten und damit zur Intelligenz zählen also eine Reihe von
Fähigkeiten, die man Menschen im allgemeinen zuschreibt. Lernen und Problemlösen und
Planen sind Dinge, die vermutlich jeder direkt mit dem Begriff Intelligenz
verbindet. Interessanterweise gehören auf auch Aufmerksamkeit und Wahrnehmung und
Orientierung mit dazu -- Fähigkeiten, die beispielsweise in der Robotik sehr wichtig
sind. Kreativität und Vorstellung zählen aber auch mit in den Bereich der kognitiven
Fähigkeiten und damit zum Begriff Intelligenz. In der KI werden diese Gebiete
zunehmend interessant, etwa beim Komponieren von Musik und beim Erzeugen von Bildern
oder Texten. Mit Emotionen beschäftigt sich die KI-Forschung aktuell nur am Rande,
etwa bei der Erkennung von Emotionen in Texten. Andere Gebiete der kognitiven
Fähigkeiten wie Glaube und Wille spielen derzeit keine Rolle in der KI.
:::

# Versuch einer Definition für "KI"

> Ziel der KI ist es, Maschinen zu entwickeln, die sich verhalten, als verfügten sie
> über Intelligenz.
>
> `\hfill`{=tex} -- John McCarthy (1955)

::: notes
Einwand: [Braitenberg-Vehikel](https://en.wikipedia.org/wiki/Braitenberg_vehicle)
zeigen so etwas wie "intelligentes" Verhalten, sind aber noch lange nicht
intelligent! Bezieht sich nur auf *Verhalten*!
:::

\bigskip
\smallskip

> KI ist die Fähigkeit digitaler Computer oder computergesteuerter Roboter, Aufgaben
> zu lösen, die normalerweise mit den höheren intellektuellen
> Verarbeitungsfähigkeiten von Menschen in Verbindung gebracht werden ...
>
> `\hfill`{=tex} -- Encyclopedia Britannica

::: notes
Einwand: Dann wäre aber auch Auswendig-Lernen oder das Multiplizieren langer Zahlen
als intelligent zu betrachten! Bezieht sich vor allem auf "*Denken*"!
:::

\bigskip
\smallskip

> Artificial Intelligence is the study of how to make computers do things at which,
> at the moment, people are better.
>
> `\hfill`{=tex} -- Elaine Rich ("Artificial Intelligence", McGraw-Hill, 1983)

[nach [@Ertel2017, pp. 1-3]]{.credits nolist=true}

::: notes
Dazu gehört auch

-   Anpassung an sich verändernde Situationen
-   Erkennung von Bildern und Gesichtern und Emotionen
-   Erkennung von Sprache
-   Umgang mit kontextbehafteten, unvollständigen Informationen
-   Ausräumen von Geschirrspülern ;-)
-   Über Emotionen und Empathie verfügen
:::

:::: notes
::: tip
**KI-Grundverordnung der EU**

Die EU hat am 13. Juni 2024 die sog. "KI-Verordnung" verabschiedet ("VERORDNUNG (EU)
2024/1689 DES EUROPÄISCHEN PARLAMENTS UND DES RATES", [Document 32024R1689:
Verordnung (EU) 2024/1689 des Europäischen Parlaments und des Rates vom 13. Juni
2024 zur Festlegung harmonisierter Vorschriften für künstliche Intelligenz und zur
Änderung der Verordnungen (EG) Nr. 300/2008, (EU) Nr. 167/2013, (EU) Nr. 168/2013,
(EU) 2018/858, (EU) 2018/1139 und (EU) 2019/2144 sowie der Richtlinien 2014/90/EU,
(EU) 2016/797 und (EU) 2020/1828 (Verordnung über künstliche Intelligenz) (Text von
Bedeutung für den EWR)](https://eur-lex.europa.eu/legal-content/DE/TXT/?uri=CELEX:32024R1689)).

Dort finden Sie unter Artikel 3 "Begriffsbestimmungen" unter Absatz 1 eine
Begriffsdefinition. Ein "KI-System" wird darin als ein maschinengestütztes System
definiert, in irgendeiner Art für einen autonomen Betrieb ausgelegt ist und eine
gewisse Anpassungsfähigkeit haben kann. Zusätzlich soll das "KI-System" aus den
Eingaben Vorhersagen und Entscheidungen zu treffen oder auch Inhalte erzeugen und
mit der physischen oder digitalen Umwelt interagieren können.

[[VERORDNUNG (EU) 2024/1689 DES EUROPÄISCHEN PARLAMENTS UND DES
RATES](https://eur-lex.europa.eu/legal-content/DE/TXT/?uri=CELEX:32024R1689), Art. 3
Abs. 1]{.credits nolist=true}

Interessant ist, dass dabei nicht explizit auf Softwaresysteme eingegangen wird.
Später im Text finden sich Hinweise, dass sich ein KI-System vermutlich als Software
repräsentiert, auch kommen Modelle und Daten vor. Bei den Modellen kommt der Begriff
des Lernens vor, in allen derzeit üblichen Varianten (überwachtes Lernen,
unüberwachtes Lernen, Reinforcement Learning). Große Teile des Dokuments
beschäftigen sich mit weitreichenden Bestimmungen für Akteure, die ein KI-System zur
Verfügung stellen wollen.

Lesen Sie selbst: [VERORDNUNG (EU) 2024/1689 DES EUROPÄISCHEN PARLAMENTS UND DES
RATES](https://eur-lex.europa.eu/legal-content/DE/TXT/?uri=CELEX:32024R1689).
:::
::::

# Alan Turing 1950: Turing-Test (begründet Zweige der KI)

::: notes
-   Wann verhält sich eine Maschine intelligent?
:::

![](images/turing_test_version_3.png){width="40%" web_width="20%"}

[[Turing Test version
3.png](https://commons.wikimedia.org/wiki/File:Turing_Test_version_3.png) by
[Bilby](https://commons.wikimedia.org/wiki/User:Bilby) on Wikimedia Commons ([Public
Domain](https://en.wikipedia.org/wiki/en:public_domain))]{.credits}

::: notes
Zum Bestehen des Turing-Tests ist (u.a.) erforderlich:

-   *Wissensrepräsentation*: Speichern des gesammelten Wissens **=\>**
    **Wissensbasierte Systeme**
-   *Logisches Schließen*: Beantworten von Fragen mit Hilfe des vorhandenen Wissens
    **=\>** **Logik, Resolution**
-   *Maschinelles Lernen*: Anpassung an veränderliches Umfeld **=\>**
    **Musteranalyse und Mustererkennung und Mustervorhersage**
-   *Verarbeitung natürlicher Sprache*: Erfolgreiche Kommunikation, beispielsweise
    in Englisch **=\>** **NLP**

"Totaler Turing-Test": zusätzlich **Computer Vision** (Erkennen von Objekten) und
**Robotik** (Manipulation von Objekten)

Damit begründet der Turing-Test die Gebiete der KI.

**Problem**: Der Turing-Test ist nicht reproduzierbar, nicht konstruktiv und nicht
mathematisch analysierbar ... Außerdem wird durch den Turing-Test im Wesentlichen
nur Funktionalität geprüft, nicht ob Intention oder Bewusstsein vorhanden ist.
:::

# Starke vs. schwache KI

## "Schwache KI"

-   Simulation intelligenten Verhaltens
-   Lösung konkreter Probleme
-   Adaptives Verhalten ("Lernen")
-   Umgang mit Unsicherheit und unvollständigen Informationen

\bigskip
\bigskip

## "Starke KI"

-   Eigenschaften der "schwachen KI"
-   Intelligenz nach menschlichen Maßstäben (auf "Augenhöhe")
-   Bewusstsein
-   Emotionen (?)
-   Empathie

:::: notes
::: tip
**Frage**

Wie würden Sie Systeme wie ChatGPT einordnen? Woran machen Sie das fest?
:::
::::

# Typische Ansätze in der KI

![](images/dimensionen-ki.png){width="60%" web_width="40%"}

\bigskip
\bigskip

::: notes
Untersuchung von

-   Verhalten vs. Denken
-   Rational vs. menschlich

Motivation dabei
:::

-   Menschliche Intelligenz verstehen
-   Intelligente/intelligent wirkende Systeme bauen

:::::: notes
Damit erhält man vier Kombinationen:

-   Menschliches Denken
-   Rationales Denken
-   Rationales Verhalten
-   Menschliches Verhalten

## Menschliches Denken: Kognitive Modellierung

-   Welche kognitiven Fähigkeiten sind für intelligentes Verhalten nötig? Wie laufen
    Denkprozesse im Gehirn ab?
-   Erfordert Theorien über interne Aktivitäten des Gehirns
-   Ansätze:
    -   top-down: Vorhersage und Test von menschlichem Verhalten
    -   bottom-up: Auswertung neurobiologischer Daten
-   Wissenschaftszweige: Kognitionswissenschaft (Verbindung der Computermodelle der
    KI mit den Experimenten und Theorien der Psychologie), Neurobiologie/-informatik

::: tip
**Neuronale bzw. Konnektionistische KI**

Die Schule der sogenannten "**Neuronalen bzw. Konnektionistischen KI**" verfolgt den
Ansatz, die biologischen Prozesse im Gehirn zu verstehen und nachzubauen (bottom-up
Ansatz) und auf reale Probleme anzuwenden.

Dank massiver Rechenleistung, riesigen Datenmengen und geeigneten Modellen (Deep
Learning) kann diese Tradition aktuell große Erfolge vorzeigen.
:::

## Rationales Denken: Aristoteles: Was sind korrekte Argumente und Denkprozesse? =\> Wie sollen wir denken?

Beispiel:

    Fakt: Sokrates ist ein Mensch.
    Fakt: Alle Menschen sind sterblich.
    Folgerung: Sokrates ist sterblich.

-   Formalisierte Problembeschreibung
-   Problemlösung durch *logische Prozesse*
-   Verbindung von moderner KI zur Mathematik und Philosophie

::: tip
**Symbolische KI**

Die Schule der sogenannten "**Symbolische KI**" verfolgt den top-down-Ansatz, mit
Hilfe formaler Beweise Schlüsse zu ziehen und damit Fragen zu beantworten bzw.
Probleme zu lösen. Dabei wird die betrachtete "Welt", also Gedanken, Konzepte und
Beziehungen zwischen Objekten durch Symbole und Formeln repräsentiert, ähnlich der
Art und Weise, wie Menschen logisch denken und kommunizieren.

Das Hauptproblem dieser Tradition liegt im Aufwand bei der geeigneten Formalisierung
der realen Welt.
:::

## Rationales Verhalten: Das "Richtige" tun

-   Das "Richtige": Verhalten zum Erzielen des besten (erwarteten) Ergebnisses
    (unter Berücksichtigung der verfügbaren Informationen)

    Ein System ist rational, wenn es das seinen Kenntnissen nach "Richtige" macht.

-   Denken ist nicht unbedingt notwendig (zb. Reflexe können auch rationales
    Verhalten sein)

-   Interessant: "richtige" Handlung unter unvollständigen/unsicheren Informationen

::: tip
**Statistische KI**

Die Schule der sogenannten "**Statistischen KI**" verfolgt einen Ansatz, der sich
stark auf statistische Methoden und Modelle stützt, um Muster in Daten zu erkennen
und Entscheidungen zu treffen, also um aus großen Datenmengen Erkenntnisse zu
gewinnen und Vorhersagen zu treffen.

Aus der Analyse von Datenpunkten und deren Merkmalen werden Wahrscheinlichkeiten für
bestimmte Ereignisse berechnet, beispielsweise in Regressionsanalysen,
Klassifizierungsverfahren oder Zeitreihenanalysen.

Diese Tradition spielt eine zentrale Rolle in zahlreichen Anwendungsbereichen wie
Gesundheitswesen, Finanzen, Marketing und vielen weiteren.
:::

## Menschliches Verhalten: Na ja, Sie wissen schon ;-)
::::::

::: notes
# Modelle, Lernen und Vorhersagen

In der Informatik allgemein und auch in der KI versuchen wir, Probleme der realen
Welt mit Hilfe von künstlichen Systemen (Algorithmen, Software) zu lösen. Dafür
brauchen wir zunächst ein abstraktes mathematisches **Modell** der Welt, in der wir
uns bewegen. Das Modell sollte alle für das zu lösende Problem relevanten Aspekte
der Welt repräsentieren - und möglichst nicht mehr als diese, um unnötige
Komplexität zu vermeiden. Es kommt häufig vor, dass selbst die relevanten Aspekte zu
umfangreich oder teilweise sogar unbekannt sind und nicht vollständig dargestellt
werden können. Modelle stellen also eine Abstraktion der echten Welt dar und sind
*verlustbehaftet*. Es gibt viele verschiedene Modelle.

*Beispiel*: Wir möchten von Bielefeld nach Minden fahren. Neben den offensichtlichen
Parametern (Womit wollen wir fahren? Wo genau ist der Startpunkt, wo genau der
Zielpunkt? Wann wollen wir fahren?) spielen in der realen Welt unendlich viele
Aspekte eine Rolle: Farben, Gerüche, Licht, Beschaffenheit der einzelnen Straßen,
exakte Positionen auf der Straße/im Ort ... Sind diese wirklich relevant für dieses
Problem? Am Ende wird es wichtig sein, eine abstrakte Darstellung zu finden, die
irgendwie die Städte und Dörfer repräsentiert und die Verbindungen dazwischen. Und
vermutlich muss ich wissen, wie lang die Strecken jeweils sind (oder wie lange ich
brauche oder wieviel Geld mich das Abfahren kostet). Es scheint also so zu sein,
dass eine Abstraktion des Problems als *Graph* sinnvoll ist: Die Knoten entsprechen
den Orten, die Kanten den Straßen (oder Bahnlinien o.ä.). An den Kanten sind Kosten
annotiert (Kilometer, Zeit, ...). Damit ignorieren wir die Komplexität der realen
Welt und fokussieren uns auf die Aspekte, die zur Lösung des Problems wichtig sind.
Behalten Sie im Gedächtnis, dass unser Modell verlustbehaftet ist und wir damit
tatsächlich nur das Wegeproblem lösen können! Wenn wir Wege vergessen haben oder
falsch bewertet haben, wird unser Algorithmus später möglicherweise nicht die
gewünschte Lösung finden! Wir schauen uns das Thema Modellierung am Beispiel des
Problemlösens und insbesondere für Suchprobleme in der Lektion
[Problemlösen](intro2-problemsolving.md) noch genauer an.

Ein Modell kann Parameter haben. Im obigen Beispiel wären dies die Werte an den
Kanten. Es kann sein, dass diese Werte nicht im Vorfeld bekannt sind, sondern aus
einem Datensatz extrahiert werden müssen. Dies nennt man **Lernen**: Das Modell wird
(besser gesagt: die Parameter des Modells werden) an das Problem angepasst. Dafür
gibt es unterschiedliche Algorithmen. In der Regel benötigt man ein Ziel für den
Adaptionsprozess: eine sogenannte Ziel- oder Kostenfunktion. Anpassen der
Modellparameter mit Hilfe von Daten und einer Zielfunktion bedeutet auch, dass man
das Ziel möglicherweise nie zu 100% erreicht, sondern nur in die Nähe kommt. Je nach
Problem kann man auch nur eine Modellfamilie vorgeben und den konkreten Aufbau des
Modells im Trainingsprozess erarbeiten lassen.

*Wichtig*: Lernen bietet sich immer dann an, wenn eine analytische Lösung nicht
möglich ist (fehlende Informationen, Komplexität des Problems). Das bedeutet im
Umkehrschluss aber auch: Wenn eine analytische Lösung bekannt ist (oder zu finden
ist), dann gibt es keinen Grund für den Einsatz von adaptiven Systemen!

Mit dem Modell der Welt kann nun das Problem gelöst werden. Dazu wird das Modell mit
Daten versorgt (im obigen Beispiel: Start und Ziel) und ein passender Algorithmus
kann auf dem Modell die Lösung berechnen. Dies kann eine **Vorhersage** sein,
welchen Weg ich nehmen soll, wie lange es dauern wird, welchen Spielzug ich als
nächstes machen sollte, ob in einem Bild eine Katze zu sehen ist, ... Es könnte aber
auch im Fall von sogenannten *generativen Modellen* ein erzeugter Text oder ein
erzeugtes Bild sein.

*Hinweis*: In manchen Quellen wird dieser Vorgang auch "Inferenz" genannt. Da dieser
Begriff aus der Logik stammt und mit bestimmten Prozessen zur Schlussfolgerung
verbunden ist, möchte ich in diesem Skript diesen Begriff nicht für das Generieren
einer Vorhersage nutzen.
:::

::: notes
# Modellkomplexität

In der KI werden sehr unterschiedliche Modelle betrachtet, die auch eine sehr
unterschiedliche Komplexität aufweisen.

Besonders einfache Modelle sind Modelle, die für einen Input direkt einen Output
berechnen. Für jeden Input wird eine feste Berechnung durchgeführt, es erfolgt kein
Backtracking und es gibt keine (inneren) Zustände. Dies ähnelt dem reflexartigen
Verhalten in biologischen Vorbildern, weshalb diese Modell oft auch "*reflex-based
models*" genannt werden. In diese Kategorie fallen beispielsweise [lineare
Regression](../nn/nn02-linear-regression.md) und das
[Perzeptron](../nn/nn01-perceptron.md), aber auch Modelle mit vielen Parametern wie
ein [Multilagen-Perzeptron (MLP)](../nn/nn05-mlp.md) oder die daraus abgeleiteten
Deep Neural Networks.

In der nächst komplexeren Stufe haben die Modelle einen internen Zustand
("*state-based models*"). Darüber wird ein Zustand der betrachteten Welt modelliert.
Zwischen den Zuständen gibt es Übergänge (sogenannte Aktionen), so dass sich hier
ein Graph aufspannt (der sogenannte Problemgraph, vgl.
[Problemlösen](intro2-problemsolving.md)). In diese Klasse fallen die typischen
Suchprobleme (wie [Breitensuche](../searching/search2-bfs.md),
[Tiefensuche](../searching/search1-dfs.md), [A\*](../searching/search5-astar.md)),
aber auch [Spiele](../games/readme.md) mit Zufallskomponente oder mit gegnerischen
Mitspielern.

Noch eine Stufe komplexer sind Modelle mit Variablen ("*variable-based models*").
Während es bei den zustandsbasierten Modellen immer (auch) um den Weg zwischen den
Zuständen geht und damit um eine prozedurale Beschreibung, wie von einem
Startzustand zu einem Zielzustand zu gelangen ist, steht bei Modellen mit Variablen
nur die Lösung im Vordergrund: Das Modell enthält verschiedene Variablen, denen ein
passender Wert aus einem Wertebereich zugeordnet werden muss. Wie diese Belegung
entsteht, ist am Ende nicht mehr so interessant. Denken Sie beispielsweise an ein
Sudoku oder die Erstellung eines Stundenplans. Die Variablen sind entsprechend die
einzelnen Felder, gesucht ist eine insgesamt korrekte Belegung aller Felder. In
diese Klasse fallen [Constraint Satisfaction Probleme (CSP)](../csp/readme.md), aber
auch Bayes'sche Netze und die sogenannte ["lokale
Suche"](../searching/search6-gradient.md).

Auf der höchsten Komplexitätsstufe stehen logische Modelle. Hier wird Wissen über
die Welt in Form von Fakten und Regeln modelliert, und über eine entsprechende
Anfrage wird daraus mit Hilfe von formal definierten Beweisen eine korrekte Antwort
generiert. Dies nennt man auch "*Inferenz*". Hier kommt beispielsweise das
Prädikatenkalkül zum Einsatz oder die Programmiersprache Prolog.
:::

# Kurzer Geschichtsüberblick -- Wichtigste Meilensteine

-   1943: McCulloch/Pitts: binäres Modell eines Neurons
-   1950: Turing-Test
-   1956: Dartmouth Workshop (Minsky, McCarthy, ...) -- McCarthy schlägt den Begriff
    "Artificial Intelligence" vor
-   1960er: Symbolische KI (Theorembeweiser), Blockwelt, LISP
-   1970er: Wissensbasierte System (Expertensysteme)
-   1980er: zunächst kommerzieller Erfolg der Expertensysteme, später Niedergang
    ("KI-Eiszeit"); Zuwendung zu Neuronalen Netzen
-   1990er: Formalisierung der KI-Methoden, Einführung probabilistischer Methoden
    (Bayes'sches Schließen), verstärkte mathematische Fundierung
-   heute: friedliche Koexistenz verschiedener Paradigmen und Methoden; Rückkehr zu
    "Human-Level AI" (McCarthy, Minsky, Nilsson, Winston); Rückkehr zu Neuronalen
    Netzen (CNN/RNN)

\bigskip

Siehe auch Abbildung 1.3 in [@Ertel2017, S.8] ...

# Wrap-Up

-   Definition von "Intelligenz" nicht ganz einfach
-   Dimensionen: Denken vs. Verhalten, menschlich vs. rational
-   Ziele der KI: Verständnis menschlicher Fähigkeiten, Übertragen auf künstliche
    Systeme

::: notes
Schauen Sie sich zur Einführung auch gern das YouTube-Video [Overview Artificial
Intelligence Course \| Stanford CS221](https://youtu.be/J8Eh7RqggsU) an. (Vorsicht:
Das ist recht lang.)
:::

::: readings
-   @Russell2020: Kapitel 1: Introduction
-   @Ertel2017: Kapitel 1: Introduction
:::

::: outcomes
-   k1: Ich kenne verschiedene Aspekte, die zur Intelligenz gerechnet werden
-   k1: Ich kenne den Turing-Test und kann Aufbau, Gebiete, Kritik wiedergeben
-   k1: Ich kenne verschiedene Gebiete der KI sowie deren Zielsetzung
-   k1: Ich kann starke vs. schwache KI unterscheiden
-   k1: Ich kenne wichtige Strömungen in der KI und ihre zeitliche Einordnung
:::

::: quizzes
-   [Selbsttest KI Einführung
    (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106585&client_id=FH-Bielefeld)
:::
