---
type: lecture-cy
title: "NN5 - Multilayer Perzeptron"
menuTitle: "NN5 - Multilayer Perzeptron"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 5
outcomes: true
# readings:
#   - key: "Russell2020"
#     comment: "Kapitel 2 und 3"
#   - key: "Ertel2017"
# quizzes:
#   - link: XYZ
#     name: "Testquizz (URL from 'Invite more Players')"
# assignments:
#   - topic: blatt01
#   - topic: blatt02
youtube:
    - id: 7ltwa5WWuKI
---


## Kurze Übersicht

### Multilayer Perzeptron (MLP)
*   Das Perzeptron kann nur lineare Funktionen modellieren.
*   Durch das Zusammenschließen von mehreren Perzeptronen kann man ein mehrschichtiges Perzeptron (engl. Mulitlayer Perceptron) aufstellen, das komplexere Funktionen modellieren kann.
*   Ein MLP wird oft auch als **Deep Neural Network**, **Feed Forward Neural Network** oder  als **Fully Connected Neural Network** bezeichnet.
*   Die "inneren" Schichten eines solchen Netzerkes sind sogenannte **versteckte Schichten** (engl. hidden layer). Das sind alle Schichten ausgenommen der Eingangs- und Ausgangsschicht. 
*   Ein **tiefes neuronales Netzwerk** ist ein neuronales Netzwerk mit mindestens einer versteckten Schicht. 

### Graphische Übersicht und Vorwärtslauf
*   Ein Multi-Layer Perzeptron
    ![](images/mlp.png)
    Ein Vorwärtslauf (forward pass):
    $$ a^{[1]} = ReLU \left( W^{[1]} \cdot \mathbb{x} + b^{[1]} \right) \tag{1}$$
    $$ \hat{y} := a^{[2]} = \sigma \left( W^{[2]} \cdot a^{[1]} + b^{[2]} \right) \tag{2}$$



