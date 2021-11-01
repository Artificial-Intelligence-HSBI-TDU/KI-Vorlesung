---
type: lecture-cg
title: "CAL3"
author: "Carsten Gips (FH Bielefeld)"
weight: 4
readings:
  - key: "@Unger1981"
    comment: "Der Vollständigkeit halber aufgeführt (Werk ist leider vergriffen und wird nicht mehr verlegt)"
quizzes:
  - link: TODO
    name: "TODO"
assignments:
  - topic: sheet05
youtube:
  - id: TODO
fhmedia:
  - link: "TODO"
    name: "TODO"
---


## CAL3: Erweiterung von CAL2 für nicht-disjunkte Klassen

1)  Anfangsschritt: $\alpha^{(0)} = \ast$ (totales Unwissen)

2)  $n$-ter Lernschritt: Objekt $v$ mit Klasse $k$
    *   Rückweisung (Endknoten mit $\ast$):
        Ersetze $\ast$ durch Vereinigungsklasse $/k1/$

    *   Endknoten mit Vereinigungsklasse:
        *   Zähler für $k$ erhöhen, bzw.
        *   $k$ mit Anzahl $1$ in Vereinigungsklasse einfügen

    *   Falls Summe aller Klassen am Endknoten größer/gleich $S_1$ (Statistikschwelle):
        *   Für **genau eine** Klasse gilt: $P(k | \tilde{x}) \ge S_2$: \newline
            => Abschluss: Ersetze Vereinigungsklasse durch $k$ (für immer!)

            \smallskip

        *   Für **alle** Klassen gilt: $P(k | \tilde{x}) < S_2$: \newline
            => Differenzierung: Ersetze Vereinigungsklasse durch neuen
            Test: $\kappa \gets x_{t+1}(\ast, \ldots, \ast, /k1/, \ast, \ldots, \ast)$

            $x_{t+1}$: nächstes Attribut, auf dem aktuellen Pfad $\tilde{x}$
            noch nicht verwendet \newline
            Symbol $k$ mit Anzahl 1 an Position $i$ wenn $x_{t+1}(v) = i$


## CAL3: Abbruchbedingungen und Parameter

*   **Parameter**:
    *   $S_1$: Statistikschwelle, problemabhängig wählen

    *   $S_2$: $0.5 < S_2 \le 1.0$

    *   Klassifikationsfehler kleiner als $1-S_2$
        *   kleiner Fehler => großer Baum
        *   großer Fehler => kleiner Baum

\smallskip

*   **Abbruch**:
    *   Alle Trainingsobjekte richtig klassifiziert \newline
        => Kein Fehler in einem kompletten Durchlauf

    *   Alle Endknoten mit eindeutigen Klassensymbolen belegt

    *   Differenzierung nötig, aber alle Merkmale verbraucht

    *   Lernschrittzahl überschritten


## Beispiel mit CAL3

| $x_1$ | $x_2$ | $k$ |
|:------|:------|:----|
| 0     | 0     | A   |
| 0     | 1     | B   |
| 0     | 1     | A   |
| 1     | 0     | B   |
| 1     | 1     | A   |

*   $S_1 = 4, S_2 = 0.7$

[Tafelbeispiel CAL3]{.bsp}

\bigskip
\pause

**Ergebnis**: $x_1(A,  x_2(B, A))$

\smallskip
Trainingsfehler: $1/5 = 0.2 < 1-S_2 = 1-0.7 = 0.3$

::: notes
**Hinweis**: Bei nichtüberlappenden Klassen erzeugt CAL3 u.U. andere Bäume als CAL2 ...
:::


## Wrap-Up

*   CAL3: Erweiterung von CAL2 für überlappende Klassen
    *   Parameter $S_1$ (Anzahl Objekte bis Entscheidung), $S_2$ (Dominanz?)
    *   Trainingsfehler wg. überlappender Klassen!







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
