---
type: lecture-cg
title: "Lösen von diskreten CSP"
author: "Carsten Gips (FH Bielefeld)"
weight: 2
readings:
  - key: "Russell2020"
    comment: "CSP, Backtracking: Abschnitt 5.3"
  - key: "Kumar1992"
  - key: "Bartak2001"
quizzes:
  - link: "TODO"
    name: "Selbsttest BT-Suche für CSP (Kahoot)"
assignments:
  - topic: sheet04
youtube:
  - id: TODO
fhmedia:
  - link: "TODO"
    name: "Direktlink FH-Medienportal: KI BT-Suche für CSP"
---


## Einfärben von Landkarten als CSP

::: center
![](images/map_graph.png){width="80%"}
:::

[Tafelbeispiel: Suche nach Lösung]{.bsp}


## Endliche Domänen: Formulierung als Suchproblem

``` python
def BT_Search(assignment, csp):
    if complete(assignment): return assignment

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

[Quelle: Eigener Code basierend auf einer Idee nach [@Russell2020, S. 176, Fig. 5.5]]{.origin}

::: notes
Hierbei handelt es sich um eine etwas angepasste Tiefensuche: Starte mit leerem
Assignment und weise schrittweise Variablen passende Werte zu und mache notfalls
Backtracking.
:::


## BT-Suche für CSP am Beispiel Landkartenfärbeproblem

::::::::: slides
:::::: columns
::: {.column width="40%"}
![](images/bt_search.png)
:::
::: {.column width="60%"}
![](images/map_progress_empty.png)
:::
::::::
:::::::::

::::::::: notes
![](images/map_progress.png){width="80%"}
:::::::::


## Wrap-Up

*   Lösung von CSP mit endlichen Domänen mit Hilfe der Backtracking-Suche







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
