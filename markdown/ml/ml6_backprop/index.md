---
type: lecture-cy
title: "NN6 - Backpropagation"
menuTitle: "NN6 - Backpropagation"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 6
outcomes: true
# readings:
#   - key: "Russell2020"
#     comment: "Kapitel 2 und 3"
#   - key: "Ertel2017"
# quizzes:
#   - link: XYZ
#     name: "Testquizz (URL from 'Invite more Players')"
assignments:
    - topic: sheet09
youtube:
    - id: G9x75THjueQ
    - id: 9Ku0dJ8pGrU
    - id: uvT4WPIIkwQ
sketch: false
---


## Kurze Übersicht

### Forwärts- und Rückwärtslauf

*   Im Forwärtslauf (engl. forward pass oder forward propagation) wird ein einzelner **Forwärtsschritt** von Schicht $[l-1]$ auf Schicht $[l]$ wie folgt berechnet:
    $$ Z^{[l]} = W^{[l]}A^{[l-1]} + b^{[l]} \tag{1} $$
    $$A^{[l]} = g(Z^{[l]}) \tag{2} $$
    Dabei bezeichnet $g$ die Aktivierungsfunktion (z.B. Sigmoid oder ReLU).

*   Im Rückwärtslauf (engl. backpropagation) werden in einem einzelnen **Rückwärtsschritt** von Schicht $[l]$ auf Schicht $[l-1]$ die folgenden Gradienten berechnet:

    $$dZ^{[l]} := \frac{\partial J }{\partial Z^{[l]}} = dA^{[l]} * g'(Z^{[l]}) \tag{3}$$

    $$ dW^{[l]} := \frac{\partial J }{\partial W^{[l]}} = \frac{1}{m} dZ^{[l]} A^{[l-1] T} \tag{4}$$

    $$ db^{[l]} := \frac{\partial J }{\partial b^{[l]}} = \frac{1}{m} \sum_{i = 1}^{m} dZ^{[l](i)}\tag{5}$$

    $$ dA^{[l-1]} := \frac{\partial J }{\partial A^{[l-1]}} = W^{[l] T} dZ^{[l]} \tag{6}$$

    Dabei steht "$*$" für die elementweise Multiplikation.

*   Beachten Sie:
    *   Der Forwärtsschirtt übernimmt $A^{[l-1]}$ von dem vorherigen Schritt und gibt $A^{[l]}$ an den nächsten Schritt weiter.
    *   Der Rückwärtschritt übernimmt $dA^{[l]}$ von dem vorherigen Schritt und gibt $dA^{[l-1]}$ an den nächsten Rückwärtsschritt weiter.


### Parameteraktualisierung

*   Die Aktualisierung der Parameter in Schicht $l$ erfolgt wie gewohnt durch:
    $$ W^{[l]} = W^{[l]} - \alpha \text{ } dW^{[l]} \tag{7}$$
    $$ b^{[l]} = b^{[l]} - \alpha \text{ } db^{[l]} \tag{8}$$
    Dabei bezeichnet $\alpha$ die Lernrate.
