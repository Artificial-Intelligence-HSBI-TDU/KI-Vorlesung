---
type: lecture-cg
title: "Heuristiken"
author: "Carsten Gips (FH Bielefeld)"
weight: 3
readings:
  - key: "Russell2020"
    comment: "CSP, Backtracking/Heuristiken: Abschnitt 5.3"
  - key: "Kumar1992"
  - key: "Bartak2001"
quizzes:
  - link: "https://kahoot.it/challenge/08306596?challenge-id=8471c25d-77c6-4c83-b473-6edcacfcb770_1635412547692"
    name: "Selbsttest CSP, Heuristiken (Kahoot)"
assignments:
  - topic: sheet04
youtube:
  - id: pgXf0oV8lhE
fhmedia:
  - link: "https://www.fh-bielefeld.de/medienportal/m/66689545e201ad90f6f2007f472f3b430ec37ebaa5321315764ae687983bbcb049bc217a1b0852e2d5364eae1223153d567558533246bd58b0db5cc1fa3278c5"
    name: "Direktlink FH-Medienportal: KI CSP, Heuristiken"
---


## VARIABLES: Variablen-Sortierung, Welche Variable soll betrachtet werden?

::: center
![](images/bt_search_mrv.png){width="65%"}
:::

\bigskip

::: notes
[**VARIABLES**]{.alert}: Welche Variable zuerst ausprobieren?
:::

**Minimum Remaining Values (MRV)**: (vgl. [@Russell2020, S. 177])

*   Wähle Variable mit wenigsten freien Werten  [(die am meisten eingeschränkte Variable)]{.notes}

    ::: notes
    => reduziert den Verzweigungsgrad
    :::

[Tafelbeispiel]{.bsp}

::: notes
Beispiel:
1.  Freie Auswahl, alle haben gleich viele freie Werte (jeweils 3) => wähle A
2.  B und C haben nur noch zwei freie Werte => wähle B (oder C)
3.  C hat nur noch einen Wert, D noch zwei, der Rest drei => wähle C
:::


## VARIABLES: Gleichstand bei MRV

::: center
![](images/bt_search_mrv.png){width="65%"}
:::

\bigskip

::: notes
[**VARIABLES**]{.alert}: Welche Variable zuerst ausprobieren?
:::

**Gradheuristik**: Erweiterung von *MRV* bei *Gleichstand* (vgl. [@Russell2020, S. 177])

*   Wähle Variable mit meisten Constraints auf offene  [(noch nicht zugewiesene)]{.notes}  Variablen

    ::: notes
    => reduziert den Verzweigungsgrad in späteren Schritten
    :::

[Tafelbeispiel]{.bsp}

::: notes
Beispiel:
1.  MRV: Alle haben gleich viele freie Werte (jeweils 3) => Gradheuristik: B, C und D haben
    die meisten Verbindungen (Constraints) auf offene Variablen => wähle B (oder C oder D)
2.  MRV: A, C und D haben nur noch zwei freie Werte => Gradheuristik: C und D haben
    je zwei Constraints auf noch offene Variablen => wähle C (oder D)
3.  MRV: A und D haben beide nur noch einen Wert => Gradheuristik: D hat
    die meisten Verbindungen (Constraints) auf offene Variablen => wähle D
:::


## VALUES: Werte-Sortierung, Welchen Wert soll ich ausprobieren?

::: center
![](images/bt_search_lcv.png){width="65%"}
:::

\bigskip

::: notes
[**VALUES**]{.alert}: Welchen Wert zuerst ausprobieren?
:::

**Least Constraining Value (LCV)**: (vgl. [@Russell2020, S. 177])

*   Wähle Wert, der für verbleibende Variablen die wenigsten Werte
    ungültig macht

    ::: notes
    => verringert die Wahrscheinlichkeit für Backtracking
    :::

[Tafelbeispiel]{.bsp}

::: notes
Beispiel:
1.  Sei A gewählt: Alle Werte machen in den anderen Variablen einen Wert ungültig
    => freie Wahl des Wertes => wähle beispielsweise rot
2.  Sei B gewählt: Alle Werte machen in den anderen Variablen einen Wert ungültig
    => freie Wahl des Wertes => wähle beispielsweise grün
3.  Sei D gewählt: Verbleibende Werte rot und blau
    -   Wahl von rot würde für C einen Wert übrig lassen (blau)
    -   Wahl von blau würde für C **keinen** Wert übrig lassen
    => LCV: Wahl von rot!


**Hinweis**: Diese Heuristik ist in der Praxis sehr aufwändig zu berechnen! Man müsste für
jeden Wert die noch offenen Constraints anschauen und berechnen, wie viele Werte damit jeweils
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
:::
