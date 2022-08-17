---
archetype: lecture-cg
title: "Entropie"
author: "Carsten Gips (FH Bielefeld)"
weight: 5
readings:
  - key: "Ertel2017"
    comment: "Entscheidungsbäume: Abschnitt 8.4"
  - key: "Russell2020"
    comment: "Entscheidungsbäume: Abschnitt 19.3"
  - key: "Mitchell2010"
    comment: "ID3: Kapitel 3"
tldr: |
  Die Entropie kann als Maß für den Informationsgehalt einer Trainingsmenge betrachtet werden:
  Wieviele Ja/Nein-Entscheidungen sind nötig, um die Daten fehlerfrei zu repräsentieren?

  Nach der Wahl eines Attributs kann die verbleibende mittlere Entropie berechnet werden. Damit
  hat man ein Kriterium für die Auswahl von Attributen beim Aufbau von Entscheidungsbäumen:
  Nimm das Attribut, welches einen möglichst hohen Informationsgehalt hat. Oder andersherum:
  Wähle das Attribut, bei dem die verbleibende mittlere Entropie der Trainingsmenge nach der
  Wahl des Attributs am kleinsten ist.
outcomes:
  - k3: "Berechnung der Entropie und des Information Gain"
quizzes:
  - link: "https://www.fh-bielefeld.de/elearning/goto.php?target=tst_1106578&client_id=FH-Bielefeld"
    name: "Selbsttest Entropie (ILIAS)"
assignments:
  - topic: sheet05
youtube:
  - link: "https://youtu.be/4IZYA5EWO1k"
    name: "VL Entropie"
fhmedia:
  - link: "https://www.fh-bielefeld.de/medienportal/m/6c84f8e181911aa89818cac70de40087fcab1209f4e0264f77da811289a5420fd284bc89464822690ff7906a735c778bda490949bf69091a5420885cc5cdad69"
    name: "VL Entropie"
---


## Wie Attribute wählen?

::: notes
### Erinnerung: CAL2/CAL3

*   Zyklische Iteration durch die Trainingsmenge
*   Ausschließlich aktuelles Objekt betrachtet
*   [Reihenfolge]{.alert} der "richtigen" Attributwahl bei Verzweigung unklar

=> Betrachte stattdessen die komplette Trainingsmenge!
:::

### Relevanz => Informationsgehalt

*   Shannon/Weaver (1949): [**Entropie**]{.alert}
    *   Maß für die Unsicherheit einer Zufallsvariablen
    *   Anzahl der Bits zur Darstellung der Ergebnisse eines Zufallsexperiments

\bigskip

### Beispiele

*   Münze, die immer auf dem Rand landet: keine Unsicherheit, 0 Bit
*   Faire Münze: Kopf oder Zahl: Entropie 1 Bit
*   Fairer 4-seitiger Würfel: 4 mögliche Ausgänge: Entropie 2 Bit
*   Münze, die zu 99\% auf einer Seite landet: Entropie nahe Null

\smallskip
=> Anzahl der Ja/Nein-Fragen, um zur gleichen Information zu kommen


## Definition der Entropie $H(V)$ für Zufallsvariable $V$

\bigskip

*   Zufallsvariable $V$ => mögliche Werte $v_k$
*   Wahrscheinlichkeit für $v_k$ sei $p_k = P(v_k)$

::: cbox
$H(V) = -\sum_k p_k \log_2 p_k$
:::

\bigskip
\bigskip
\bigskip

:::::: columns
::: {.column width="40%"}

[Hinweis]{.alert}:
$\log_2 x = \frac{\log_{10} x}{\log_{10} 2} = \frac{\log x}{\log 2}$

:::
::: {.column width="50%"}

![](images/log_range.png)

:::
::::::

::: notes
*   Nur eine Klasse: $\log_2 1 = 0$ => $H(V) = 0$ Bit
*   Zwei Klassen, gleichwahrscheinlich: $\log_2 0.5 = -1$ => $H(V) = 1$ Bit
:::


## Beispiele Entropie: faire Münze

::: cbox
Entropie: $H(V) = -\sum_k p_k \log_2 p_k$
:::

\bigskip
\bigskip

:::::: columns
::: {.column width="75%"}

*   $v_1 = \operatorname{Kopf},  v_2 = \operatorname{Zahl}$
*   $p_1 = 0.5,  p_2 = 0.5$
*   $H(\operatorname{Fair}) = -(0.5 \log_2 0.5 + 0.5 \log_2 0.5) = 1$ Bit

:::
::: {.column width="25%"}

$\log_2 0.5 = -1$

:::
::::::


## Beispiele Entropie: unfaire Münze

::: cbox
Entropie: $H(V) = -\sum_k p_k \log_2 p_k$
:::

\bigskip
\bigskip

:::::: columns
::: {.column width="75%"}

\pause

*   $v_1 = \operatorname{Kopf},  v_2 = \operatorname{Zahl}$
*   $p_1 = 0.99,  p_2 = 0.01$
*   $H(\operatorname{UnFair}) = -(0.99 \log_2 0.99 + 0.01 \log_2 0.01)$

    $H(\operatorname{UnFair}) \approx 0.08$ Bit

:::
::: {.column width="25%"}

$\log_2 0.01 \approx -6.64$

$\log_2 0.99 \approx -0,014$

:::
::::::


## Beispiele Entropie: 4-seitiger Würfel

::: cbox
Entropie: $H(V) = -\sum_k p_k \log_2 p_k$
:::

\bigskip
\bigskip

:::::: columns
::: {.column width="75%"}

\pause

*   $v_1 = 1,  v_2 = 2,   v_3 = 3,   v_4 = 4$
*   $p_1 = p_2 = p_3 = p_4 = 0.25$
*   $H(\operatorname{Wuerfel}) = -4\cdot(0.25 \log_2 0.25) = 2$ Bit

:::
::: {.column width="25%"}

$\log_2 0.25 = -2$

:::
::::::


## Entropie der Trainingsmenge: Häufigkeit der Klassen zählen

:::::: columns
::: {.column width="35%"}

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|:----|:------|:------|:------|:----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

:::
::: {.column width="55%"}

\vspace{8mm}

*   Anzahl Klasse $A$: 4
*   Anzahl Klasse $B$: 2
*   Gesamtzahl Beispiele: 6

Wahrscheinlichkeit für $A$: $p_A = 4/6 = 0.667$

Wahrscheinlichkeit für $B$: $p_B = 2/6 = 0.333$

:::
::::::

\bigskip
\pause

$$
\begin{array}{rcl}
    H(S) &=& -\sum_k p_k \log_2 p_k\\
         &=& -(4/6 \cdot \log_2 4/6 + 2/6 \cdot \log_2 2/6)\\
         &=& -(-0.39 -0.53) = 0.92 \operatorname{Bit}
\end{array}
$$


## Mittlere Entropie nach Betrachtung von Attribut $A$

\large

$$
    R(S, A) = \sum_{v \in \operatorname{Values}(A)} \frac{|S_v|}{|S|} H(S_v)
$$

\normalsize

::: notes
*   Auswahl von Attribut $A$ partitioniert die Trainingsmenge: \newline
    Je Ausprägung $v$ von $A$ erhält man eine Submenge $S_v$

*   $R(S, A)$ berechnet die mittlere Entropie der Trainingsmenge, nachdem
    Attribut $A$ ausgewählt wurde: Unsicherheit/nötige Bits nach Auswahl von
    Attribut $A$
:::


## Entropie der Trainingsmenge nach Attributwahl

:::::: columns
::: {.column width="40%"}

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|:----|:------|:------|:------|:----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

:::
::: {.column width="50%"}

\vspace{8mm}

*   Sei Attribut $x_1$ ausgewählt
*   $x_1$ partitioniert die Trainingsmenge
    *   $x_1=0$ liefert $S_0 = \lbrace 1,3,5,6 \rbrace$
    *   $x_1=1$ liefert $S_1 = \lbrace 2,4 \rbrace$
    *   Häufigkeit für $x_1=0$: $4/6$
    *   Häufigkeit für $x_1=1$: $2/6$
    *   Gesamtzahl Beispiele: 6

:::
::::::

\bigskip
\pause

$$
\begin{array}{rcl}
    R(S, A) &=& \sum_{v \in \operatorname{Values}(A)} \frac{|S_v|}{|S|} H(S_v)\\
         &=& 4/6 \cdot H(\lbrace 1,3,5,6 \rbrace) + 2/6 \cdot H(\lbrace 2,4 \rbrace)\\
         &=& 4/6\cdot(-3/4 \cdot \log_2 3/4 - 1/4 \cdot \log_2 1/4) +\\
         && 2/6\cdot(-1/2 \cdot \log_2 1/2 - 1/2 \cdot \log_2 1/2)\\
         &=& 0.54 + 0.33 = 0.87 \operatorname{Bit}
\end{array}
$$


## Wrap-Up

*   Begriff und Berechnung der Entropie: Maß für die Unsicherheit
*   Begriff und Berechnung des Informationsgewinns
    *   Entropie für eine Trainingsmenge
    *   Mittlere Entropie nach Wahl eines Attributs







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
