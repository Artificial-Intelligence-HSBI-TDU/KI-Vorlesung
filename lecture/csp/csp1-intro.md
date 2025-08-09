---
author: Carsten Gips (HSBI)
title: Einführung Constraints
---

::: tldr
Ein Constraintproblem (CSP) besteht aus Variablen, die über Einschränkungen
("Constraints") verbunden sind. Jeder Variable wird eine Domäne (Wertebereich)
zugeordnet.

Die Constraints können sich auf eine einzelne Variable beziehen ("unäre
Constraints"), auf zwei Variablen ("binäre Constraints") oder auf mehr Variablen.
Ein CSP kann als Graph dargestellt werden.

Eine "Belegung" ist eine Zuweisung von Werten an Variablen aus deren Domäne. Eine
"konsistente" Belegung erfüllt die Constraints, eine "vollständige" Belegung belegt
alle Variablen.

Eine Lösung für ein CSP ist eine vollständige und konsistente Belegung.
:::

::: youtube
-   [VL Intro CSP](https://youtu.be/eFyo4Xh59ns)
:::

# Motivation: Einfärben von Landkarten

![](images/map.png){width="50%"}

::: notes
Die Skizze soll eine Landkarte mit verschiedenen Ländern darstellen. Die Aufgabe
lautet: Färbe jedes Land mit einer Farbe ein, um die Übersichtlichkeit zu erhöhen.
Verwende dabei so wenig wie möglich unterschiedliche Farben. Aneinander grenzende
Länder müssen unterschiedliche Farben bekommen (=\> *Constraint*).
:::

# Einfärben von Landkarten: Formalisierung

::: slides
![](images/map_numbered.png){width="30%"}
:::

\bigskip
\bigskip

-   **Variablen**: A, B, C, D, E, F
-   **Werte**: $\lbrace red, green, blue \rbrace$
-   **Constraints**: Benachbarte Regionen müssen unterschiedliche Farben haben

\smallskip

-   **Mögliche Lösung**: Zuweisung an Variablen ("Belegung")
    $\lbrace \operatorname{A} = red, \operatorname{B} = blue, \operatorname{C} = green,
    \operatorname{D} = red, \operatorname{E} = blue, \operatorname{F} = blue \rbrace$

# Definition: Constraint Satisfaction Problem (CSP)

-   Ein CSP $\langle V, D, C \rangle$ besteht aus:
    -   Menge von **Variablen** $V = \lbrace V_1, V_2, \ldots, V_n \rbrace$
    -   Je $V_i$ nicht leere **Domäne**
        $D_i = \lbrace d_{i,1}, d_{i,2}, \ldots, d_{i,m_i} \rbrace$
    -   Menge von **Constraints** $C = \lbrace C_1, C_2, \ldots, C_p \rbrace$
        `\newline`{=tex} (Randbedingungen, Abhängigkeiten zwischen Variablen)

\smallskip

-   Zuweisung/Belegung (*Assignment*) $\alpha$:
    -   Zuweisung von Werten an (einige/alle) Variablen:
        $\alpha = \lbrace X=a, Y=b, \ldots \rbrace$ `\newline`{=tex} (aus den
        jeweiligen Wertebereichen)
    -   **Konsistente Belegung**: Randbedingungen sind nicht verletzt
    -   **Vollständige Belegung**: Alle Variablen sind belegt

\smallskip

-   **Lösung** eines CSP: Vollständige und konsistente Belegung

# Constraint-Graph

![](images/map_graph.png){width="80%"}

::: notes
Ein CSP kann man auch als Constraint-Graph darstellen. Die Variablen werden zu
Knoten im Graph, die Constraints zu Kanten zwischen den Knoten. Dadurch kann man die
aus dem Problemlösen bekannten Algorithmen anwenden ...
:::

# Constraints -- Arität

::: notes
Die *Arität* betrifft hier die "Stelligkeit": Wie viele Variablen stehen in einem
Constraint miteinander in Beziehung? (Also wie viele Parameter hat ein Constraint?)
:::

-   **unär**: betrifft einzelne Variablen `\newline`{=tex} Beispiel:
    $\operatorname{A} \neq red$

\smallskip

-   **binär**: betrifft Paare von Variablen `\newline`{=tex} Beispiel:
    $\operatorname{A} \neq \operatorname{B}$

\smallskip

-   **höhere Ordnung**: betrifft 3 oder mehr Variablen

\bigskip

-   **Präferenzen**: "soft constraints" `\newline`{=tex} Beispiel: "rot ist besser
    als grün"

    Abbildung über Gewichtung =\> Constraint-Optimierungsproblem (COP)

# Constraints -- Wertebereiche

-   **Endliche Domänen**: $d$ Werte =\> $O(d^n)$ mögliche Zuweisungen
    `\newline`{=tex} (exponentiell in der Zahl der Variablen)

\smallskip

-   **Unendliche Domänen**: reelle Zahlen, natürliche Zahlen `\newline`{=tex} =\>
    Keine Auflistung der erlaubten Wertekombinationen mehr möglich `\newline`{=tex}
    =\> Übergang zu Gleichungen/Ungleichungen: $job_1+5<job_2$
    -   lineare Constraints
    -   nichtlineare Constraints

\bigskip

**Historische Unterscheidung**:

-   **Constraint Satisfaction**: endliche Domänen, kombinatorische Methoden
-   **Constraint Solving**: unendliche Domänen

# CSP sind überall ...

-   Stundenpläne (Klassen, Räume, Zeiten)
-   Konfiguration (Computer, Autos, ...)
-   Fahrpläne (Zug, Flug, ...)
-   Planung von komplexen Projekten
-   Sudoku :-)
-   ...

# Wrap-Up

-   Definitionen und Begriffe:
    -   Variable, (un-) endliche Domänen, Wertemenge
    -   Constraint, Arität, CSP
    -   Zuweisung, Lösung, ...

::: readings
-   @Russell2020: CSP: Abschnitt 5.1
-   @Kumar1992
-   @Bartak2001
:::

::: outcomes
-   k1: Definitionen: Variable, Domäne, Constraint, Arität, CSP, Zuweisung
-   k3: Formulierung von CSP
:::

::: quizzes
-   [Selbsttest Intro CSP
    (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106572&client_id=FH-Bielefeld)
:::
