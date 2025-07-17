---
title: "Heuristiken"
author: "Carsten Gips (HSBI)"
readings:
  - key: "Russell2020"
    comment: "CSP, Backtracking/Heuristiken: Abschnitt 5.3"
  - key: "Kumar1992"
  - key: "Bartak2001"
tldr: |
  CSP's mit endlichen Domänen lassen sich mit einer Backtracking-Suche lösen. Dabei
  gibt es einige Freiheitsgrade: Auswahl der nächsten Variable und Wahl des nächsten
  Werts. Hier können Heuristiken die Suche beschleunigen.

  Zur Wahl der als nächstes zu betrachtenden Variable kann die **Minimum Remaining
  Values (MRV)**-Heuristik eingesetzt werden: Wähle die Variable mit wenigsten freien
  Werten. Bei Gleichstand bei der MRV kann man mit der **Gradheuristik** die Variable
  mit den meisten Constraints zu offenen (noch nicht belegten) Variablen wählen.

  Bei der Wahl des Wertes kann die **Least Constraining Value (LCV)**-Heuristik genutzt
  werden: Wähle den Wert, der für die verbleibenden Variablen die wenigsten Werte ungültig
  macht.

  Während die MRV relativ leicht umzusetzen ist, muss man für die LCV alle Constraints zu
  den Nachbarn auswerten.
outcomes:
  - k3: "Verbesserung der BT-Suche mit Heuristiken: MRV, Gradheuristik, LCV"
quizzes:
  - link: "https://www.hsbi.de/elearning/goto.php?target=tst_1106573&client_id=FH-Bielefeld"
    name: "Selbsttest CSP, Heuristiken (ILIAS)"
assignments:
  - topic: sheet-csp
youtube:
  - link: "https://youtu.be/pgXf0oV8lhE"
    name: "VL CSP, Heuristiken"
fhmedia:
  - link: "https://www.hsbi.de/medienportal/m/66689545e201ad90f6f2007f472f3b430ec37ebaa5321315764ae687983bbcb049bc217a1b0852e2d5364eae1223153d567558533246bd58b0db5cc1fa3278c5"
    name: "VL CSP, Heuristiken"
challenges: |
    Sei $D=\lbrace 0, \ldots, 5 \rbrace$, und ein Constraintproblem definiert durch

    $$\langle
        \lbrace v_1, v_2, v_3, v_4 \rbrace,
        \lbrace D_{v_1} = D_{v_2} = D_{v_3} = D_{v_4} = D \rbrace,
        \lbrace c_1, c_2, c_3, c_4 \rbrace
    \rangle$$

    mit

    *   $c_1=\left((v_1,v_2), \lbrace (x,y) \in D^2 | x+y = 3 \rbrace\right)$,
    *   $c_2=\left((v_2,v_3), \lbrace (x,y) \in D^2 | x+y \le 3 \rbrace\right)$,
    *   $c_3=\left((v_1,v_3), \lbrace (x,y) \in D^2 | x \le y \rbrace\right)$ und
    *   $c_4=\left((v_3,v_4), \lbrace (x,y) \in D^2 | x \ne y \rbrace\right)$.

    1.  Zeichen Sie den Constraint-Graph.
    2.  Welche Variable würde bei der Anwendung von _MRV_ und _Gradheuristik_ im ersten Schritt bei der Suche mit der BT-Search ausgewählt?
    3.  Geben Sie eine Lösung für das Problem an.
---


## VARIABLES: Variablen-Sortierung, Welche Variable soll betrachtet werden?

![](images/bt_search_mrv.png){width="65%"}

\bigskip

::: notes
[**VARIABLES**]{.alert}: Welche Variable zuerst ausprobieren?
:::

**Minimum Remaining Values (MRV)**: (vgl. [@Russell2020, S. 177])

*   Wähle Variable mit wenigsten freien Werten  [(die am meisten eingeschränkte Variable)]{.notes}

    ::: notes
    => reduziert den Verzweigungsgrad
    :::

[[Tafelbeispiel]{.ex}]{.slides}

::: notes
Beispiel:
1.  Freie Auswahl, alle haben gleich viele freie Werte (jeweils 3) => wähle A
2.  B und C haben nur noch zwei freie Werte => wähle B (oder C)
3.  C hat nur noch einen Wert, D noch zwei, der Rest drei => wähle C
:::


## VARIABLES: Gleichstand bei MRV

![](images/bt_search_mrv.png){width="65%"}

\bigskip

::: notes
[**VARIABLES**]{.alert}: Welche Variable zuerst ausprobieren?
:::

**Gradheuristik**: Erweiterung von *MRV* bei *Gleichstand* (vgl. [@Russell2020, S. 177])

*   Wähle Variable mit meisten Constraints auf offene  [(noch nicht zugewiesene)]{.notes}  Variablen

    ::: notes
    => reduziert den Verzweigungsgrad in späteren Schritten
    :::

[[Tafelbeispiel]{.ex}]{.slides}

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

![](images/bt_search_lcv.png){width="65%"}

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

[[Tafelbeispiel]{.ex}]{.slides}

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
