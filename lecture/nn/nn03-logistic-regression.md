---
author: Canan Yıldız (Türkisch-Deutsche Universität)
no_beamer: true
title: NN03 - Logistische Regression
---

::: youtube
-   [NN3.1 - Logistische Regression - Intro](https://youtu.be/GpJmjrqA5RY)
-   [NN3.2 - Logistische Regression - Hypothesenfunktion und
    Bsp](https://youtu.be/z-jFZeNWMRc)
-   [NN3.3 - Logistische Regression - Verlust und
    Kosten](https://youtu.be/ruuCKupOhCE)
-   [NN3.4 - Logistische Regression -
    Gradientenabstieg](https://youtu.be/kPAZsr-r1LA)
:::

::: attachments
-   [NN03-Logistische_Regression.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN03-Logistische_Regression.pdf)
:::

# Kurze Übersicht

## Formalisierung

-   Ausgabe $y$ ist reelle Zahl aus dem stetigen Bereich $(0,1)$

-   Die **Hypothesenfunktion** ist:
    $$h(\mathbf{x}) = \sigma (\mathbf{w}^T\mathbf{x}) = \sigma (w_0 + w_1x_1 + w_2x_2 + \ldots + w_nx_n) \tag{1}$$

-   Der **Kreuzentropie Verlust** (engl. Cross-Entropy) für einen Datenpunkt
    $\mathbf{x}$: $$\mathcal{L}(a, y) =  - y  \log(a) - (1-y)  \log(1-a)\tag{2}$$
    wobei hier $a := \hat{y}$ die Vorhersage ist.

-   Die Kosten als durchschnittlicher Verlust über alle Datenpunkte
    $x^{(1)}, \ldots, x^{(m)}$:
    $$J = \frac{1}{m} \sum_{i=1}^m \mathcal{L}(a^{(i)}, y^{(i)})\tag{3}$$

## Gradientenabstieg

-   Der Gradient für einen Datenpunkt $\mathbf{x}$:
    $$\frac{\partial \mathcal{L}}{\partial w} = (a-y)x \tag{4}$$
-   Der Gradient für alle Datenpunkte $X$ in Matrix-Notation:
    $$\nabla J = \frac{\partial J}{\partial w} = \frac{1}{m}X(A-Y)^T\tag{5}$$

## Graphische Übersicht

-   **Logistische Regression**

    ![](images/log_reg_nn.png){width="65%"}

-   **Lineare Regression**

    ![](images/lin_reg_nn.png){width="65%"}

-   **Perzeptron**

    ![](images/perzeptron_nn.png){width="65%"}

::: outcomes
-   k2: Ich kann die logistische Regression aus Sicht neuronaler Netze erklären und
    dabei auf die graphische Darstellung und den Vergleich mit Perzeptron und
    linearer Regression eingehen
-   k2: Ich kann die Formalisierung der logistische Regression erklären
-   k2: Ich kann die Sigmoid-Aktivierungsfunktion erklären und an einem Beispiel
    demonstrieren
-   k2: Ich kann Verlust- und Kosten (Cross-Entropy Loss) erklären
-   k3: Ich kann den Gradientenabstieg für logistische Regression an einem Beispiel
    anwenden
:::

::: quizzes
-   [Selbsttest Logistische Regression
    (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106591&client_id=FH-Bielefeld)
:::
