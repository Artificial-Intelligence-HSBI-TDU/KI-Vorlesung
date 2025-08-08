---
author: Carsten Gips (HSBI)
title: Pruning
---

::: tldr
Pruning ist das Entfernen redundanter und irrelevanter Tests (Merkmale).

Irrelevante Merkmale spielen keine Rolle bei der Klassifikation, an jedem Ausgang eines irrelevanten Merkmals findet
sich exakt der selbe Baum. Diese Tests kann man einfach entfernen und durch einen ihrer Teilbäume ersetzen; dadurch
ändert sich nicht die Klassifikation des Baumes.

Bei redundanten Tests sind alle Ausgänge bis auf einen noch mit "Nichtwissen" ("\*") markiert. Hier kann man den Test
durch den einen bekannten Ausgang ersetzen, wodurch sich die Klassifikation ändert. Allerdings wird der
Klassifikationsfehler nicht größer, da man ja vorher nur für eine Ausprägung des redundanten Merkmals einen Baum hatte
und für die anderen jeweils mit "\*" antworten musste (d.h. hier stets einen Fehler gemacht hatte).

Über die Transformationsregel kann man einfach die Reihenfolge von Tests im Baum ändern.
:::

::: youtube
-   [VL Pruning](https://youtu.be/LKt9F2kGYdk)
:::

# Pruning: Bedingt irrelevante Attribute

**Baum**: $\alpha = x_1(x_2(A, B),  x_2(A, B),  x_2(A, B))$

\smallskip
\pause

$x_1$ ist bedingt irrelevant =\> Vereinfachung: $\alpha = x_2(A, B)$

\pause
\bigskip
\medskip

**Allgemein**:

-   Sei $\tilde{x}$ Weg zu Nichtendknoten $x_t$
-   Baum dort $\alpha/\tilde{x} = x_t(\alpha_1, \ldots, \alpha_{m_t})$
-   $x_t$ ist **bedingt irrelevant** unter der Bedingung $\tilde{x}$, wenn $\alpha_1 = \alpha_2 = \ldots = \alpha_{m_t}$
-   **Vereinfachung**: Ersetze in $\alpha/\tilde{x}$ den Test $x_t$ durch $\alpha_1$

::: notes
*Anmerkung*: Der durch das Entfernen von bedingt irrelevanten Attributen entstandene Baum hat **exakt** die selbe
Aussage (Klassifikation) wie der Baum vor dem Pruning.

**Anmerkung**: $x_1$ im obigen Beispiel ist sogar **global** irrelevant, da es sich hier um die Wurzel des Baumes
handelt. Der Weg $\tilde{x}$ ist in diesem Fall der leere Weg ...
:::

# Pruning: Bedingt redundante Attribute

**Baum**: $\alpha = x_1(\ast,  \ast,  x_2(A, B))$

\smallskip
\pause

$x_1$ ist bedingt redundant =\> Vereinfachung: $\alpha = x_2(A, B)$

\pause
\bigskip
\medskip

**Allgemein**:

-   Sei $\tilde{x}$ Weg zu Nichtendknoten $x_t$
-   Baum dort $\alpha/\tilde{x} = x_t(\ast, \ldots, \ast, \alpha_i, \ast, \ldots, \ast)$ `\quad `{=tex}(mit
    $\alpha_i \neq \ast$)
-   $x_t$ ist **bedingt redundant** unter der Bedingung $\tilde{x}$
-   **Vereinfachung**: Ersetze in $\alpha/\tilde{x}$ den Test $x_t$ durch $\alpha_i$

::: notes
*Anmerkung*: Der durch das Entfernen von bedingt redundanten Attributen entstandene Baum hat eine etwas andere
Klassifikation als der Baum vor dem Pruning. Wo vorher ein `*` ausgegeben wurde, wird nach dem Pruning u.U. ein
Klassensymbol ausgegeben. Der Klassifikationsfehler erhöht sich aber **nicht**, da hier ein `*` wie ein falsches
Klassensymbol zu werten ist.

**Anmerkung**: $x_1$ im obigen Beispiel ist sogar **global** redundant, da es sich hier um die Wurzel des Baumes
handelt. Der Weg $\tilde{x}$ ist in diesem Fall der leere Weg ...
:::

# Allgemeine Transformationsregel

$$    x_1(x_2(a, b),  x_2(c, d))  \Leftrightarrow  x_2(x_1(a, c),  x_1(b, d))$$

# Wrap-Up

-   Pruning: Entfernen bedingt redundanter und irrelevanter Tests
-   Transformationsregel zum Umbauen von Entscheidungsbäumen

::: readings
-   @Ertel2017: Entscheidungsbäume: Abschnitt 8.4
-   @Russell2020: Entscheidungsbäume: Abschnitt 19.3
:::

::: outcomes
-   k3: Pruning: Entfernen bedingt irrelevanter Tests
-   k3: Pruning: Entfernen bedingt redundanter Tests
-   k3: Umformen von Entscheidungsbäumen mit Transformationsregel
:::

::: quizzes
-   [Selbsttest Pruning (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106577&client_id=FH-Bielefeld)
:::
