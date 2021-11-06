---
type: lecture-cg
title: "ID3 und C4.5"
author: "Carsten Gips (FH Bielefeld)"
weight: 6
readings:
  - key: "Ertel2017"
    comment: "Entscheidungsbäume: Abschnitt 8.4"
  - key: "Russell2020"
    comment: "Entscheidungsbäume: Abschnitt 19.3"
  - key: "Mitchell2010"
    comment: "ID3: Kapitel 3"
assignments:
  - topic: sheet05
youtube:
  - id: Yo1cmeS6BK8
fhmedia:
  - link: "https://www.fh-bielefeld.de/medienportal/m/aa69406cfdf0ce8b2b614dd475926b56c8025239c5b4458ec7741c7733c6077fd192e4db6f58c8a3e39b7b895c2ddedf83327640326bfbedc2617c4f75bc59bd"
    name: "Direktlink FH-Medienportal: KI ID3 und C4.5"
---


## Wie Attribute wählen?

Erinnerung: CAL2/CAL3

*   Zyklische Iteration durch die Trainingsmenge
*   Ausschließlich aktuelles Objekt betrachtet
*   [Reihenfolge]{.alert} der "richtigen" Attributwahl bei Verzweigung unklar

=> Betrachte stattdessen die **komplette** Trainingsmenge!



## Erinnerung Entropie: Maß für die Unsicherheit

*   Entropie $H(S)$ der Trainingsmenge $S$: [relative]{.notes} Häufigkeit der Klassen zählen

*   Mittlere Entropie nach Betrachtung von Attribut $A$

    $$
        R(S, A) = \sum_{v \in \operatorname{Values}(A)} \frac{|S_v|}{|S|} H(S_v)
    $$

\bigskip

*   Informationsgewinn durch Betrachtung von Attribut $A$

    $$
    \begin{array}{rcl}
        \operatorname{Gain}(S, A) &=& H(S) - R(S, A)\\[5pt]
                                &=& H(S) - \sum_{v \in \operatorname{Values}(A)} \frac{|S_v|}{|S|} H(S_v)
    \end{array}
    $$

::: notes
$R(S,A)$ ist die Unsicherheit/nötige Bits nach Auswahl von Attribut A.
Je kleiner $R(S,A)$, um so kleiner die **verbleibende Unsicherheit** bzw.
um so kleiner die Anzahl der nötigen Bits zur Darstellung der
partitionierten Trainingsmenge **nach** Betrachtung von Attribut $A$ ...
:::

=> Je kleiner $R(S,A)$, um so größer der Informationsgewinn


## Informationsgewinn: Kriterium zur Auswahl von Attributen

1)  Informationsgewinn für alle Attribute berechnen
2)  Nehme Attribut mit größtem Informationsgewinn als nächsten Test

:::::: columns
::: {.column width="34%"}

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|-----|-------|-------|-------|-----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

:::
::: {.column width="62%"}

\vspace{8mm}

\small

$H(S) = 0.92 \operatorname{Bit}$

$$
\begin{array}{rcl}
\operatorname{Gain}(S, x_1) &=& 0.92 - 0.87 = 0.05 \operatorname{Bit}\\
\operatorname{Gain}(S, x_2) &=& 0.92 - 2/6  \cdot 0 - 4/6 \cdot 1\\
                            &=& 0.25 \operatorname{Bit}\\
\operatorname{Gain}(S, x_3) &=& 0.92 - 3/6 \cdot 0.92 - 2/6 \cdot 1 - 1/6 \cdot 0\\
                            &=& 0.13 \operatorname{Bit}
\end{array}
$$

\normalsize

:::
::::::

\bigskip

Informationsgewinn für $x_2$ am höchsten => wähle $x_2$ als nächsten Test


## Entscheidungsbaumlerner ID3 (Quinlan, 1986)

\bigskip

```python
def ID3(examples, attr, default):
    # Abbruchbedingungen
    if examples.isEmpty():  return default
    if examples.each(class == A):  return A  # all examples have same class
    if attr.isEmpty():  return examples.MajorityValue()

    # Baum mit neuem Test erweitern
    test = MaxInformationGain(examples, attr)
    tree = new DecisionTree(test)
    m = examples.MajorityValue()
    for v_i in test:
        ex_i = examples.select(test == v_i)
        st = ID3(ex_i, attr - test, m)
        tree.addBranch(label=v_i, subtree=st)
    return tree
```

::: notes
@Russell2020: Man erhält aus dem "Learn-Decision-Tree"-Algorithmus [@Russell2020, S. 678, Fig. 19.5]
den hier vorgestellten ID3-Algorithmus, wenn man die Funktion $\operatorname{Importance}(a, examples)$
als $\operatorname{InformationGain}(examples, attr)$ implementiert/nutzt.

**Hinweis**: Mit der Zeile `if examples.each(class == A):  return A` soll ausgedrückt werden, dass alle
ankommenden Trainingsbeispiele die selbe Klasse haben und dass diese dann als Ergebnis zurückgeliefert
wird. Das "`A`" steht im obigen Algorithmus nur symbolisch für die selbe Klasse! Es kann also auch ein
anderes Klassensymbol als "`A`" sein ...
:::

::: notes
### Beispiel ID3

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|-----|-------|-------|-------|-----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

*   $x2$ höchsten Information Gain
*   $x2=0$ => Beispiele 1,2 => A
*   $x2=1$ => Beispiele 3,4,5,6 => Information Gain berechnen,
    weiter teilen und verzweigen
:::

[Tafelbeispiel Anfang ID3]{.bsp}


## Beobachtung: $\operatorname{Gain}$ ist bei mehrwertigen Attributen höher

*   Faire Münze:
    *   Entropie = $H(\operatorname{Fair}) = -(0.5 \log_2 0.5 + 0.5 \log_2 0.5) = 1 \operatorname{Bit}$

\smallskip

*   4-seitiger Würfel:
    *   Entropie = $H(\operatorname{Würfel}) = -4\cdot(0.25 \log_2 0.25) = 2 \operatorname{Bit}$

\bigskip

=> $\operatorname{Gain}$ ist bei mehrwertigen Attributen höher

::: notes
Damit würden Attribute bei der Wahl bevorzugt, nur weil sie mehr Ausprägungen haben als andere.

*Anmerkung*: Im obigen Beispiel wurde einfach die Entropie für zwei "Attribute" mit unterschiedlich
vielen Ausprägungen betrachtet, das ist natürlich kein $\operatorname{Gain}(S, A)$. Aber es sollte
deutlich machen, dass Merkmale mit mehr Ausprägungen bei der Berechnung des Gain für eine Trainingsmenge
einfach wegen der größeren Anzahl an Ausprägungen rechnerisch bevorzugt würden.
:::


## C4.5 als Verbesserung zu ID3

Normierter Informationsgewinn: $\operatorname{Gain}(S, A) \cdot \operatorname{Normierung}(A)$

$$
    \operatorname{Normierung}(A) = \frac{1}{
        \sum_{v \in \operatorname{Values}(A)} p_v \log_2 \frac{1}{p_v}
    }
$$

::: notes
C4.5 kann zusätzlich u.a. auch noch mit kontinuierlichen Attributen umgehen, vgl.
[en.wikipedia.org/wiki/C4.5_algorithm](https://en.wikipedia.org/wiki/C4.5_algorithm).

In einem [Paper](http://www.cs.umd.edu/~samir/498/10Algorithms-08.pdf)
([DOI 10.1007/s10115-007-0114-2](https://doi.org/10.1007/s10115-007-0114-2)) wurde
der Algorithmus zu den "Top 10 algorithms in data mining" ausgewählt.

Ein anderer, relativ ähnlich arbeitender Entscheidungsbaumlerner ist der
[CART (Classification And Regression Tree)](https://en.wikipedia.org/wiki/Decision_tree_learning)-Algorithmus,
wobei der Begriff "CART" allerdings oft auch einfach allgemein für "Entscheidungsbaumlerner"
genutzt wird.
:::


## Beispiele zur Normierung bei C4.5

*   Faire Münze:
    *   Entropie = $H(\operatorname{Fair}) = -(0.5 \log_2 0.5 + 0.5 \log_2 0.5) = 1 \operatorname{Bit}$
    *   Normierung: $1/(0.5 \log_2 (1/0.5) + 0.5 \log_2 (1/0.5)) = 1/(0.5 \cdot 1 + 0.5 \cdot 1) = 1$
    *   Normierter Informationsgewinn: $\operatorname{Gain}(S, A) \cdot \operatorname{Normierung}(A) = 1 \operatorname{Bit} \cdot 1 = 1 \operatorname{Bit}$

\smallskip

*   4-seitiger Würfel:
    *   Entropie = $H(\operatorname{Würfel}) = -4\cdot(0.25 \log_2 0.25) = 2 \operatorname{Bit}$
    *   Normierung: $1/(4\cdot 0.25 \log_2 (1/0.25)) = 1/(4\cdot 0.25 \cdot 2) = 0.5$
    *   Normierter Informationsgewinn: $\operatorname{Gain}(S, A) \cdot \operatorname{Normierung}(A) = 2 \operatorname{Bit} \cdot 0.5 = 1 \operatorname{Bit}$

\bigskip

=> Normierung sorgt für fairen Vergleich der Attribute

::: notes
*Anmerkung*: Auch hier ist die Entropie natürlich kein $\operatorname{Gain}(S, A)$. Das Beispiel soll
nur übersichtlich deutlich machen, dass der "Vorteil" von Attributen mit mehr Ausprägungen durch die
Normierung in C4.5 aufgehoben wird.
:::


## Wrap-Up

*   Entscheidungsbaumlerner **ID3**
    *   Nutze *Information Gain* zur Auswahl des nächsten Attributs
    *   Teile die Trainingsmenge entsprechend auf ("nach unten hin")
*   Verbesserung durch Normierung des *Information Gain*: **C4.5**







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
