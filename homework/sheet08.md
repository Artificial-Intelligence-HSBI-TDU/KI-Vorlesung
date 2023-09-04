---
archetype: assignment
title: "Blatt 08: Lineare Regression"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
points: "10 Punkte"

hidden: true
---



**TODO**



## A08.1: Lineare Regression und Gradientenabstieg (3P)

Es sind folgende Trainingsdaten gegeben:

$$ ( x^{(1)}, y^{(1)} ) = (1, 1), ( x^{(2)}, y^{(2)} ) = (2, 1), ( x^{(3)}, y^{(3)} ) = (3, 2) $$

Es soll das lineare Regressionsmodell $ h(x) = w_0 + w_1 x $ mit diesen Daten trainiert werden, wobei die zu minimierende Kostenfunktion (durchschnittliche Summe der Fehlerquadrate) wie folgt gegeben ist:

$$ J(\mathbf{w}) = \frac{1}{2m} \sum^{m}_{j=1} (h(x^{(j)}) - y^{(j)} )^2 $$

*   (1P) Geben Sie $n$ und $m$ an und schreiben Sie die Kostenfunktion für die gegebenen Datenpunkte explizit auf. Berechnen Sie den Gradientenvektor $\nabla J$ und beschreiben Sie die Bedeutung dieses Vektors.

*   (2P) Seien die Gewichte in einem Iterationsschritt $w_0 = 1, w_1 = 1$. Führen Sie für die Lernraten  $ \alpha = 0.01$, $ \alpha  = 0.1$ und  $ \alpha = 1$, jeweils fünf aufeinanderfolgende Iterationen des Gradientenabstieg (Gradient Descent) Algorithmus
durch. Nehmen Sie das Geogebra-Arbeitsblatt [Gradientenabstieg](https://www.geogebra.org/classic/rcfffgsj) zu Hilfe.

    Erstellen Sie eine Tabelle mit den Spalten $w_0$, $w_1$, $J(\mathbf{w})$, $\nabla J(\mathbf{w})$, $\alpha \cdot \nabla J(\mathbf{w})$ und notieren Sie die zugehörigen Werte für jede Iteration. Erklären Sie, wie die Gewichtsaktualisierungen durchgeführt werden und geben Sie die dafür verwendete Formel an.

    Wie verändern sich die Kosten während des Gradientenabstieges für die unterschiedlichen Lernraten? Begründen Sie dieses Verhalten.

*Thema*: Verständnis und Ablauf Gradientenabstieg und Lernrate
