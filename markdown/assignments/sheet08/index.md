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

{{< img src="images/perzeptron-netz.png" title="Abbildung 1" width="80%" >}}


