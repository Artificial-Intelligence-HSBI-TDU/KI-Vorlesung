---
archetype: assignment
title: "Blatt 07: Logistische Regression"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
points: "10 Punkte"

hidden: true
---



## A7.1: Logistische Regression (6P)

### Datensatz (1P)
*   Konstruieren Sie Ihren eigenen Datensatz $\mathcal{D}$ mit $m=100$ gleichförmig verteilten Zufallspunkten aus dem Bereich $\mathcal{X}=[−1, 1]\times[−1, 1]$.
*   Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte Punkte aus dem Bereich $[−1, 1]\times[−1, 1]$. Verwenden Sie die Gerade, die durch diese zwei Punkte verläuft, als die Entscheidungsgrenze Ihrer Zielfunktion $f$. Sie können die positiv beschriftete Seite beliebig festlegen.
*   Werten Sie die Zielfunktion für jeden Datenpunkt $\mathbf{x}^{(j)}$ aus, um die entsprechenden Beschriftungen (Ausgangslabel) $y^{(j)}$ zu erhalten.

### Training (3P)
Trainieren Sie ein logistisches Regressionsmodell auf diesen Daten, um
$h^{*}=\sigma(w^T x)$ zu finden. Verwenden Sie dazu den Gradientenabstieg-Algorithmus. Initialisieren Sie alle Gewichtswerte mit 0 und führen Sie 2000 Iterationen durch. Nehmen Sie $\alpha=0.1$ als Lernrate. Speichern Sie alle 100 Schritte die berechneten Kosten. Zeichnen Sie am Ende die Kosten als Diagramm über die Anzahl der Iterationen auf.

### Experimente (2P)
Wiederholen Sie das obige Experiment mit unterschiedlichen Lernraten, z.B. $\alpha=0.1$, $\alpha=0.01$ und $\alpha=0.001$. Vergleichen Sie die Kosten-Diagramme.

Sie können das folgende [**Jupyter Notebook**](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/homework/files/logistische_regression_starter.ipynb) als Startpunkt benutzen. Sie können alternativ auch eine andere Programmiersprache und/oder einen anderen Datensatz (z.B. zufällig generierter Datensatz mittels Numpy and Scikit-Learn) verwenden.

*Thema*: Verständnis und Implementierung Logistische Regression



## A7.2: Merkmal Skalierung (4P)

Abbildung 1 und Abbildung 2 zeigen die [Höhenlinien](https://de.wikipedia.org/wiki/H%C3%B6henlinie) ([Contour Lines](https://en.wikipedia.org/wiki/Contour_line)) von zwei Kostenfunktionen.

![Abbildung 1](images/contour_plot_a.png){width="40%"}
![Abbildung 2](images/contour_plot_b.png){width="40%"}

*   (1P) Erklären Sie, welcher der beiden Fälle nachteilhaft für den Gradientenabstieg Algorithmus ist. Wo liegt der Nachteil? Wie kann die Merkmalskalierung dem genannten Nachteil entgegenwirken?
*   (3P) Zeigen Sie unter Verwendung Ihrer eigenen, zufällig generierten Datenpunkte aus dem Bereich $ [100, 300] \times [0, 2] $, wie sich Standardisierung, Min-Max Skalierung und Normalisierung auf die Daten auswirken.
Vergleichen Sie dazu die jeweiligen Streudiagramme (scatterplots). Sie können hierzu das folgende [**Jupyter Notebook**](files/Feature_Scaling_Starter.ipynb) als Startpunkt benutzen.


*Thema*: Verständnis Merkmalskalierung und Gradientenabstieg
