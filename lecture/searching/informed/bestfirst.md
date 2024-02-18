---
archetype: lecture-cg
title: "Suche mit Best First"
linkTitle: "Best First"
author: "Carsten Gips (HSBI)"
readings:
  - key: "Russell2020"
    comment: "Best First: Abschnitt 3.5.1, Heuristiken: Kapitel 3.6"
tldr: |
  Best First gehört wie Branch-and-Bound zu den "Informierten Suchverfahren": Es werden
  Pfadkosten (in diesem Fall Schätzungen) statt der Anzahl der Schritte berücksichtigt.

  Best First arbeitet algorithmisch wie Branch-and-Bound, allerdings werden immer nur die
  geschätzten Restkosten eines Knotens zum Ziel berücksichtigt.
outcomes:
  - k1: "Verwendete Datenstrukturen"
  - k2: "Algorithmische Abläufe, Terminierung"
  - k2: "Optimalität, Vollständigkeit und Komplexität"
  - k3: "Informierte Suchverfahren Best-First"
quizzes:
  - link: "https://www.hsbi.de/elearning/goto.php?target=tst_1106599&client_id=FH-Bielefeld"
    name: "Selbsttest Best First (ILIAS)"
assignments:
  - topic: sheet01
youtube:
  - link: "https://youtu.be/`dNyLOQuD_aI`{=markdown}"
    name: "VL Best First"
fhmedia:
  - link: "https://www.hsbi.de/medienportal/m/4c065b44bafcd006400d7ae3ccdc25e04577d164e1aa0e118e29fa643b53bfbcaaa14dd12b93fa89105abc6f782947f7c04c849fb673a92c710da5c6b8c99083"
    name: "VL Best First"
challenges: |
    Betrachten Sie folgende Landkarte und Restwegschätzungen:

    ![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MapGermanyGraph.svg/476px-MapGermanyGraph.svg.png)
    Quelle: [MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg) by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and [Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on Wikimedia Commons ([Public Domain](https://en.wikipedia.org/wiki/en:public_domain))

    ![](https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/master/lecture/searching/informed/images/challenge.png)

    Finden Sie mit der **Best-First-Suche** jeweils einen Weg von Würzburg nach München. Vergleichen Sie das Ergebnis mit der Gradienten-Suche.
---


## Hole das Buch

:::center
![](images/graph.png){width="60%"}
:::

::: notes
=> [**Problemlösen == Suche im Graphen**]{.alert}
:::

\bigskip
\bigskip

**Informierte Suche: Nutzung der Kostenfunktion**:

**Gesamtkosten**: $f(n) = g(n) + h(n)$

::: notes
*   $n \in S$ auf aktuellem Weg erreichter Knoten
*   $g(n)$ tatsächliche Kosten für Weg vom Start bis Knoten $n$
*   $h(n)$ geschätzte Restkosten für Weg von Knoten $n$ zum Ziel
    => $h(n)$ wird auch "heuristische Funktion" oder "Heuristik" genannt
:::

::: notes
Varianten:
*   [Branch-and-Bound](branchandbound.md)
*   **Best First**
*   [A*](astar.md)
:::

## Best-First (*BF*, *BFS*)

*   Idee: Expandiere den partiellen Weg, der [verspricht]{.alert}, dem Ziel am
    nächsten zu sein (**Heuristik**)

\smallskip

*   Kostenfunktion: $f(n) = h(n)$
*   Datenstruktur: **sortierte Queue** (Prioritätsqueue)

\smallskip

*   Voraussetzungen: $h(n)$ positiv, $h(n) = 0$ für den Zielknoten

[[Tafelbeispiel Best-First (Graph-Search)]{.bsp}]{.slides}


::::::::: notes
## Konventionen BF

In der Beschreibung der Algorithmen werden häufig nur die letzten Knoten der partiellen Wege
in den Datenstrukturen mitgeführt (das gilt auch für die Beschreibung im [@Russell2020]). Dies
erschwert die Nachvollziehbarkeit, wenn man die Queue oder den Stack schrittweise aufschreibt.
Deshalb wird für diese Veranstaltung die Konvention eingeführt, immer die **partiellen Wege**
aufzuschreiben.

Auf dem Papier sortiert sich die Queue schlecht, deshalb können Sie darauf verzichten,
wenn Sie den im nächsten Schritt zu expandierenden Weg unterstreichen. Wer nicht mit
Unterstreichen arbeiten will, muss eben dann manuell sortieren ...

Wenn bei der Graph-Search-Variante ein Weg nicht in die Queue aufgenommen wird, weil
bereits ein anderer (günstigerer) Weg zum selben (Zwischen-/End-) Knoten bereits in der
Queue enthalten ist, schreiben Sie dies geeignet auf. Dies gilt auch für den analogen
Fall, wenn ein Weg aus der Queue entfernt wird, weil ein günstigerer Weg zum selben
(Zwischen-/End-) Knoten eingefügt werden soll.
:::::::::


::: notes
## Eigenschaften von BF

Siehe [A*](astar.md)
:::


## Wrap-Up

*   Informierte Suchverfahren
    *   Nutzen reale Pfadkosten und/oder Schätzungen der Restkosten
    *   Best-First: nur Schätzungen $h(n)$






<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
