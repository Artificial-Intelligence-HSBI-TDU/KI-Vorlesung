---
author: Carsten Gips (HSBI)
title: "CSP: Lösen von diskreten CSP"
---

::: tldr
CSP's mit endlichen Domänen lassen sich mit einer Backtracking-Suche lösen. Dabei
wird schrittweise eine Variablen ausgewählt und dann ein Wert aus deren Wertebereich
für die Belegung ausgewählt. Danach ruft sich die Backtracking-Suche rekursiv auf.
Falls dabei keine Lösung gefunden werden kann, erfolgt Backtracking und die Belegung
wird schließlich rückgängig gemacht und durch die nächste Möglichkeit ersetzt.
:::

::: youtube
-   [VL BT-Suche für CSP](https://youtu.be/DIY7F2ycyqA)
:::

# Einfärben von Landkarten als CSP

![](images/map_graph.png){width="80%"}

[[Tafelbeispiel: Suche nach Lösung]{.ex}]{.slides}

# Endliche Domänen: Formulierung als Suchproblem

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

[Backtracking-Search: Eigener Code basierend auf einer Idee nach [@Russell2020, p. 176,
fig. 5.5]]{.credits nolist=true}

::: notes
Hierbei handelt es sich um eine etwas angepasste Tiefensuche: Starte mit leerem
Assignment und weise schrittweise Variablen passende Werte zu und mache notfalls
Backtracking.
:::

# BT-Suche für CSP am Beispiel Landkartenfärbeproblem

:::::: slides
::::: columns
::: {.column width="40%"}
![](images/bt_search.png)
:::

::: {.column width="60%"}
![](images/map_progress_empty.png)
:::
:::::
::::::

::: notes
![](images/map_progress.png){width="80%"}
:::

# Wrap-Up

-   Lösung von CSP mit endlichen Domänen mit Hilfe der Backtracking-Suche

::: readings
Lesen Sie in [@Russell2020] zur Vertiefung Abschnitt 5.3 nach.
:::

::: outcomes
-   k3: Ich kann CSP mit endlichen Domänen mit Hilfe der BT-Suche lösen
:::
