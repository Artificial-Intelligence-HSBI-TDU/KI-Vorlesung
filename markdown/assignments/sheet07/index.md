---
type: assignment
title: "Blatt 07: Logistische Regression"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
hidden: true
weight: 7
points: 10
---


## A7.1: Logistische Regression (6P)

*   (1P)
    *   Konstruieren Sie einen Datensatz $\mathcal{D}$ mit $m=100$ gleichförmig verteilten Zufallspunkten aus dem Bereich $\mathcal{X} = [−1, 1] \times [−1, 1] $.
    *   Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte Punkte aus dem Bereich $ [−1, 1] \times [−1, 1] $. Verwenden Sie die Gerade, die durch diese zwei Punkte verläuft, als die Entscheidungsgrenze ihrer Zielfunktion $f$: Punkte auf der einen Seite der Linie sollen als +1 und die anderen als −1 klassifiziert werden.
    *   Werten Sie Ihre Zielfunktion für jeden Datenpunkt $\mathbf{x}^{(j)}$ aus, um den entsprechenden Ausgangslabel $y^{(j)}$ zu erhalten.

*   (3P) Trainieren Sie ein logistisches Regressionsmodell auf diesen Daten, um $h^{\*} = \sigma(w^T x)$ zu finden. Verwenden Sie dazu den Gradientenabstieg-Algorithmus. Initialisieren Sie alle Gewichtswerte mit 0 und führen Sie 2000 Iterationen durch. Speichern Sie alle 100 Schritte die berechneten Kosten. Zeichnen Sie am Ende die Kosten als Diagramm über die Anzahl der Iterationen auf.

*   (2P) Experimentieren Sie mit unterschiedlichen Lernraten, z.B.   $\alpha = 0.1,   \alpha = 0.01,   \alpha = 0.001$ und vergleichen Sie die Kosten-Diagramme.

Sie können das folgende [**Jupyter Notebook**](files/Logistische_Regression_Starter.ipynb) als Startpunkt benutzen. Sie können alternativ auch eine andere Programmiersprache und/oder einen anderen Datensatz (z.B. zufällig generierter Datensatz mittels Numpy and Scikit-Learn) verwenden.

*Thema*: Verständnis und Implementierung Logistische Regression



## A7.2: Merkmal Skalierung (4P)

Abbildung 1 und Abbildung 2 zeigen die [Höhenlinien](https://de.wikipedia.org/wiki/H%C3%B6henlinie) ([Contour Lines](https://en.wikipedia.org/wiki/Contour_line)) von zwei Kostenfunktionen.

`{{< img src="images/contour_plot_a.png" title="Abbildung 1" width="80%" >}}`{=markdown}
`{{< img src="images/contour_plot_b.png" title="Abbildung 2" width="80%" >}}`{=markdown}

*   (1P) Erklären Sie, welcher der beiden Fälle nachteilhaft für den Gradientenabstieg Algorithmus ist. Wo liegt der Nachteil? Wie kann die Merkmalskalierung dem genannten Nachteil entgegenwirken?
*   (3P) Zeigen Sie unter Verwendung Ihrer eigenen, zufällig generierten Datenpunkte aus dem Bereich $ [100, 300] \times [0, 2] $, wie sich Standardisierung, Min-Max Skalierung und Normalisierung auf die Daten auswirken.
Vergleichen Sie dazu die jeweiligen Streudiagramme (scatterplots). Sie können hierzu das folgende [**Jupyter Notebook**](files/Feature_Scaling_Starter.ipynb) als Startpunkt benutzen.


*Thema*: Verständnis Merkmalskalierung und Gradientenabstieg





