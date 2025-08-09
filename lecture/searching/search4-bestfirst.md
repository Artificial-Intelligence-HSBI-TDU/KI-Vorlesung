---
author: Carsten Gips (HSBI)
title: Suche mit Best First
---

::: tldr
Best First gehört wie Branch-and-Bound zu den "Informierten Suchverfahren": Es werden
Pfadkosten (in diesem Fall Schätzungen) statt der Anzahl der Schritte berücksichtigt.

Best First arbeitet algorithmisch wie Branch-and-Bound, allerdings werden immer nur
die geschätzten Restkosten eines Knotens zum Ziel berücksichtigt.
:::

::: youtube
-   [VL Best First](https://youtu.be/)
:::

# Hole das Buch

::: center
![](images/graph.png){width="60%"}
:::

::: notes
=\> **Problemlösen == Suche im Graphen**
:::

\bigskip
\bigskip

**Informierte Suche: Nutzung der Kostenfunktion**:

**Gesamtkosten**: $f(n) = g(n) + h(n)$

::: notes
-   $n \in S$ auf aktuellem Weg erreichter Knoten
-   $g(n)$ tatsächliche Kosten für Weg vom Start bis Knoten $n$
-   $h(n)$ geschätzte Restkosten für Weg von Knoten $n$ zum Ziel =\> $h(n)$ wird auch
    "heuristische Funktion" oder "Heuristik" genannt
:::

::: notes
Varianten:

-   [Branch-and-Bound](search3-branchandbound.md)
-   **Best First**
-   [A\*](search5-astar.md)
:::

# Best-First (*BF*, *BFS*)

-   Idee: Expandiere den partiellen Weg, der verspricht, dem Ziel am nächsten zu sein
    (**Heuristik**)

\smallskip

-   Kostenfunktion: $f(n) = h(n)$
-   Datenstruktur: **sortierte Queue** (Prioritätsqueue)

\smallskip

-   Voraussetzungen: $h(n)$ positiv, $h(n) = 0$ für den Zielknoten

[[Tafelbeispiel Best-First (Graph-Search)]{.ex}]{.slides}

::: notes
# Konventionen BF

In der Beschreibung der Algorithmen werden häufig nur die letzten Knoten der
partiellen Wege in den Datenstrukturen mitgeführt (das gilt auch für die Beschreibung
im [@Russell2020]). Dies erschwert die Nachvollziehbarkeit, wenn man die Queue oder
den Stack schrittweise aufschreibt. Deshalb wird für diese Veranstaltung die
Konvention eingeführt, immer die **partiellen Wege** aufzuschreiben.

Auf dem Papier sortiert sich die Queue schlecht, deshalb können Sie darauf
verzichten, wenn Sie den im nächsten Schritt zu expandierenden Weg unterstreichen.
Wer nicht mit Unterstreichen arbeiten will, muss eben dann manuell sortieren ...

Wenn bei der Graph-Search-Variante ein Weg nicht in die Queue aufgenommen wird, weil
bereits ein anderer (günstigerer) Weg zum selben (Zwischen-/End-) Knoten bereits in
der Queue enthalten ist, schreiben Sie dies geeignet auf. Dies gilt auch für den
analogen Fall, wenn ein Weg aus der Queue entfernt wird, weil ein günstigerer Weg zum
selben (Zwischen-/End-) Knoten eingefügt werden soll.
:::

::: notes
# Eigenschaften von BF

Siehe [A\*](search5-astar.md)
:::

# Wrap-Up

-   Informierte Suchverfahren
    -   Nutzen reale Pfadkosten und/oder Schätzungen der Restkosten
    -   Best-First: nur Schätzungen $h(n)$

::: readings
-   @Russell2020: Best First: Abschnitt 3.5.1, Heuristiken: Kapitel 3.6
:::

::: outcomes
-   k1: Verwendete Datenstrukturen
-   k2: Algorithmische Abläufe, Terminierung
-   k2: Optimalität, Vollständigkeit und Komplexität
-   k3: Informierte Suchverfahren Best-First
:::

::: quizzes
-   [Selbsttest Best First
    (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106599&client_id=FH-Bielefeld)
:::

::: challenges
Betrachten Sie folgende Landkarte und Restwegschätzungen:

<!-- TODO
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MapGermanyGraph.svg/476px-MapGermanyGraph.svg.png)
-->

[[MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg)
by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and
[Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on Wikimedia Commons
([Public Domain](https://en.wikipedia.org/wiki/en:public_domain))]{.origin}

![](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/searching/images/challenge.png?raw=true)

Finden Sie mit der **Best-First-Suche** jeweils einen Weg von Würzburg nach München.
Vergleichen Sie das Ergebnis mit der Gradienten-Suche.
:::
