---
author: Canan Yıldız (Türkisch-Deutsche Universität)
no_beamer: true
title: NN04 - Overfitting und Regularisierung
---

::: youtube
-   [NN4.1 - Nichtlineare Modelle](https://youtu.be/KJLT-h_ChRo)
-   [NN4.2 - Overfitting und Regularisierung](https://youtu.be/BW91MYPUH_k)
:::

::: attachments
-   [NN04-Nichtlineare_Modelle_und_Overfitting.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN04-Nichtlineare_Modelle_und_Overfitting.pdf)
:::

# Kurze Übersicht

## Nichtlineare Modelle

-   Einführung von neuen Merkmalen in Form von nichtlienaren Kombinationen der
    ursprünglichen Merkmale
-   Erhöhung der Komplexität des Modells ermöglicht das Erfassen von nichtlinearen
    Beziehungen
-   **Bemerkung**: Die Hypothesenfunktion bleibt linear in den Gewichten, es wird
    weiterhin logistische Regression in einem **erweiterten** Merkmalraum
    durchgeführt.

## Überanpassung und Regularisierung

-   Die **Überanpassung** (engl. Overfitting) ist eines der häufigsten und
    wichtigsten Probleme in ML und DL

    > "Was im Bereich des maschinellen Lernens Professionelle von Amateuren
    > unterscheidet, ist ihre Fähigkeit mit Überanpassung umzugehen."
    >
    > `\hfill`{=tex} -- [[@AbuMostafa2012, S. 119]]{.credits nolist=true}

-   Anzeichen von Überanpassung sind geringe Trainingskosten und hohe **Testkosten**
    (Kosten auf nicht-gesehenen Daten).
-   Regularisierung ist eine Maßnahme gegen Überanpassung. Man kann es sich als eine
    Reduktion in der Komplexität des Modells vorstellen.
-   Der Regularisierungsparameter $\lambda$ ist ein Hyperparameter. Je größer der
    $\lambda$-Wert, desto größer der Regularisierungseffekt.
-   Die **Kostenfunktion** bei regulariserter logistischer Regression:
    $$J = \frac{1}{m} \left\lbrack \sum_{i=1}^m \left( -y^{[i]}log(a^{[i]})-(1-y^{[i]})log(1-a^{[i]}) \right) + \frac{\lambda}{2} \sum_{j=1}^n (w^2_j)  \right\rbrack \tag{1}$$
-   Die **Gewichtsaktualisierung** mit Regularisierungsterm:
    $$w_j := w_j - \frac{\alpha}{m} \left\lbrack \sum_{i=1}^m \left( ( a^{[i]} - y^{[i]} )x_j^{[i]} \right) + \lambda w_j  \right\rbrack \tag{2}$$

::: readings
-   @AbuMostafa2012: Kapitel 4
:::

::: outcomes
-   k2: Ich kann die Erhöhung der Modell-Komplexität durch Einführung von Merkmalen
    höherer Ordnung erklären
-   k2: Ich kann die Begriffe Unter- und Überanpassung an einem Beispiel erklären
-   k2: Ich kann den Begriff Regularisierung erklären und die Auswirkung auf die
    Gewichte und das Modell erläutern
-   k3: Ich kann den Gradientenabstieg für regularisierte logistische Regression
    an einem Beispiel anwenden
:::

::: quizzes
-   [Selbsttest Overfitting
    (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106595&client_id=FH-Bielefeld)
:::
