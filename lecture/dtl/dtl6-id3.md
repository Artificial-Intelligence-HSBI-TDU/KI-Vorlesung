---
author: Carsten Gips (HSBI)
title: "DTL: ID3 und C4.5"
---

::: tldr
Der Entscheidungsbaum-Lernalgorithmus **ID3** nutzt den Informationsgehalt für die
Entscheidung bei der Attributwahl: Nimm das Attribut, welches einen möglichst hohen
Informationsgehalt hat. Oder andersherum: Wähle das Attribut, bei dem die
verbleibende mittlere Entropie der Trainingsmenge nach der Wahl des Attributs am
kleinsten ist. Oder noch anders formuliert: Nimm das Attribut, bei dem die Differenz
zwischen der Entropie der Trainingsmenge (vor der Wahl des Attributs) und der
verbleibenden mittleren Entropie (nach der Wahl des Attributs) am größten ist (die
Differenz nennt man auch "*Information Gain*"). Die Trainingsmenge wird entsprechend
der Ausprägung in Bezug auf das eben gewählte Merkmal aufgeteilt und an die Kinder
des Knotens weiter gereicht; dort wird der Baum rekursiv weiter aufgebaut.

Durch eine Normierung des *Information Gain* kann eine Verbesserung in Bezug auf
mehrwertige Attribute erreicht werden, dies führt zum Algorithmus **C4.5**.
:::

::: youtube
-   [VL ID3 und C4.5](https://youtu.be/Yo1cmeS6BK8)
:::

# Wie Attribute wählen?

Erinnerung: CAL2/CAL3

-   Zyklische Iteration durch die Trainingsmenge
-   Ausschließlich aktuelles Objekt betrachtet
-   Reihenfolge der "richtigen" Attributwahl bei Verzweigung unklar

=\> Betrachte stattdessen die **komplette** Trainingsmenge!

# Erinnerung Entropie: Maß für die Unsicherheit

-   Entropie $H(S)$ der Trainingsmenge $S$: [relative]{.notes} Häufigkeit der
    Klassen zählen

-   Mittlere Entropie nach Betrachtung von Attribut $A$

    $$    R(S, A) = \sum_{v \in \mathop{\text{Values}}(A)} \frac{|S_v|}{|S|} H(S_v)$$

\bigskip

-   Informationsgewinn durch Betrachtung von Attribut $A$

    $$\begin{eqnarray}
        \mathop{\text{Gain}}(S, A) &=& H(S) - R(S, A)\\[5pt]
                                &=& H(S) - \sum_{v \in \mathop{\text{Values}}(A)} \frac{|S_v|}{|S|} H(S_v)
    \end{eqnarray}$$

::: notes
$R(S,A)$ ist die Unsicherheit/nötige Bits nach Auswahl von Attribut A. Je kleiner
$R(S,A)$, um so kleiner die **verbleibende Unsicherheit** bzw. um so kleiner die
Anzahl der nötigen Bits zur Darstellung der partitionierten Trainingsmenge **nach**
Betrachtung von Attribut $A$ ...
:::

=\> Je kleiner $R(S,A)$, um so größer der Informationsgewinn

# Informationsgewinn: Kriterium zur Auswahl von Attributen

1)  Informationsgewinn für alle Attribute berechnen
2)  Nehme Attribut mit größtem Informationsgewinn als nächsten Test

::::: columns
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

$H(S) = 0.92 \mathop{\text{Bit}}$

$$\begin{eqnarray}
\mathop{\text{Gain}}(S, x_1) &=& 0.92 - 0.87 = 0.05 \mathop{\text{Bit}}\\
\mathop{\text{Gain}}(S, x_2) &=& 0.92 - 2/6  \cdot 0 - 4/6 \cdot 1\\
                             &=& 0.25 \mathop{\text{Bit}}\\
\mathop{\text{Gain}}(S, x_3) &=& 0.92 - 3/6 \cdot 0.92 - 2/6 \cdot 1 - 1/6 \cdot 0\\
                             &=& 0.13 \mathop{\text{Bit}}
\end{eqnarray}$$

\normalsize
:::
:::::

\bigskip

Informationsgewinn für $x_2$ am höchsten =\> wähle $x_2$ als nächsten Test

# Entscheidungsbaumlerner ID3 (Quinlan, 1986)

\bigskip

``` python
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
@Russell2021: Man erhält aus dem "Learn-Decision-Tree"-Algorithmus [@Russell2021, S.
678, Fig. 19.5] den hier vorgestellten ID3-Algorithmus, wenn man die Funktion
$\mathop{\text{Importance}}(a, examples)$ als
$\mathop{\text{InformationGain}}(examples, attr)$ implementiert/nutzt.

**Hinweis**: Mit der Zeile `if examples.each(class == A):  return A` soll
ausgedrückt werden, dass alle ankommenden Trainingsbeispiele die selbe Klasse haben
und dass diese dann als Ergebnis zurückgeliefert wird. Das "`A`" steht im obigen
Algorithmus nur symbolisch für die selbe Klasse! Es kann also auch ein anderes
Klassensymbol als "`A`" sein ...
:::

::: notes
## Beispiel ID3

| Nr. | $x_1$ | $x_2$ | $x_3$ | $k$ |
|-----|-------|-------|-------|-----|
| 1   | 0     | 0     | 0     | A   |
| 2   | 1     | 0     | 2     | A   |
| 3   | 0     | 1     | 1     | A   |
| 4   | 1     | 1     | 0     | B   |
| 5   | 0     | 1     | 1     | B   |
| 6   | 0     | 1     | 0     | A   |

-   $x2$ höchsten Information Gain
-   $x2=0$ =\> Beispiele 1,2 =\> A
-   $x2=1$ =\> Beispiele 3,4,5,6 =\> Information Gain berechnen, weiter teilen und
    verzweigen
:::

[[Tafelbeispiel Anfang ID3]{.ex}]{.slides}

# Beobachtung: $\mathop{\text{Gain}}$ ist bei mehrwertigen Attributen höher

-   Faire Münze:
    -   Entropie =
        $H(\mathop{\text{Fair}}) = -(0.5 \log_2 0.5 + 0.5 \log_2 0.5) = 1 \mathop{\text{Bit}}$

\smallskip

-   4-seitiger Würfel:
    -   Entropie =
        $H(\mathop{\text{Dice}}) = -4\cdot(0.25 \log_2 0.25) = 2 \mathop{\text{Bit}}$

\bigskip

=\> $\mathop{\text{Gain}}$ ist bei mehrwertigen Attributen höher

::: notes
Damit würden Attribute bei der Wahl bevorzugt, nur weil sie mehr Ausprägungen haben
als andere.

*Anmerkung*: Im obigen Beispiel wurde einfach die Entropie für zwei "Attribute" mit
unterschiedlich vielen Ausprägungen betrachtet, das ist natürlich kein
$\mathop{\text{Gain}}(S, A)$. Aber es sollte deutlich machen, dass Merkmale mit mehr
Ausprägungen bei der Berechnung des Gain für eine Trainingsmenge einfach wegen der
größeren Anzahl an Ausprägungen rechnerisch bevorzugt würden.
:::

# C4.5 als Verbesserung zu ID3

Normierter Informationsgewinn:
$\mathop{\text{Gain}}(S, A) \cdot \mathop{\text{Normalisation}}(A)$

$$    \mathop{\text{Normalisation}}(A) = \frac{1}{
        \sum_{v \in \mathop{\text{Values}}(A)} p_v \log_2 \frac{1}{p_v}
    }$$

::: notes
C4.5 kann zusätzlich u.a. auch noch mit kontinuierlichen Attributen umgehen, vgl.
[en.wikipedia.org/wiki/C4.5_algorithm](https://en.wikipedia.org/wiki/C4.5_algorithm).

In einem [Paper](http://www.cs.umd.edu/~samir/498/10Algorithms-08.pdf) ([DOI
10.1007/s10115-007-0114-2](https://doi.org/10.1007/s10115-007-0114-2)) wurde der
Algorithmus zu den "Top 10 algorithms in data mining" ausgewählt.

Im Wikipedia-Artikel [Information
Gain](https://en.wikipedia.org/wiki/Decision_tree_learning#Information_gain) finden
Sie weitere Informationen zum "Informationsgewinn" (*Information Gain*).

Ein anderer, relativ ähnlich arbeitender Entscheidungsbaumlerner ist der [CART
(Classification And Regression
Tree)](https://en.wikipedia.org/wiki/Decision_tree_learning)-Algorithmus, wobei der
Begriff "CART" allerdings oft auch einfach allgemein für "Entscheidungsbaumlerner"
genutzt wird.

Hierzu drei lesenswerte Blog-Einträge:

-   [Deep dive into the basics of Gini Impurity in Decision Trees with math
    Intuition](https://medium.com/poli-data/deep-dive-into-the-basics-of-gini-impurity-in-decision-trees-with-math-intuition-46c721d4aaec)
-   [Decision Trees,
    Explained](https://towardsdatascience.com/decision-trees-explained-d7678c43a59e)
-   [Decision Tree Algorithm With Hands-On
    Example](https://medium.datadriveninvestor.com/decision-tree-algorithm-with-hands-on-example-e6c2afb40d38)
:::

# Beispiele zur Normierung bei C4.5

-   Faire Münze:
    -   Entropie =
        $H(\mathop{\text{Fair}}) = -(0.5 \log_2 0.5 + 0.5 \log_2 0.5) = 1 \mathop{\text{Bit}}$
    -   Normierung:
        $1/(0.5 \log_2 (1/0.5) + 0.5 \log_2 (1/0.5)) = 1/(0.5 \cdot 1 + 0.5 \cdot 1) = 1$
    -   Normierter Informationsgewinn:
        $\mathop{\text{Gain}}(S, A) \cdot \mathop{\text{Normalisation}}(A) = 1 \mathop{\text{Bit}} \cdot 1 = 1 \mathop{\text{Bit}}$

\smallskip

-   4-seitiger Würfel:
    -   Entropie =
        $H(\mathop{\text{Dice}}) = -4\cdot(0.25 \log_2 0.25) = 2 \mathop{\text{Bit}}$
    -   Normierung:
        $1/(4\cdot 0.25 \log_2 (1/0.25)) = 1/(4\cdot 0.25 \cdot 2) = 0.5$
    -   Normierter Informationsgewinn:
        $\mathop{\text{Gain}}(S, A) \cdot \mathop{\text{Normalisation}}(A) = 2 \mathop{\text{Bit}} \cdot 0.5 = 1 \mathop{\text{Bit}}$

\bigskip

=\> Normierung sorgt für fairen Vergleich der Attribute

::: notes
*Anmerkung*: Auch hier ist die Entropie natürlich kein $\mathop{\text{Gain}}(S, A)$.
Das Beispiel soll nur übersichtlich deutlich machen, dass der "Vorteil" von
Attributen mit mehr Ausprägungen durch die Normierung in C4.5 aufgehoben wird.
:::

# Wrap-Up

-   Entscheidungsbaumlerner **ID3**
    -   Nutze *Information Gain* zur Auswahl des nächsten Attributs
    -   Teile die Trainingsmenge entsprechend auf ("nach unten hin")
-   Verbesserung durch Normierung des *Information Gain*: **C4.5**

::: readings
-   @Ertel2025: Entscheidungsbäume: Abschnitt 8.4
-   @Russell2021: Entscheidungsbäume: Abschnitt 19.3
-   @Mitchell2010: ID3: Kapitel 3
:::

::: outcomes
-   k3: Ich kann die Entscheidungsbaumalgorithmen ID3 und C4.5 auf konkrete Daten
    anwenden.
:::

::: challenges
**Games: Behaviour Trees**

In einem Dungeon-Crawler wurden über mehrere Spiele Daten für die Aktionen eines
Monsters aufgezeichnet. Dabei wurden die folgenden Merkmale für das Monster erfasst
(mit entsprechenden Ausprägungen):

*   Distanz: nah, mittel, fern
*   HP: niedrig, mittel, hoch
*   Mana: gering, genug

Die Aktionen umfassen Angreifen, Heilen, Fliehen.

Die in den vorangegangenen Spielen aufgezeichneten Daten sind:

| Nr. | Distanz | HP      | Mana   | Aktion    |
|:----|:--------|:--------|:-------|:----------|
| 01  | nah     | niedrig | genug  | heilen    |
| 02  | fern    | niedrig | gering | fliehen   |
| 03  | nah     | hoch    | gering | angreifen |
| 04  | nah     | hoch    | genug  | angreifen |
| 05  | mittel  | mittel  | genug  | angreifen |
| 06  | fern    | mittel  | gering | fliehen   |

Trainieren Sie mit diesen Daten einen Entscheidungsbaum als *Behaviour Tree* für das
Monster, so dass es in einer konkreten Spielsituation von nun an die optimale
Entscheidung treffen kann. Nutzen Sie dafür ID3.

<!--
1.  H(S)

    Anzahl Klasse `angreifen`:  3 => 3/6
    Anzahl Klasse `heilen`:     1 => 1/6
    Anzahl Klasse `fliehen`:    2 => 2/6

    H(S) = - sum(p_k * log2 p_k) = 1,4592

2.  R(S, A) für die Wurzel

    Distanz:
    nah: {1, 3, 4} => 3/6, H: {h, 2x a} = -1/3*log2 1/3 -2/3*log2 2/3 = 0,9183
    mittel: {5} => 1/6, H: {a} = -1*log2 1 = 0
    fern: {2, 6} => 2/6 H: {2x f} = -1*log2 1 = 0
    R(S,A) = 3/6 * H({1,2,4}) + 1/6 * H({5}) + 2/6 * H({2,6}) = 0,45915
    Gain: 0,99985

    HP:
    niedrig: {1, 2} => 2/6, H: {h, f} = -2x 1/2*log2 1/2 = 1
    mittel: {5, 6} => 2/6, H: {a, f} = -2x 1/2*log2 1/2 = 1
    hoch: {3, 4} => 2/6, H: {2x a} = -1*log2 1 = 0
    R(S,A) = 2/6 * 1 + 2/6 * 1 + 2/6 * 0 = 0,66667
    Gain: 0,7925

    Mana:
    gering: {2,3,6} => 3/6, H: {a, 2x f} = -1/3*log2 1/3 -2/3*log2 2/3 = 0,9183
    genug: {1,4,5} => 3/6, H: {2x a, h} = -2/3*log2 2/3 -1/3*log2 1/3 = 0,9183
    R(S,A) = 3/6*0,9183 + 3/6*0,9183 = 0,9183
    Gain: 0,5409

    => Wurzel: Distanz, Majorität: a


3. Zweig Distanz "nah":
   {1, 3, 4} = {h, 2x a}, H: -1/3*log2 1/3 -2/3*log2 2/3 = 0,9183

| Nr. | Distanz | HP      | Mana   | Aktion    |
|:----|:--------|:--------|:-------|:----------|
| 01  | nah     | niedrig | genug  | heilen    |
| 03  | nah     | hoch    | gering | angreifen |
| 04  | nah     | hoch    | genug  | angreifen |

   HP: niedrig {01/h}, mittel {}, hoch {03/a, 04/a} => 0,9183 - 1/3*(1*log2 1) - 0*(0*log2 0) - 2/3*(1*log2 1) = 0,918 - 0 = 0,9183
   Mana: gering {03/a}, genug {01/h, 04/a} => 0,9183 - 1/3*(1*log2 1) - 2/3*(2x 1/2*log2 1/2) = 0,9183 - 2/3 = 0,2516

   Mathematisch ist für nicht beobachtete Werte $lim_{p→0+} p·log2(p) = 0$, weshalb der Term rausfällt.

   => HP hat den höheren Gain, Majorität: a

   HP = niedrig => {01/h} => heilen (alle die selbe Klasse)
   HP = mittel => {} => angreifen (Majorität eine Ebene höher, also auf der HP-Ebene)
   HP = hoch => {03/a, 04/a} => angreifen (alle die selbe Klasse)


4. Zweig Distanz "mittel":
   {5} = {a} => angreifen (alle selbe Klasse)

| Nr. | Distanz | HP      | Mana   | Aktion    |
|:----|:--------|:--------|:-------|:----------|
| 05  | mittel  | mittel  | genug  | angreifen |


5. Zweig Distanz "fern":
   {02, 06} = {2x f} => fliehen (alle selbe Klasse)

| Nr. | Distanz | HP      | Mana   | Aktion    |
|:----|:--------|:--------|:-------|:----------|
| 02  | fern    | niedrig | gering | fliehen   |
| 06  | fern    | mittel  | gering | fliehen   |

-->

**Textklassifikation**

Betrachten Sie die folgenden Aussagen:

> -   Patient A hat weder Husten noch Fieber und ist gesund.
> -   Patient B hat Husten, aber kein Fieber und ist gesund.
> -   Patient C hat keinen Husten, aber Fieber. Er ist krank.
> -   Patient D hat Husten und kein Fieber und ist krank.
> -   Patient E hat Husten und Fieber. Er ist krank.

Aufgaben:

1.  Trainieren Sie auf diesem Datensatz einen Klassifikator mit ID3.
2.  Ist Patient F krank? Er hat Husten, aber kein Fieber.
:::
