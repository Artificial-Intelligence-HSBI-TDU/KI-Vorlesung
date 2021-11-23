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

*   (1.5P) Das Perzeptron kann zur Ausführung zahlreicher logischer Funktionen verwendet werden. Implementieren Sie die binären Logikfunktionen UND, ODER und KOMPLEMENT und demonstrieren Sie Ihre Implementierung in der Übung/im Praktikum.
*   (0.5P) Eine grundlegende Einschränkung des Perzeptrons besteht darin, dass es die EXKLUSIV-ODER-Funktion nicht implementieren kann. Erklären Sie den Grund für diese Einschränkung.

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

Es soll das lineare Regressionsmodell $ h(x) = w_0 + w_1 x $ mit diesen Daten trainiert werden, wobei die zu minimierende Kostenfunktion (durchschnittliche Summe der Fehlerquadrate) wie folgt gegeben ist:

$$ J(\mathbf{w}) = \frac{1}{2m} \sum^{m}_{j=1} (h(x^{(j)}) - y^{(j)} )^2 $$

*   (1P) Geben Sie $n$ und $m$ an und schreiben Sie die Kostenfunktion für die gegebenen Datenpunkte explizit auf. Berechnen Sie den Gradientenvektor $\nabla J$ und beschreiben Sie die Bedeutung dieses Vektors.

*   (2P) Seien die Gewichte in einem Iterationsschritt $w_0 = 1, w_1 = 1$. Führen Sie für die Lernraten  $ \alpha = 0.01$, $ \alpha  = 0.1$ und  $ \alpha = 1$, jeweils fünf aufeinanderfolgende Iterationen des Gradientenabstieg (Gradient Descent) Algorithmus
durch. Nehmen Sie das Geogebra-Arbeitsblatt [Gradientenabstieg](https://www.geogebra.org/classic/rcfffgsj) zu Hilfe.

    Erstellen Sie eine Tabelle mit den Spalten $w_0$, $w_1$, $J(\mathbf{w})$, $\nabla J(\mathbf{w})$, $\alpha \cdot \nabla J(\mathbf{w})$ und notieren Sie die zugehörigen Werte für jede Iteration. Erklären Sie, wie die Gewichtsaktualisierungen durchgeführt werden und geben Sie die dafür verwendete Formel an.
    
    Wie verändern sich die Kosten während des Gradientenabstieges für die unterschiedlichen Lernraten? Begründen Sie dieses Verhalten.

*Thema*: Verständnis und Ablauf Gradientenabstieg und Lernrate

{{% challenges %}}
## A6.5: Bonus: Perzeptron Lernalgorithmus II (2P)

Ziel dieser Aufgabe ist es, mit Hilfe eines Experiments ein Gefühl für die Laufzeit des Perzeptron-Lernalgorithmus (PLA) zu bekommen und eine Art empirische Approximation zu bestimmen.

*   Konstruieren Sie Ihren eigenen Datensatz $\mathcal{D}$ mit $m=10$ gleichförmig verteilten Zufallspunkten aus dem Bereich $\mathcal{X} = [−1, 1] \times [−1, 1] $.
*   Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte Punkte aus dem Bereich $ [−1, 1] \times [−1, 1] $. Verwenden Sie die Gerade, die durch diese zwei Punkte verläuft, als Ihre Zielfunktion $f$.
*   Werten Sie die Zielfunktion für jeden Datenpunkt $\mathbf{x}^{(j)}$ aus, um den entsprechenden Ausgangslabel $y^{(j)}$ zu erhalten.

Führen Sie nun PLA $1000$ mal hintereinander durch. Initialsieren Sie jedes mal die Gewichte mit $0$. Wählen Sie in jedem Schritt einen Punkt *zufällig* aus der Menge der falsch klassifizierten Punkte. Halten Sie für jeden Durchlauf fest, wie viele Schritte PLA benötigt, um zu der endgültigen Hypothese $h^{\*}$ zu konvergieren. Berechnen Sie am Ende die durchschnittliche Anzahl von benötigten Schritten. In welcher Größenordnung liegt es?

Wiederholen Sie das Experiment mit $m=100$ und $m=1000$ Datenpunkten. In welcher Größenordnung liegt die durchschnittliche Anzahl von benötigten Schritten in diesen Fällen?

Um eine zuverlässigere Schätzung zu erhalten, können Sie dasselbe Experiment mehrfach mit anderen zufällig generierten Datensätzen derselben Größe $m$ wiederholen und danach den Durchschnitt über alle Wiederholungen betrachten.

*Idee nach* Yaser S. Abu-Mostafa, Malik Magdon-Ismail, and Hsuan-Tien Lin. 2012. Learning From Data. AMLBook.

*Thema*: Verständnis Perzeptron und Ablauf Perzeptron-Lernalgorithmus

{{% /challenges %}}
