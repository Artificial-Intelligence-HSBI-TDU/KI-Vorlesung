---
type: lecture-cy
title: "NN5 - Multilayerperzeptron"
menuTitle: "NN5 - Multilayerperzeptron"
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

### MLP
*   Das Perzeptron kann nur lineare Funktionen modellieren.
*   Durch das Zusammenschließen von mehreren Perzeptronen entsteht ein mehrschichtiges Perzeptron, auch **Multi-Layer Perzeptron** (**MLP**), das komplexere Funktionen modellieren kann.
*   Ein MLP wird oft auch als **neuronales Netzwerk**, **Feed Forward Neural Network** oder  als **Fully Connected Neural Network** bezeichnet.
*   Die "inneren" Schichten eines Netzwerkes sind sogenannte **versteckte Schichten** (engl. hidden layer). Das sind alle Schichten ausgenommen der Eingangs- und Ausgangsschicht. 
*   Ein **tiefes neuronales Netzwerk** ist ein neuronales Netzwerk mit mindestens einer versteckten Schicht. 

### Graphische Übersicht und Vorwärtslauf
*   Ein Multi-Layer Perzeptron
    ![](images/mlp.png)
    Ein Vorwärtslauf (forward pass):
    $$ a^{[1]} = ReLU \left( W^{[1]} \cdot \mathbb{x} + b^{[1]} \right) \tag{1}$$
    $$ \hat{y} := a^{[2]} = \sigma \left( W^{[2]} \cdot a^{[1]} + b^{[2]} \right) \tag{2}$$



