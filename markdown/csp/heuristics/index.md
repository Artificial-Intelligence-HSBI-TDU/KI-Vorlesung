---
type: lecture-cg
title: "Heuristiken"
author: "Carsten Gips (FH Bielefeld)"
weight: 3
readings:
  - key: "Russell2020"
    comment: "CSP, Backtracking: Abschnitt 5.3"
  - key: "Kumar1992"
  - key: "Bartak2001"
quizzes:
  - link: "TODO"
    name: "Selbsttest CSP, Heuristiken (Kahoot)"
assignments:
  - topic: sheet04
youtube:
  - id: TODO
fhmedia:
  - link: "TODO"
    name: "Direktlink FH-Medienportal: KI CSP, Heuristiken"
---


## SELECT-UNASSIGNED-VARIABLE: Variablen-Sortierung

::: slides
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

\bigskip

::: notes
[**Select-Unassigned-Variable**]{.alert}: Welche Variable zuerst ausprobieren?
:::

**Minimum Remaining Values (MRV)**:

*   Wähle Variable mit wenigsten freien Werten  [(die am meisten eingeschränkte Variable)]{.notes}

    ::: notes
    => reduziert den Verzweigungsgrad
    :::

[Tafelbeispiel]{.bsp}

::: notes
1.  Freie Auswahl, alle haben gleich viele freie Werte (jeweils 3) => wähle WA
2.  NT und SA haben nur noch zwei freie Werte => wähle NT (oder SA)
3.  SA hat nur noch einen Wert, Q noch zwei, der Rest drei => wähle SA
:::


## SELECT-UNASSIGNED-VARIABLE: Gleichstand bei MRV

::: slides
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

\bigskip

::: notes
[**Select-Unassigned-Variable**]{.alert}: Welche Variable zuerst ausprobieren?
:::

**Gradheuristik**: Erweiterung von *MRV* bei Gleichstand

*   Wähle Variable mit meisten Constraints auf offene  [(noch nicht zugewiesene)]{.notes}  Variablen

    ::: notes
    => reduziert den Verzweigungsgrad in späteren Schritten
    :::

[Tafelbeispiel]{.bsp}

::: notes
1.  MRV: Alle haben gleich viele freie Werte (jeweils 3) => Gradheuristik: SA hat
    die meisten Verbindungen (Constraints) auf offene Variablen => wähle SA
2.  MRV: Alle haben nur noch zwei freie Werte => Gradheuristik: NT, Q und NSW haben
    je zwei Constraints auf noch offene Variablen => wähle NT (oder Q oder NSW)
3.  MRV: WA und Q haben beide nur noch einen Wert => Gradheuristik: Q hat
    die meisten Verbindungen (Constraints) auf offene Variablen => wähle Q
:::


## ORDER-DOMAIN-VALUES: Werte-Sortierung

::: slides
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

\bigskip

::: notes
[**Order-Domain-Values**]{.alert}: Welchen Wert zuerst ausprobieren?
:::

**Least Constraining Value (LCV)**

*   Wähle Wert, der für verbleibende Variablen die wenigsten Werte
    ungültig macht

    ::: notes
    => verringert die Wahrscheinlichkeit für Backtracking
    :::

[Tafelbeispiel]{.bsp}

::: notes
1.  Sei WA gewählt: Alle Werte machen in den anderen Variablen einen Wert ungültig
    => freie Wahl des Wertes => wähle beispielsweise rot
2.  Sei NT gewählt: Alle Werte machen in den anderen Variablen einen Wert ungültig
    => freie Wahl des Wertes => wähle beispielsweise grün
3.  Sei Q gewählt: Verbleibende Werte rot und blau
    -   Wahl von rot würde für SA einen Wert übrig lassen (blau)
    -   Wahl von blau würde für SA **keinen** Wert übrig lassen
    => LCV: Wahl von rot!


**Hinweis**: Diese Heuristik ist in der Praxis sehr aufwändig zu berechnen! Man müsste für
jeden Wert die noch offenen Constraints anschauen und berechnen, wieviele Werte damit jeweils
ungültig gemacht werden. Die Idee ist aber dennoch interessant, und möglicherweise kann man
sie für ein reales Problem so adaptieren, dass bei der Umsetzung nur wenig zusätzlicher
Aufwand entsteht.
:::


## Wrap-Up

*   Verbesserung der BT-Suche mit Heuristiken: MRV, Gradheuristik, LCV







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
