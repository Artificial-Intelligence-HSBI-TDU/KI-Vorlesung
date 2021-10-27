---
type: lecture-cg
title: "Kantenkonsistenz und AC-3"
menuTitle: "AC-3"
author: "Carsten Gips (FH Bielefeld)"
weight: 4
readings:
  - key: "Russell2020"
    comment: "CSP, AC-3: Abschnitt 5.2"
  - key: "Kumar1992"
  - key: "Bartak2001"
quizzes:
  - link: "TODO"
    name: "Selbsttest CSP, AC-3 (Kahoot)"
assignments:
  - topic: sheet04
youtube:
  - id: TODO
fhmedia:
  - link: "TODO"
    name: "Direktlink FH-Medienportal: KI CSP, AC-3"
---


## Problem bei BT-Suche

Zuweisung eines Wertes an Variable $X$:

*   Passt zu aktueller Belegung
*   Berücksichtigt aber nicht **restliche** Constraints \newline
    => macht weitere Suche u.U. unmöglich/schwerer

\bigskip

**Lösung**: Nach Zuweisung alle nicht zugewiesenen Nachbarvariablen prüfen


## INFERENCE: Vorab-Prüfung (Forward Checking)

``` {.python size="tiny"}
def Backtrack(assignment, csp):
    if complete(assignment): return assignment

    var = SELECT-UNASSIGNED-VARIABLE(csp, assignment)

    for value in ORDER-DOMAIN-VALUES(csp, var):
        if consistent(value, var, assignment, csp):
            assignment += {var = value}

            if INFERENCE(csp, assignment, var) != failure:
                result = Backtrack(assignment, csp)
                if result != failure: return result

            assignment -= {var = value}

    return failure
```

\bigskip

::: notes
[**Inference**]{.alert}: Frühzeitiges Erkennen von Fehlschlägen!
:::

Nach Zuweisung eines Wertes an Variable $X$:

*   Betrachte alle nicht zugewiesenen Variablen $Y$:
    *   Falls Constraints zw. $X$ und $Y$, dann ...
    *   ... entferne alle inkonsistenten Werte aus dem Wertebereich von $Y$.

[Tafelbeispiel:  Forward Checking (WA=red, Q=green)]{.bsp}

::: notes
1.  Sei WA auf rot gesetzt => entferne rot in NT und SA
2.  Sei Q auf grün gesetzt => entferne grün in NT und SA und NSW

Problem: Für NT und SA bleibt nur noch blau; sind aber benachbart!
:::


## Forward Checking findet nicht alle Inkonsistenzen!

::: center
![](images/forward-checking-progress.png){width="60%"}
[Quelle: "Artificial Intelligence: A Modern Approach (Figures from text)" [@Russell2020figs, Fig. 6.7, S. 53], Wiedergabe mit freundlicher Erlaubnis der Autoren]{.origin}
:::

\bigskip
\bigskip

*   Nach $\lbrace WA=red, Q=green \rbrace$ bleibt für $NT$ und $SA$ nur noch $blue$
*   $NT$ und $SA$ sind aber benachbart


## Übergang von Forward Checking zu Kantenkonsistenz

*   Forward Checking erzeugt Konsistenz für alle Constraints der \newline
    **gerade betrachteten (belegten) Variablen**.

\bigskip

*   Idee: Ausdehnen auf alle Kanten ... => Einschränken der Wertemengen


## Definition Kantenkonsistenz (Arc Consistency)

> Eine Kante von $X$ nach $Y$ ist "[konsistent]{.alert}", wenn für jeden Wert
> $x \in D_X$ und für alle Constraints zwischen $X$ und $Y$ jeweils ein Wert
> $y \in D_Y$ existiert, so dass der betrachtete Constraint durch $(x,y)$
> erfüllt ist.

\bigskip
Ein CSP ist kanten-konsistent, wenn für alle Kanten des CSP Konsistenz herrscht.


## Beispiel Kantenkonsistenz

$V = \lbrace a,b,c,d,e \rbrace$

$\mathrm{C} = \lbrace ((a,b), \ne), ((b,c), \ne), ((a,c), \ne), ((c,d), =), ((b,e), <) \rbrace$

$D_a=D_b=D_c=\lbrace 1,2,3 \rbrace$, $D_d=\lbrace 1,2 \rbrace$, $D_e=\lbrace 1,2,3 \rbrace$

[Tafelbeispiel Kantenkonsistenz]{.bsp}

\pause
\bigskip
Einschränkung der Ausgangswertemengen (kanten-konsistent)

$D_a=\lbrace 1,2,3 \rbrace$, $D_b=\lbrace 1,2 \rbrace$, $D_c=\lbrace 1,2 \rbrace$, $D_d=\lbrace 1,2 \rbrace$, $D_e=\lbrace 2,3 \rbrace$

::: cbox
=> Kantenkonsistenz ist nur **lokale** Konsistenz!
:::

\bigskip
\pause

*Anmerkung*: $((a,b), \ne)$ ist Kurzform für
$\left((a,b), \lbrace (x,y) \in D_a \times D_b | x \ne y \rbrace\right)$


## AC-3 Algorithmus: Herstellen von Kantenkonsistenz

```python
def AC-3(csp):
    queue = new Queue(csp.arcs)
    while not queue.isEmpty():
        (x,y) = queue.dequeue()
        if Revise(csp,x,y):
            if D_x.isEmpty(): return false
            for z in x.neighbors():
                queue.enqueue(z,x)
    return true
```

\bigskip

```python
def Revise(csp, x, y):
    revised = false
    for v in D_x:
        if not (any w in D_y and csp.C_xy(v,w)):
            D_x.remove(v)
            revised = true
    return revised
```

https://en.wikipedia.org/wiki/AC-3_algorithm

::: notes
*Anmerkung*: Die Queue in AC-3 ist wie eine (mathematische) Menge zu betrachten: Jedes Element
kann nur genau einmal in einer Menge enthalten sein. D.h. wenn man bei `queue.enqueue(z,x)` die
Rückkanten von den Nachbarn in die Queue aufnimmt, sorgt die Queue eigenständig dafür, dass es
keine doppelten Vorkommen einer Kante in der Queue gibt. (Falls die verwendete Queue in einer
Programmiersprache das nicht unterstützt, müsste man bei `queue.enqueue(z,x)` stets abfragen, ob
die Kante `(z,x)` bereits in der Queue ist und diese dann nicht erneut hinzufügen.)
AC-3 hat eine Laufzeit von $O(d^3n^2)$ ($n$ Knoten, maximal $d$ Elemente pro Domäne). Leider findet
auch AC-3 nicht alle Inkonsistenzen ... (NP-hartes Problem).

*Hinweis*: In gewisser Weise kann man Forward Checking als ersten Schritt bei der
Herstellung von Kantenkonsistenz interpretieren.
:::


## Einsatz des AC-3 Algorithmus

a)  Vorverarbeitung: Reduktion der Wertemengen *vor* BT-Suche
    *   Nach AC-3 evtl. bereits Lösung gefunden (oder ausgeschlossen)

\smallskip

b)  Propagation: Einbetten von AC-3 als Inferenzschritt in BT-Suche \newline
    (**MAC** -- Maintaining Arc Consistency)
    *   Nach jeder Zuweisung an $X_i$ Aufruf von AC-3-Variante:
        *   Initial nur Kanten von $X_i$ zu allen noch nicht zugewiesenen Nachbarvariablen
    *   Anschließend rekursiver Aufruf von BT-Suche


## Wrap-Up

*   Anwendung von Forward Checking und ...
*   ... die Erweiterung auf alle Kanten: AC-3, Kantenkonsistenz







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
