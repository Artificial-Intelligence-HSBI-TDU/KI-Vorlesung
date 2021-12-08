---
type: assignment
title: "Blatt 08: Overfitting"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
hidden: true
weight: 8
sketch: true
---

## A8.1: Lineares MLP (2P)

Gegeben sei ein MLP mit linearen Aktivierungsfunktionen, d.h. für jedes Neuron berechnet sich der Output durch die gewichtete Summe der Inputs: $ y = g(w^T x) $, wobei $ g(z) = z $ gilt, also $ y = w^T x $.
Zeigen Sie, dass dieses Netz durch eine einzige Schicht mit linearen Neuronen ersetzt werden kann. Betrachten Sie dazu ein zweilagiges Netz bestehend aus einer Ausgabe- und einer versteckten Schicht.

*Thema*: Verständnis Bedeutung nichtlinearer Aktivierungsfunktionen


## A8.2: Perzeptron-Netze (2P)

Konstruieren Sie ein Netz mit drei Perzeptrons, welches für zwei Eingabevariablen x1 und x2 die in der folgenden Abbildung blau-grau dargestellten Bereiche mit +1 klassifiziert. Benutzen Sie die sign-Funktion als Aktivierungsfunktion.

{{< img src="images/perzeptron_netz.png" title="Abbildung 1" width="80%" >}}


## A8.3: Tensorflow Playgroun (3P)

Benutzen Sie den [Neural Network Playground] um folgende Experimente durchzuführen.

*   Stellen Sie ein MLP mit einer versteckten Schicht mit zwei Neuronen auf. Trainieren Sie das Netzwerk auf dem kreisförmigen Datensatz (Circle) mehrmals mit jeweils den Aktivierungsfunktionen ReLU, tanh und Sigmoid (klicken Sie dazu einfach auf den Play Knopf). 
Was passiert, wenn Sie die Anzahl der Neuronen in der versteckten Schicht auf drei erhöhen? Wie schaut die Entscheidungsgrenze aus? Wie schnell wird sie berechnet? Können alle Datenpunkte jedes mal korrekt klassifiziert werden?

*   Trainieren Sie ein Netzwerk mit zwei versteckten Schichten mit jeweils 6 Neuronen einige Male auf dem spiralförmigen Datensatz (rechts unten). Wie viele Epochen dauert das Training? Beobachten Sie Training- und Testkosten: liegt eine Überanpassung vor?
    Untersuchen Sie die Ausgaben der einzelnen Zellen, in dem Sie die Maus über die jeweilige Zelle bewegen. Bemerken Sie einen wesentlichen Unterschied in den Ausgaben der ersten Schicht im Vergleich zu der zweiten Schicht?
    Erhöhen Sie die Schichtanzahl auf drei, mit jeweils 7 Neuronen pro Schicht. Was können Sie über die Trainingszeit und Kosten sagen? Untersuchen und vergleichen Sie wieder die Ausgaben der Zellen in den drei Schichten.