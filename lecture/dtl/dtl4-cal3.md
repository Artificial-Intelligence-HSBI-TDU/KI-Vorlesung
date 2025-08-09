---
author: Carsten Gips (HSBI)
title: CAL3
---

::: tldr
CAL3 ist eine einfache Erweiterung von CAL2 für nicht-disjunkte (überlappende)
Klassen. Statt beim Baumaufbau bei einer Fehlklassifikation sofort zu verzweigen,
werden hier zunächst die im entsprechenden Pfad aufgelaufenen Klassensymbole
gezählt. Wenn ausreichend viele davon gesehen wurden (Schwelle $S_1$), wird eine
Entscheidung getroffen: Wenn eine Klasse in diesem temporären Blatt dominiert (ihre
Häufigkeit über einer Schwelle $S_2$ liegt), dann entscheidet man sich in diesem
Blatt fest für diese Klasse. Ansonsten (die Häufigkeit aller Klassen in dem Blatt
liegt unter $S_2$) nimmt man analog zu CAL2 den nächsten, auf diesem Pfad noch nicht
verwendeten Test hinzu.
:::

::: youtube
-   [VL CAL3](https://youtu.be/9Wj51XvuntM)
:::

# CAL3: Erweiterung von CAL2 für nicht-disjunkte Klassen

1)  Anfangsschritt: $\alpha^{(0)} = \ast$ (totales Unwissen)

2)  $n$-ter Lernschritt: Objekt $v$ mit Klasse $k$

    -   Rückweisung (Endknoten mit $\ast$): Ersetze $\ast$ durch Vereinigungsklasse
        $/k1/$

    -   Endknoten mit Vereinigungsklasse:

        -   Zähler für $k$ erhöhen, bzw.
        -   $k$ mit Anzahl $1$ in Vereinigungsklasse einfügen

    Falls nun die Summe aller Klassen am Endknoten größer/gleich $S_1$
    (Statistikschwelle):

    -   Für **genau eine** Klasse gilt: $P(k | \tilde{x}) \ge S_2$: `\newline`{=tex}
        =\> Abschluss: Ersetze Vereinigungsklasse durch $k$ (für immer!)

        \smallskip

    -   Für **alle** Klassen gilt: $P(k | \tilde{x}) < S_2$: `\newline`{=tex} =\>
        Differenzierung: Ersetze Vereinigungsklasse durch neuen Test:
        $\kappa \gets x_{t+1}(\ast, \ldots, \ast, /k1/, \ast, \ldots, \ast)$

        $x_{t+1}$: nächstes Attribut, auf dem aktuellen Pfad $\tilde{x}$ noch nicht
        verwendet `\newline`{=tex} Symbol $k$ mit Anzahl 1 an Position $i$ wenn
        $x_{t+1}(v) = i$

# Beispiel mit CAL3

| $x_1$ | $x_2$ | $k$ |
|:------|:------|:----|
| 0     | 0     | A   |
| 0     | 1     | B   |
| 0     | 1     | A   |
| 1     | 0     | B   |
| 1     | 1     | A   |

-   $S_1 = 4, S_2 = 0.7$

[[Tafelbeispiel CAL3]{.ex}]{.slides}

\bigskip
\pause

**Ergebnis**: $x_1(A,  x_2(B, A))$

\smallskip

Trainingsfehler: $1/5 = 0.2 < 1-S_2 = 1-0.7 = 0.3$

::: notes
**Hinweis**: Bei nicht überlappenden Klassen erzeugt CAL3 u.U. andere Bäume als CAL2
...
:::

# CAL3: Abbruchbedingungen und Parameter

-   **Parameter**:
    -   $S_1$: Statistikschwelle, problemabhängig wählen
    -   $S_2$: $0.5 < S_2 \le 1.0$
    -   Klassifikationsfehler kleiner als $1-S_2$
        -   kleiner Fehler =\> großer Baum
        -   großer Fehler =\> kleiner Baum

\smallskip

-   **Abbruch**:
    -   Alle Trainingsobjekte richtig klassifiziert `\newline`{=tex} =\> Kein Fehler
        in einem kompletten Durchlauf
    -   Alle Endknoten mit eindeutigen Klassensymbolen belegt
    -   Differenzierung nötig, aber alle Merkmale verbraucht
    -   Lernschrittzahl überschritten

# Wrap-Up

-   CAL3: Erweiterung von CAL2 für überlappende Klassen
    -   Parameter $S_1$ (Anzahl Objekte bis Entscheidung), $S_2$ (Dominanz?)
    -   Trainingsfehler wg. überlappender Klassen!

::: readings
-   @Unger1981: Der Vollständigkeit halber aufgeführt (Werk ist leider vergriffen
    und wird nicht mehr verlegt)
:::

::: outcomes
-   k3: Meta-Algorithmus CAL3 für überlappende Klassen
:::

::: quizzes
-   [Selbsttest CAL3
    (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106576&client_id=FH-Bielefeld)
:::

::: challenges
**Textklassifikation**

Betrachten Sie die folgenden Aussagen:

> -   Patient A hat weder Husten noch Fieber und ist gesund.
> -   Patient B hat Husten, aber kein Fieber und ist gesund.
> -   Patient C hat keinen Husten, aber Fieber. Er ist krank.
> -   Patient D hat Husten und kein Fieber und ist krank.
> -   Patient E hat Husten und Fieber. Er ist krank.

Aufgaben:

1.  Trainieren Sie auf diesem Datensatz einen Klassifikator mit CAL3
    ($S_1=4, S_2=0.6$).
2.  Ist Patient F krank? Er hat Husten, aber kein Fieber.
:::
