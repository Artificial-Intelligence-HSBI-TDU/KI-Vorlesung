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

[Backtracking-Search: Eigener Code basierend auf einer Idee nach [@Russell2021, p. 176,
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
Lesen Sie in [@Russell2021] bitte den Abschnitt 5.3 "Backtracking Search for CSPs".
:::

::: outcomes
-   k3: Ich kann CSP mit endlichen Domänen mit Hilfe der BT-Suche lösen
:::

::: challenges
Sei ein Constraintproblem definiert durch $V = \lbrace a, b, c, d, e \rbrace$,
$D_{a} = D_{b} = D_{c} = D_{e} = \lbrace 1,2,3 \rbrace, D_{d} = \lbrace 1,2 \rbrace$,
und $C = \lbrace c_1, c_2, c_3, c_4, c_5 \rbrace$

mit

-   $c_1=\left((a,b), \ne\right)$,
-   $c_2=\left((b,c), \ne\right)$,
-   $c_3=\left((a,c), \ne\right)$,
-   $c_4=\left((c,d), =\right)$, und
-   $c_5=\left((b,e), <\right)$.

1.  Zeichen Sie den Constraint-Graph.
2.  Zeigen Sie, wie der BT-Search-Algorithmus eine Lösung für das Problem findet.
:::
