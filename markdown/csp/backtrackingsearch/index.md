---
type: lecture-cg
title: "Lösen von diskreten CSP"
author: "Carsten Gips (FH Bielefeld)"
weight: 2
readings:
  - key: "Russell2020"
    comment: "CSP, AC3: Abschnitte 6.1 und 6.2"
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
![](images/australia-csp.png)
[Quelle: "Artificial Intelligence: A Modern Approach (Figures from text)" [@Russell2020figs, Fig. 6.1, S. 50], Wiedergabe mit freundlicher Erlaubnis der Autoren]{.origin}
:::


## Endliche Domänen: Formulierung als Suchproblem

```python
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

::: notes
Start mit leerem Assignment, schrittweise Variablen Werte zuweisen, notfalls Backtracking
:::


## BT-Suche für CSP am Beispiel Landkartenfärbeproblem

::::::::: slides
:::::: columns
::: {.column width="40%"}
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
:::
::: {.column width="60%"}
![](images/backtrack-progress.png)
[Quelle: "Artificial Intelligence: A Modern Approach (Figures from text)" [@Russell2020figs, Fig. 6.6, S. 53], Wiedergabe mit freundlicher Erlaubnis der Autoren]{.origin}
:::
::::::
:::::::::

::::::::: notes
![](images/backtrack-progress.png)
[Quelle: "Artificial Intelligence: A Modern Approach (Figures from text)" [@Russell2020figs, Fig. 6.6, S. 53], Wiedergabe mit freundlicher Erlaubnis der Autoren]{.origin}
:::::::::


## Wrap-Up

*   Lösung von CSP mit endlichen Domänen mit Hilfe der BT-Suche







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
