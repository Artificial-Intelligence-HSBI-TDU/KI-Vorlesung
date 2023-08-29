---
archetype: lecture-cg
title: "Pruning"
author: "Carsten Gips (HSBI)"
readings:
  - key: "Ertel2017"
    comment: "Entscheidungsbäume: Abschnitt 8.4"
  - key: "Russell2020"
    comment: "Entscheidungsbäume: Abschnitt 19.3"
tldr: |
  Pruning ist das Entfernen redundanter und irrelevanter Tests (Merkmale).

  Irrelevante Merkmale spielen keine Rolle bei der Klassifikation, an jedem Ausgang
  eines irrelevanten Merkmals findet sich exakt der selbe Baum. Diese Tests kann man
  einfach entfernen und durch einen ihrer Teilbäume ersetzen; dadurch ändert sich
  nicht die Klassifikation des Baumes.

  Bei redundanten Tests sind alle Ausgänge bis auf einen noch mit "Nichtwissen" ("\*")
  markiert. Hier kann man den Test durch den einen bekannten Ausgang ersetzen, wodurch
  sich die Klassifikation ändert. Allerdings wird der Klassifikationsfehler nicht größer,
  da man ja vorher nur für eine Ausprägung des redundanten Merkmals einen Baum hatte und
  für die anderen jeweils mit "\*" antworten musste (d.h. hier stets einen Fehler gemacht
  hatte).

  Über die Transformationsregel kann man einfach die Reihenfolge von Tests im Baum ändern.
outcomes:
  - k3: "Pruning: Entfernen bedingt irrelevanter Tests"
  - k3: "Pruning: Entfernen bedingt redundanter Tests"
  - k3: "Umformen von Entscheidungsbäumen mit Transformationsregel"
quizzes:
  - link: "https://www.hsbi.de/elearning/goto.php?target=tst_1106577&client_id=FH-Bielefeld"
    name: "Selbsttest Pruning (ILIAS)"
assignments:
  - topic: sheet04
youtube:
  - link: "https://youtu.be/LKt9F2kGYdk"
    name: "VL Pruning"
fhmedia:
  - link: "https://www.hsbi.de/medienportal/m/badf517191aa92377bf6ca9e63f90e8083d64de43f85b230b336cbf2b56e805d45063cf0974a6292ee39cf010aef11e87d3cf7ff9c9bd7e7c0a64f61128504e2"
    name: "VL Pruning"
---


## Pruning: Bedingt irrelevante Attribute

**Baum**: $\alpha = x_1(x_2(A, B),  x_2(A, B),  x_2(A, B))$

\smallskip
\pause
$x_1$ ist [bedingt irrelevant]{.alert}
=> Vereinfachung: $\alpha = x_2(A, B)$

\pause
\bigskip
\medskip

**Allgemein**:

*   Sei $\tilde{x}$ Weg zu Nichtendknoten $x_t$
*   Baum dort $\alpha/\tilde{x} = x_t(\alpha_1, \ldots, \alpha_{m_t})$
*   $x_t$ ist [**bedingt irrelevant**]{.alert} unter der Bedingung
    $\tilde{x}$, wenn $\alpha_1 = \alpha_2 = \ldots = \alpha_{m_t}$
*   **Vereinfachung**: Ersetze in $\alpha/\tilde{x}$ den Test $x_t$ durch $\alpha_1$

::: notes
*Anmerkung*:
Der durch das Entfernen von bedingt irrelevanten Attributen entstandene Baum
hat **exakt** die selbe Aussage (Klassifikation) wie der Baum vor dem Pruning.

**Anmerkung**:
$x_1$ im obigen Beispiel ist sogar [**global** irrelevant]{.alert}, da es sich hier
um die Wurzel des Baumes handelt. Der Weg $\tilde{x}$ ist in diesem Fall der leere
Weg ...
:::


## Pruning: Bedingt redundante Attribute

**Baum**: $\alpha = x_1(\ast,  \ast,  x_2(A, B))$

\smallskip
\pause
$x_1$ ist [bedingt redundant]{.alert}
=> Vereinfachung: $\alpha = x_2(A, B)$

\pause
\bigskip
\medskip

**Allgemein**:

*   Sei $\tilde{x}$ Weg zu Nichtendknoten $x_t$
*   Baum dort $\alpha/\tilde{x} = x_t(\ast, \ldots, \ast, \alpha_i, \ast, \ldots, \ast)$ \quad (mit $\alpha_i \neq \ast$)
*   $x_t$ ist [**bedingt redundant**]{.alert} unter der Bedingung $\tilde{x}$
*   **Vereinfachung**: Ersetze in $\alpha/\tilde{x}$ den Test $x_t$ durch $\alpha_i$

::: notes
*Anmerkung*:
Der durch das Entfernen von bedingt redundanten Attributen entstandene Baum
hat eine etwas andere Klassifikation als der Baum vor dem Pruning. Wo vorher
ein `*` ausgegeben wurde, wird nach dem Pruning u.U. ein Klassensymbol
ausgegeben. Der Klassifikationsfehler erhöht sich aber **nicht**, da hier ein
`*` wie ein falsches Klassensymbol zu werten ist.

**Anmerkung**:
$x_1$ im obigen Beispiel ist sogar [**global** redundant]{.alert}, da es sich
hier um die Wurzel des Baumes handelt. Der Weg $\tilde{x}$ ist in diesem Fall
der leere Weg ...
:::


## Allgemeine Transformationsregel

$$
    x_1(x_2(a, b),  x_2(c, d))  \Leftrightarrow  x_2(x_1(a, c),  x_1(b, d))
$$


## Wrap-Up

*   Pruning: Entfernen bedingt redundanter und irrelevanter Tests
*   Transformationsregel zum Umbauen von Entscheidungsbäumen






<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
