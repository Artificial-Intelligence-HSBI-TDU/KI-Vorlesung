---
title: "Lösen von diskreten CSP"
author: "Carsten Gips (HSBI)"
readings:
  - key: "Russell2020"
    comment: "CSP, Backtracking: Abschnitt 5.3"
  - key: "Kumar1992"
  - key: "Bartak2001"
tldr: |
  CSP's mit endlichen Domänen lassen sich mit einer Backtracking-Suche lösen. Dabei wird
  schrittweise eine Variablen ausgewählt und dann ein Wert aus deren Wertebereich für
  die Belegung ausgewählt. Danach ruft sich die Backtracking-Suche rekursiv auf. Falls
  dabei keine Lösung gefunden werden kann, erfolgt Backtracking und die Belegung wird
  schließlich rückgängig gemacht und durch die nächste Möglichkeit ersetzt.
outcomes:
  - k3: "Lösung von CSP mit endlichen Domänen mit Hilfe der BT-Suche"
assignments:
  - topic: sheet-csp
youtube:
  - link: "https://youtu.be/DIY7F2ycyqA"
    name: "VL BT-Suche für CSP"
fhmedia:
  - link: "https://www.hsbi.de/medienportal/m/34f066985dfe7258c153bce523c3f876b94959c8a31bbf316d7c57d4253d45f9fbde7045b99b1ec25d9e459eae84124405d76cc5cd3a32bd6f7c14206651816e"
    name: "VL BT-Suche für CSP"
---


## Einfärben von Landkarten als CSP

![](images/map_graph.png){width="80%"}

[[Tafelbeispiel: Suche nach Lösung]{.bsp}]{.slides}


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

[Quelle: Eigener Code basierend auf einer Idee nach [@Russell2020, p. 176, fig. 5.5]]{.origin}

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
