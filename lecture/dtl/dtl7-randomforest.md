---
author: Carsten Gips (HSBI)
title: "DTL: Random Forest"
---

::: tldr
TODO
:::

::: youtube
-   [VL Random Forest](https://youtu.be/TODO)
:::

# Motivation: Vom einzelnen Baum zum Wald

-   Entscheidungsbaum:
    -   verständlich, interpretierbar
    -   kann aber "sehr speziell" auf den Trainingsdatensatz passen
    -   kleine Änderungen in den Daten $\to$ oft ganz anderer Baum
-   Idee:
    -   Statt **einem** Baum viele **verschiedene** Bäume trainieren
    -   Jeder Baum trifft eine eigene Vorhersage
    -   Am Ende: **Mehrheitsentscheidung** (Klassifikation) bzw. **Mittelwert**
        (Regression)
-   Intuition:
    -   "Viele verschiedene Meinungen" kombinieren $\to$ robustere Entscheidung
    -   Fehler einzelner Bäume können sich gegenseitig ausgleichen

::: notes
Ein einzelner Entscheidungsbaum ist sehr anfällig dafür, die Trainingsdaten zu
"überlernen" und reagiert empfindlich auf kleine Datenänderungen.

Der Random-Forest-Ansatz sagt: Wir verlassen uns nicht auf einen einzelnen Baum,
sondern lassen ein "Gremium" aus Bäumen abstimmen. Jeder Baum sieht die Daten ein
wenig anders und trifft eigene Entscheidungen; am Ende zählt die Mehrheit.
:::

# Wie funktioniert ein Random Forest?

1.  **Datenbasis**
    -   gegebener Trainingsdatensatz $D$
2.  **Viele Trainingsdatensätze durch Zufall (Bootstrapping)**
    -   Für jeden Baum $B_1, B_2, \dots, B_K$:
        -   Ziehen Sie zufällig (mit Zurücklegen) Trainingsbeispiele aus $D$ $\to$
            jeder Baum erhält eine leicht andere Stichprobe $D_k$
3.  **Zufällige Merkmalsauswahl pro Split**
    -   Beim Training eines Baums:
        -   an jedem Knoten nur eine zufällige Teilmenge der Attribute für den Split
            betrachten
        -   daraus das "beste" Attribut wählen (z. B. per Entropie / Information
            Gain)
4.  **Vorhersage**
    -   Klassifikation: Jeder Baum liefert eine Klassenentscheidung, die Klasse mit
        den meisten Stimmen gewinnt
    -   Regression: Mittelwert der Vorhersagen der Bäume

::: notes
Zwei Arten von Zufall:

1.  Jeder Baum sieht eine andere Zufallsstichprobe der Daten.
2.  Jeder Baum betrachtet an jedem Split nur eine zufällige Auswahl von Merkmalen.

Dadurch entstehen bewusst unterschiedliche Bäume. Wenn wir dann über viele solcher
Bäume abstimmen lassen, ist die Gesamtsicht deutlich stabiler als die eines
einzelnen Baums.
:::

# Beispiel: Random Forest in Aktion (Klassifikation)

Wir betrachten eine einfache binäre Klassifikation mit zwei Merkmalen:

-   Merkmal 1: "Größe" (klein / groß)
-   Merkmal 2: "Farbe" (hell / dunkel)
-   Klassen: "Klasse A" oder "Klasse B"

**Testobjekt:**

-   Größe = groß
-   Farbe = hell

Frage: Welche Klasse sagt der Random Forest voraus?

------------------------------------------------------------------------------------

**Baum 1**

-   Wurzel: prüfe "Größe"
    -   wenn groß $\to$ Klasse A
    -   wenn klein $\to$ Klasse B
-   Für unser Objekt (groß, hell): **Vorhersage = A**

------------------------------------------------------------------------------------

**Baum 2**

-   Wurzel: prüfe "Farbe"
    -   wenn hell $\to$ Klasse B
    -   wenn dunkel $\to$ Klasse A
-   Für unser Objekt (groß, hell): **Vorhersage = B**

------------------------------------------------------------------------------------

**Baum 3**

-   Wurzel: prüfe "Größe"
    -   wenn groß $\to$ gehe zu Knoten 2
    -   wenn klein $\to$ Klasse B
-   Knoten 2: prüfe "Farbe"
    -   wenn hell $\to$ Klasse A
    -   wenn dunkel $\to$ Klasse B
-   Für unser Objekt (groß, hell): **Vorhersage = A**

------------------------------------------------------------------------------------

**Mehrheitsentscheidung**

-   Baum 1 $\to$ A
-   Baum 2 $\to$ B
-   Baum 3 $\to$ A

$$
\text{Stimmen: } A = 2,\; B = 1 \Rightarrow \text{Random Forest sagt: Klasse A}
$$

::: notes
Jeder einzelne Baum kann "falsch liegen" oder stark vereinfacht sein.

Im Beispiel sehen wir, dass Baum 2 sich anders entscheidet als die beiden anderen.

Der Random Forest kombiniert diese unterschiedlichen Sichtweisen sehr einfach: per
Mehrheitsvotum. In der Praxis nutzt man oft Dutzende oder Hunderte Bäume. Die Stärke
kommt also aus der Kombination vieler relativ einfacher Modelle, nicht aus einem
extrem komplexen Einzelbaum.
:::

# Pseudocode: Random Forest

**Training:**

    Input: Trainingsdaten D, Anzahl Bäume K,
           Anzahl Zufallsattribute pro Split m

    For k = 1 .. K:
        Ziehe Zufallsstichprobe D_k aus D (mit Zurücklegen)   // Bootstrap
        Trainiere Entscheidungsbaum T_k auf D_k:
            An jedem Knoten:
                Wähle zufällig m Attribute aus allen Attributen
                Finde unter diesen m Attributen den besten Split (z.B. via Entropie)
    Output: Ensemble {T_1, T_2, ..., T_K}

**Vorhersage für ein neues Objekt $x$:**

-   Klassifikation:

$$
\hat{y}_{\text{class}}(x) = \text{Mehrheit} \big( T_1(x), T_2(x), \dots, T_K(x) \big)
$$

-   Regression:

$$
\hat{y}_{\text{reg}}(x) = \frac{1}{K} \sum_{k=1}^{K} T_k(x)
$$

::: notes
Wichtig ist: Keine Änderungen am Baum-Algorithmus selbst (z.B. C4.5/ID3). Die
"Magie" kommt aus den zwei Zufallsquellen: zufällige Datenstichproben und zufällige
Attributauswahl.
:::

# Mini-Beispiel: 3 Bäume, Klassifikation & Regression

Wir betrachten einen sehr kleinen Datensatz mit einem Merkmal $x$ und zwei Aufgaben:

-   Klassifikation: Klasse $C \in \{A, B\}$
-   Regression: numerischer Zielwert $y$

**Trainingsdaten:**

| Beispiel | $x$ | Klasse $C$ | Zielwert $y$ |
|----------|----:|------------|--------------|
| 1        | 1.0 | A          | 1.0          |
| 2        | 2.0 | A          | 1.5          |
| 3        | 3.0 | B          | 3.0          |
| 4        | 4.0 | B          | 4.0          |

Wir trainieren 3 Entscheidungsbäume (sehr einfache Stubs: ein Split pro Baum). Jeder
Baum bekommt eine Bootstrap-Stichprobe aus diesen 4 Beispielen.

## Bootstrap-Stichproben und resultierende Bäume

**Baum 1 -- Trainingsstichprobe $D_1$:**

-   Beispiele: 1, 2, 3
-   sinnvoller Split bei $x < 2.5$:
    -   Links: $x = 1.0, 2.0$ $\to$ Klasse A, mittlerer $y \approx 1.25$
    -   Rechts: $x = 3.0$ $\to$ Klasse B, mittlerer $y = 3.0$

Baum 1:

-   Wenn $x < 2.5$:
    -   Klasse = A
    -   Regressionswert $y \approx 1.25$
-   Sonst:
    -   Klasse = B
    -   Regressionswert $y = 3.0$

------------------------------------------------------------------------------------

**Baum 2 -- Trainingsstichprobe $D_2$:**

-   Beispiele: 2, 3, 4
-   sinnvoller Split bei $x < 3.5$:
    -   Links: $x = 2.0, 3.0$ $\to$ Klassen A & B gemischt, z. B. Mehrheit = B,
        mittlerer $y = (1.5 + 3.0)/2 = 2.25$
    -   Rechts: $x = 4.0$ $\to$ Klasse B, $y = 4.0$

Baum 2:

-   Wenn $x < 3.5$:
    -   Klasse = B (Mehrheit in $D_2$)
    -   Regressionswert $y \approx 2.25$
-   Sonst:
    -   Klasse = B
    -   Regressionswert $y = 4.0$

------------------------------------------------------------------------------------

**Baum 3 -- Trainingsstichprobe $D_3$:**

-   Beispiele: 1, 1, 4 (z. B. zweimal Beispiel 1 und einmal Beispiel 4 gezogen)
-   sinnvoller Split bei $x < 2.5$:
    -   Links: $x = 1.0, 1.0$ $\to$ Klasse A, mittlerer $y = 1.0$
    -   Rechts: $x = 4.0$ $\to$ Klasse B, $y = 4.0$

Baum 3:

-   Wenn $x < 2.5$:
    -   Klasse = A
    -   Regressionswert $y = 1.0$
-   Sonst:
    -   Klasse = B
    -   Regressionswert $y = 4.0$

## Vorhersage für neues Objekt $x = 3.0$

**Einzelne Bäume:**

-   Baum 1:
    -   $x = 3.0 \geq 2.5$ $\to$ Rechts
    -   Klasse = B, $y = 3.0$
-   Baum 2:
    -   $x = 3.0 < 3.5$ $\to$ Links
    -   Klasse = B, $y \approx 2.25$
-   Baum 3:
    -   $x = 3.0 \geq 2.5$ $\to$ Rechts
    -   Klasse = B, $y = 4.0$

## Random-Forest-Entscheidung

**Klassifikation (Mehrheitsvotum):**

-   Baum 1: B
-   Baum 2: B
-   Baum 3: B

$$
\Rightarrow \hat{C}(x = 3.0) = B
$$

**Regression (Mittelwert):**

$$
\hat{y}(x = 3.0) = \frac{3.0 + 2.25 + 4.0}{3}
= \frac{9.25}{3} \approx 3.08
$$

::: notes
Die Bäume sind sich bei der Klasse einig (alle B).

Beim Regressionswert machen die Bäume unterschiedliche Vorschläge. Der Random Forest
mittelt diese Vorschläge und kommt auf einen Wert in der Nähe der Trainingsbeispiele
mit $x = 3.0$ und $x = 4.0$. In der Praxis nutzt man viel mehr Bäume -- damit werden
diese Effekte noch stabiler und genauer.
:::
