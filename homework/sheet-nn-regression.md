# Übungsblatt: Lineare / Logistische Regression & Gradientenabstieg

## NN.Regression.01: Lineare Regression & Gradientenabstieg (3P)

Es sind folgende Trainingsdaten gegeben:

``` math
( x^{(1)}, y^{(1)} ) = (1, 1), ( x^{(2)}, y^{(2)} ) = (2, 1), ( x^{(3)}, y^{(3)} ) = (3, 2)
```

Es soll das lineare Regressionsmodell $`h(x) = w_0 + w_1 x`$ mit diesen
Daten trainiert werden, wobei die zu minimierende Kostenfunktion
(durchschnittliche Summe der Fehlerquadrate) wie folgt gegeben ist:

``` math
J(\mathbf{w}) = \frac{1}{2m} \sum^{m}_{j=1} (h(x^{(j)}) - y^{(j)} )^2
```

- (1P) Geben Sie $`n`$ und $`m`$ an und schreiben Sie die Kostenfunktion
  für die gegebenen Datenpunkte explizit auf. Berechnen Sie den
  Gradientenvektor $`\nabla J`$ und beschreiben Sie die Bedeutung dieses
  Vektors.

- (2P) Seien die Gewichte in einem Iterationsschritt
  $`w_0 = 1, w_1 = 1`$. Führen Sie für die Lernraten $`\alpha=0.01`$,
  $`\alpha=0.1`$ und $`\alpha=1`$ jeweils fünf aufeinanderfolgende
  Iterationen des Gradientenabstieg (Gradient Descent) Algorithmus
  durch.

  Erstellen Sie eine Tabelle mit den Spalten $`w_0`$, $`w_1`$,
  $`J(\mathbf{w})`$, $`\nabla J(\mathbf{w})`$,
  $`\alpha \cdot \nabla J(\mathbf{w})`$ und notieren Sie die zugehörigen
  Werte für jede Iteration. Erklären Sie, wie die
  Gewichtsaktualisierungen durchgeführt werden und geben Sie die dafür
  verwendete Formel an.

  Wie verändern sich die Kosten während des Gradientenabstieges für die
  unterschiedlichen Lernraten? Begründen Sie dieses Verhalten.

  Sie können das folgende
  [**Geogebra-Arbeitsblatt**](https://www.geogebra.org/classic/rcfffgsj)
  zu Hilfe nehmen.

*Thema*: Verständnis und Ablauf Gradientenabstieg und Lernrate

## NN.Regression.02: Logistische Regression & Gradientenabstieg (7P)

### Datensatz (1P)

- Konstruieren Sie Ihren eigenen Datensatz $`\mathcal{D}`$ mit $`m=100`$
  gleichförmig verteilten Zufallspunkten aus dem Bereich
  $`\mathcal{X}=[-1, 1]\times[-1, 1]`$.
- Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte
  Punkte aus dem Bereich $`[-1, 1]\times[-1, 1]`$. Verwenden Sie die
  Gerade, die durch diese zwei Punkte verläuft, als die
  Entscheidungsgrenze Ihrer Zielfunktion $`f`$. Sie können die positiv
  beschriftete Seite beliebig festlegen.
- Werten Sie die Zielfunktion für jeden Datenpunkt $`\mathbf{x}^{(j)}`$
  aus, um die entsprechenden Beschriftungen (Ausgangslabel) $`y^{(j)}`$
  zu erhalten.

### Training (3P)

Trainieren Sie ein logistisches Regressionsmodell auf diesen Daten, um
$`h^{*}=\sigma(w^T x)`$ zu finden. Verwenden Sie dazu den
Gradientenabstieg-Algorithmus. Initialisieren Sie alle Gewichtswerte mit
0 und führen Sie 2000 Iterationen durch. Nehmen Sie $`\alpha=0.1`$ als
Lernrate. Speichern Sie alle 100 Schritte die berechneten Kosten.
Zeichnen Sie am Ende die Kosten als Diagramm über die Anzahl der
Iterationen auf.

### Experimente (3P)

Wiederholen Sie das obige Experiment mit unterschiedlichen Lernraten,
z.B. $`\alpha=0.1`$, $`\alpha=0.01`$ und $`\alpha=0.001`$. Vergleichen
Sie die Kosten-Diagramme.

Sie können das folgende [**Jupyter
Notebook**](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/homework/files/logistische_regression_starter.ipynb)
als Startpunkt benutzen. Sie können alternativ auch eine andere
Programmiersprache und/oder einen anderen Datensatz (z.B. zufällig
generierter Datensatz mittels Numpy and Scikit-Learn) verwenden.

*Thema*: Verständnis und Implementierung Logistische Regression

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> c6e3966 (lecture: fix utf8 issues (pdf), 2025-07-24)<br></sub></sup></p></blockquote>
