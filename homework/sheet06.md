---
archetype: assignment
title: "Meilenstein 2.2: Logistische Regression"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"

hidden: true
---


## Logistische Regression

### Datensatz
*   Konstruieren Sie Ihren eigenen Datensatz $\mathcal{D}$ mit $m=100$ gleichförmig verteilten Zufallspunkten aus dem Bereich $\mathcal{X}=[−1, 1]\times[−1, 1]$.
*   Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte Punkte aus dem Bereich $[−1, 1]\times[−1, 1]$. Verwenden Sie die Gerade, die durch diese zwei Punkte verläuft, als die Entscheidungsgrenze Ihrer Zielfunktion $f$. Sie können die positiv beschriftete Seite beliebig festlegen.
*   Werten Sie die Zielfunktion für jeden Datenpunkt $\mathbf{x}^{(j)}$ aus, um die entsprechenden Beschriftungen (Ausgangslabel) $y^{(j)}$ zu erhalten.

### Training
Trainieren Sie ein logistisches Regressionsmodell auf diesen Daten, um
$h^{*}=\sigma(w^T x)$ zu finden. Verwenden Sie dazu den Gradientenabstieg-Algorithmus. Initialisieren Sie alle Gewichtswerte mit 0 und führen Sie 2000 Iterationen durch. Nehmen Sie $\alpha=0.1$ als Lernrate. Speichern Sie alle 100 Schritte die berechneten Kosten. Zeichnen Sie am Ende die Kosten als Diagramm über die Anzahl der Iterationen auf.

### Experimente
Wiederholen Sie das obige Experiment mit unterschiedlichen Lernraten, z.B. $\alpha=0.1$, $\alpha=0.01$ und $\alpha=0.001$. Vergleichen Sie die Kosten-Diagramme.


Sie können das folgende [**Jupyter Notebook**](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/homework/files/logistische_regression_starter.ipynb) als Startpunkt benutzen. Sie können alternativ auch eine andere Programmiersprache und/oder einen anderen Datensatz (z.B. zufällig generierter Datensatz mittels Numpy and Scikit-Learn) verwenden.
