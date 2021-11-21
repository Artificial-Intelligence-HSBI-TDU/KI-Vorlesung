---
type: assignment
title: "Blatt 06: Perzeptron, Lineare Regression"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
points: 10
hidden: true
weight: 6
---

<style type="text/css">
    ul { list-style-type: lower-alpha; }
    ul ul { list-style-type: circle; }
</style>



## A6.1: Entscheidungsgrenze (2P)

*   (1P) Betrachten Sie das durch den Gewichtsvektor $ (w_0,w_1,w_2)^T = (2, 1, 1)^T $ gegebene Perzeptron. Zeichnen Sie die Trennebene und markieren Sie den Bereich, der mit $+1$ klassifiziert wird.
*   (1P) Welche der folgenden Perzeptrons haben die selbe Trennebene? Welche weisen exakt die gleiche Klassifikation auf?
    *   $ (w_0,w_1,w_2)^T = (1, 0.5, 0.5)^T $
    *   $ (w_0,w_1,w_2)^T = (200, 100, 100)^T $
    *   $ (w_0,w_1,w_2)^T = (\sqrt{2}, \sqrt{1}, \sqrt{1})^T $
    *   $ (w_0,w_1,w_2)^T = (-2, -1, -1)^T $

*Thema*: Verständnis Interpretation Perzeptron (Trennebene/Entscheidungsgrenze)

## A6.2: Logische Funktionen als Perzeptron (2P)

*   (1.5P) Das Perceptron kann zur Ausführung zahlreicher logischer Funktionen verwendet werden. Demonstrieren Sie die Implementierung der binären Logikfunktionen UND, ODER und KOMPLEMENT.
*   (0.5P) Eine grundlegende Einschränkung des Perceptrons besteht darin, dass es die EXKLUSIV-ODER-Funktion nicht implementieren kann. Erklären Sie den Grund für diese Einschränkung.

*Thema*: Verständnis Perzeptron


## A6.3: Perzeptron Lernalgorithmus I (3P)

*   (2P) Implementieren Sie den Perzeptron-Lernalgorithmus. Ihr Programm soll eine Tabelle
    mit den folgenden Spalten ausgeben, die eine Zeile je Lernschritt enthält:
    $w_1$, $w_2$, $\theta$, $x_1$, $x_2$, $k$,  $\sum_{i=1}^n w_i x_i - \theta$, vorhergesagte Klasse, Änderung (=,+,-)

    Lernen Sie die boolesche Funktion `OR`. Geben Sie die vollständige Lerntabelle an.

    Die Gewichte $w_1$ und $w_2$ sowie der Schwellenwert $\theta$ sollen jeweils mit dem Wert $0$ initialisiert werden. Die Lernschrittweite $\eta$ sei $0.5$. Nutzen Sie die
    $\operatorname{sign}$-Funktion als Aktivierungsfunktion.


*   (1P) Zeichnen Sie eine geometrische Interpretation des Perzeptrons nach dem Lernen (Trennebene,  Gewichtsvektor, Trainingsbeispiele).

*Thema*: Verständnis Perzeptron und Ablauf Perzeptron-Lernalgorithmus

## A6.4: Lineare Regression und Gradientenabstieg (3P)

Es sind folgende Trainingsdaten gegeben:

$$ ( x^{(1)}, y^{(1)} ) = (1, 1), ( x^{(2)}, y^{(2)} ) = (2, 1), ( x^{(3)}, y^{(3)} ) = (3, 2) $$

Es soll das Lineare Regressionsmodell $ h(x) = w_0 + w_1 x $ mit diesen Daten trainiert werden, wobei die zu minimierende Kostenfunktion (Durchschnittliche Summe der Fehlerquadrate) wie folgt gegeben ist:

$$ J(\mathbf{w}) = \frac{1}{2m} \sum^{m}_{j=1} (h(x^{(j)}) - y^{(j)} )^2 $$

*   (1P) Geben Sie $n$ und $m$ an und schreiben Sie die Kostenfunktion für die gegebenen Datenpunkte explizit auf. Berechnen Sie den Gradientenvektor $\nabla J$ und beschreiben Sie die Bedeutung dieses Vektors.

*   (2P) Seien die Gewichte in einem Iterationsschritt $w_0 = 1, w_1 = 1$. Führen Sie für die Lernraten  $ \alpha = 0.01$, $ \alpha  = 0.1$ und  $ \alpha = 1$, jeweils fünf aufeinanderfolgende Iterationen des Gradientenabstieg (Gradient Descent) Algorithmus
durch. Nehmen Sie das Geogebra Arbeitsblatt [Gradientenabstieg](https://www.geogebra.org/classic/rcfffgsj) zu Hilfe.

    Erstellen Sie eine Tabelle mit den Spalten $w_0$, $w_1$, $J(\mathbf{w})$, $\nabla J(\mathbf{w})$, $\alpha \cdot \nabla J(\mathbf{w})$ und notieren Sie die zugehörigen Werte für jede Iteration. Erklären Sie, wie die Gewichtsaktualisierungen durchgeführt werden und geben Sie die dafür verwendete Formel an.
    
    Wie verändern sich die Kosten während des Gradientenabstieges für die unterschiedlichen Lernraten? Begründen Sie dieses Verhalten.

*Thema*: Verständnis und Ablauf Gradientenabstieg und Lernrate

{{% challenges %}}
## A6.5: Bonus: Perzeptron Lernalgorithmus II (2P)

In dieser Aufgabe werden Sie Ihre eigene Zielfunktion $f$ und Datensatz $\mathcal{D}$ erstellen. Nehmen Sie $n = 2$, damit Sie das Problem visualisieren können.

Konstruieren Sie Ihren Datensatz, indem Sie $m$ Zufallspunkte im Bereich $\mathcal{X} = [−1, 1] \times [−1, 1] $ generieren (gleichförmig verteilt).

Wählen Sie in jedem Durchlauf eine zufällige Linie in der Ebene als Zielfunktion $f$. Nehmen Sie dazu zwei zufällige, gleichmäßig verteilte Punkte in $ [−1, 1] \times [−1, 1] $ und bilden Sie die durch diese zwei Punkte verlaufende Linie. Punkte
auf der einen Seite der Linie sollen als $+1$ und die anderen als $−1$ klassifiziert werden. Werten Sie die Zielfunktion für jeden Datenpunkt $\mathbf{x}^{(j)}$ aus, um den entsprechenden Ausgang (Label) $y^{(j)}$ zu erhalten.

Nun verwenden Sie in jedem Durchlauf den Perzeptron-Lernalgorithmus, um $h^{\*}$ zu finden. Initialisieren Sie alle Gewichstwerte mit $0$ und lassen Sie den Algorithmus bei jeder Iteration einen Punkt zufällig aus der Menge der falsch klassifizierten Punkte auswählen. Wir interessieren uns für die Anzahl der Iterationen, die PLA benötigt, um zu $h^{\*}$ zu konvergieren. Um eine zuverlässige Schätzung für diese Größe zu erhalten, wiederholen Sie das Experiment für $1000$ Durchläufe (jeder Durchlauf wie oben angegeben) und nehmen Sie den Durchschnitt über alle Durchläufe.

*   Wählen Sie $m=10$. Wie viele Iterationen benötigt PLA durchnittlich, um zu konvergieren? Wählen Sie die Option, die Ihrem Ergebnis am Nächsten ist.
    *   1
    *   15
    *   300
    *   5000
    *   10000

*   Wie viele Iterationen benötigt PLA durchnittlich, um für $m=100$ Punkte zu konvergieren? Wählen Sie die Option, die Ihrem Ergebnis am Nächsten ist.
    *   50
    *   100
    *   500
    *   1000
    *   5000

*Quelle*: Yaser S. Abu-Mostafa, Malik Magdon-Ismail, and Hsuan-Tien Lin. 2012. Learning From Data. AMLBook.

*Thema*: Verständnis Perzeptron und Ablauf Perzeptron-Lernalgorithmus

{{% /challenges %}}
