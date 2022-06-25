---
type: lecture-cg
title: "Modulvorstellung KI (Wahlfach Liste 1)"
author: "Carsten Gips (FH Bielefeld)"
weight: 6
hidden: true
youtube:
  - link: ""
    name: "Modulvorstellung KI (Wahlfach Liste 1)"
fhmedia:
  - link: ""
    name: "Modulvorstellung KI (Wahlfach Liste 1)"
---


::: notes
# Modulvorstellung KI
:::

## Was ist *Künstliche Intelligenz*?

<!-- XXX ggf. mit Orga und Rueckblick abgleichen -->

::::::::: center
:::::: columns
::: {.column width="40%"}
![Commander Data](figs/orga/DataTNG){height=40mm}\
[Quelle: [wikipedia.de](https://en.wikipedia.org/wiki/File:DataTNG.jpg)]{.origin}
:::
::: {.column width="40%"}
![Astromech R2-D2](figs/orga/R2-D2_Droid){height=40mm}\
[Quelle: [wikipedia.de](https://en.wikipedia.org/wiki/File:R2-D2_Droid.png)]{.origin}
:::
::::::
:::::::::

::: notes
*   Was ist *Intelligenz*? Was ist *künstliche Intelligenz*?
*   Wie kann man intelligentes Verhalten erreichen?
*   Wie kann man lernfähige Systeme programmieren?
*   Was braucht man alles, um intelligente Systeme zu bauen?

\blueArrow Welche **Gebiete der KI** gibt es? Welche **wichtigen Algorithmen** gibt es? Wie **funktionieren** diese?
:::


::: slides
:::::: center
::::::::: cbox
[**Überblick über wichtige Methoden & Gebiete der KI**]{.alert}
:::::::::
::::::
\bigskip
\bigskip
:::


::: notes
## Überblick über wichtige Methoden der KI

<!-- XXX ggf. mit Orga und VL15 abgleichen -->

![Themen der LV](figs/orga/themen_ki)\
:::


::: notes
## Veranstaltungsform
:::

2 SWS Vorlesung (\blueArrow E-Klausur), 2 SWS Praktikum (\blueArrow Testat)

\blueArrow\ **Programmiersprache (meist) frei wählbar!**

::::::::: notes
Wir werden in der Vorlesung die wichtigsten Gebiete der (modernen) KI betrachten und jeweils
grundlegende Methoden besprechen und uns die Wirkungsweise an Beispielen anschauen.

*Anmerkung*: Die in der Mindmap mit einem roten Kreuz markierten Themen sind Bestandteil
anderer Veranstaltungen (Bilderkennung: Wahlfach Bachelor "Bildverarbeitung und Mustererkennung",
Prof. Rexilius; Machine Learning mit Schwerpunkt auf NLP (Natural Language Processing), Information
Retrieval und Sentiment Analysis: Wahlfach Master "Natural Language Processing and Information
Retrieval", Prof. Gips) und werden deshalb in diesem Modul explizit ausgeklammert. Die mit
Fragezeichen markierten Themen können je nach verfügbarer Zeit und Interesse der Teilnehmer
zusätzlich mit aufgenommen werden.

Im Praktikum wird es dazu kleinere Aufgaben geben, die Sie wie gewohnt zuhause
bearbeiten und deren Lösung Sie im Praktikum vorstellen.

<!-- XXX ggf. Orga nachziehen -->
Voraussichtlich wird es 10 Übungsblätter geben, wobei für das Erreichen des
Testats voraussichtlich mindestens 6 Blätter erfolgreich bearbeitet werden
müssen. "Erfolgreich bearbeitet" bedeutet, dass jeweils mind. 60% der Aufgaben
des Blattes bearbeitet wurden und im Praktikum vorgestellt wurden.

Ziel ist dabei vor allem, dass Sie untereinander ins Gespräch kommen und
spannende alternative Lösungen entwickeln und vorstellen, sich gegenseitig
weiterhelfen und Spaß an der KI haben :-)

Die Credits für die Veranstaltung erhalten Sie durch das Erlangen des Testats
für die erfolgreiche Teilnahme am Praktikum. Die Note für die Veranstaltung
ergibt sich aus einer Klausur am Ende des Semesters.


### Anmerkung zur Durchführung im Winter 2021

> Die Veranstaltung wird nach aktuellem Stand voraussichtlich rein digital
> durchgeführt: Für die Vorlesungen ist aktuell die Durchführung über
> Screencasts/Videos plus ausführliche Skripte und eine wöchentliche
> Sprechstunde geplant ("Flipped Classroom"). Für die Praktika ist aktuell
> die Durchführung über wöchentliche Zoom-Meetings geplant.


### Anmerkung zur Kooperation zw. FHB und TDU

Über das Projekt "Digital @ FH Bielefeld" der FHB ist im Sommer 2020 eine Kooperation mit der
Türkisch-Deutschen Universität in Istanbul (*TDU*) im Modul "Künstliche Intelligenz" gestartet.

Wir werden auch in diesem Semester wieder die Vorlesungen abwechselnd halten. Dabei werden die
Vorlesungen zur klassischen KI von der FH Bielefeld bereit gestellt und gemeinsam für die FHB
und die TDU durchgeführt, die Vorlesungen zum Maschinellen Lernen (Perzeptron, MLP, Backpropagation)
werden von der TDU bereit gestellt und gemeinsam für die FHB und die TDU durchgeführt. In den
Zoom-Sprechstunden nehmen deshalb auch die Studierenden der TDU mit teil.

Die Übungsaufgaben werden ebenfalls abwechselnd bereit gestellt, aber (für die Teilnehmer der
FH Bielefeld) durchgängig von der FHB durchgeführt.

**Die Unterrichtssprache ist Deutsch**.
:::::::::


::::::::: notes
## Sie werden einen Einblick in folgende Gebiete bekommen (u.a.)

### Suchen und Planen

![Landkarte Rumänien](figs/orga/romania2)\
[Quelle: [@Russell2014]]{.origin}

Finde *einen* Weg von Arad nach Bucharest. Finde den *schnellsten* Weg
von Arad nach Bucharest. Finde den *billigsten* Weg von Arad nach Bucharest.


### Evolution: Genetische Algorithmen

![Ablauf genetischer Algorithmus](figs/orga/genetic)\

![Crossover-Operator am Beispiel des 8-Queens-Rätsels](figs/orga/8queens-crossover)\
[Quelle: [@Russell2014]]{.origin}

Wie formuliert man ein komplexes Problem (beispielsweise das
N-Queens-Problem) so, dass man es mit Hilfe von Mechanismen der Evolution
lösen lassen kann? Welche Operatoren gibt es dabei? Wie formuliert man eine
Zielfunktion?


### Spiele und Constraintprobleme

![Alpha-Beta-Pruning](figs/orga/Alpha_beta)\
[Quelle: [Antonsusi (gemeinfrei, wikipedia.de)](https://de.wikipedia.org/wiki/Datei:Alpha_beta.svg)]{.origin}

Was steckt hinter den "KI"s in Computerspielen? Wie funktionieren diese?
Wie baue ich den (perfekt) spielenden Computer-Gegner?


![Sudoku-Rätsel](figs/orga/sudoku_leicht)\

Sudoku ist ein Spiel, bei dem die möglichen Werte für die Felder durch
bestimmte Bedingungen eingeschränkt werden. Wie kann man solche Probleme
lösen?


### Maschinelles Lernen

![Learning Agent](figs/orga/learning-agent)\
[Quelle: [@Russell2014]]{.origin}

Was bedeutet "Lernen"? Wie kann eine Maschine lernen? Welche Formen
des Lernens gibt es? Mein Lieblingsgebiet in der KI :-)


### Von der biologischen Nervenzelle ...

![Nervenzelle](figs/orga/neuron)\
[Quelle: [@Russell2014]]{.origin}


### ... zum Künstlichen Neuronalen Netz und Backpropagation

![Multilagen-Perzeptron](figs/orga/bishop_mlp_klein)\
[Quelle: [@Bishop2010, S.117]]{.origin}

Wie funktioniert eine Nervenzelle? Wie kann man ein einfaches Modell
einer biologischen Nervenzelle implementieren? Was passiert, wenn man
mehrere solcher Gebilde zusammen benutzt? Wie kann man damit lernen?


### Gebiete der KI, mal anderes betrachtet :-)

<!-- XXX ggf. Orga nachziehen -->

!["KI-Apotheke" nach Ertel](figs/orga/ertel-kiapotheke)\
[Quelle: [@Ertel2016, S.5]]{.origin}

Tja, *so* kann die Gebiete der KI auch darstellen :-) ...
Wir werden in fast alle Fächer des "Apothekenschranks" hereinschnuppern und
schauen, wie es funktioniert und wozu es gut ist. Am Ende haben Sie dann
einen Baukasten an Methoden, die man zur Lösung unterschiedlichster Probleme
nutzen kann.
:::::::::







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
