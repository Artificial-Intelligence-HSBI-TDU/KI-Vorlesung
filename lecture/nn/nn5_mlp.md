---
archetype: lecture-cy
title: "NN5 - Multilayer Perzeptron"
menuTitle: "NN5 - MLP"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
outcomes:
  - k2: "Multi-Layer Perzeptron (MLP): Graphische Darstellung, Vorwärtslauf"
  - k2: "Aktivierungsfunktionen (insbesondere ReLU)"
  - k3: "Vorwärtslauf (forward pass) für ein gegebenes MLP"
  - k3: "Berechnung der einzelnen Aktivierungen"
# readings:
#   - key: "Russell2020"
#     comment: "Kapitel 2 und 3"
#   - key: "Ertel2017"
quizzes:
   - link: "https://www.hsbi.de/elearning/goto.php?target=tst_1106592&client_id=FH-Bielefeld"
     name: "Selbsttest Multilayer Perzeptron (ILIAS)"
assignments:
    - topic: sheet10
youtube:
    - link: "https://youtu.be/7ltwa5WWuKI"
      name: "NN5.1 - MLP Forward Propagation"
attachments:
  - link: "https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/master/lecture/nn/files/NN5-MLP.pdf"
    name: "NN5-MLP.pdf"
challenges: |
    **Lineares MLP**

    Gegeben sei ein MLP mit linearen Aktivierungsfunktionen, d.h. für jedes Neuron berechnet sich der 
    Output durch die gewichtete Summe der Inputs: $y = g(w^T x)$, wobei $g(z) = z$ gilt, also $y = w^T x$.
    Zeigen Sie, dass dieses Netz durch eine einzige Schicht mit linearen Neuronen ersetzt werden kann. 

    Betrachten Sie dazu ein zwei-schichtiges Netz (i.e. bestehend aus Eingabe-Schicht, Ausgabe-Schicht und einer versteckten Schicht) 
    und schreiben Sie die Gleichung auf, die die Ausgabe als Funktion der Eingabe darstellt.

    Als Beispiel sei das zwei-schichtige MLP mit den folgenden Gewichten und Bias-Werten gegeben:

    Schicht 1: $W_1 = [[2, 2],[3, -2]]$, $b_1 = [[1],[-1]]$  
    Schicht 2: $W_2 = [[-2, 2]]$, $b_2 = [[-1]]$

    * Stellen Sie dieses Netzwerk graphisch dar. Was ist die Anzahl der Zellen in den einzelnen Schichten? 
    * Berechnen Sie die Ausgabe für eine Beispiel-Eingabe Ihrer Wahl.
    * Stellen Sie ein ein-schichtiges Netz auf, das für jede Eingabe die gleiche Ausgabe wie das obige Netzwerk berechnet und es somit ersetzen könnte.   
---


## Kurze Übersicht

### Multilayer Perzeptron (MLP)
*   Das Perzeptron kann nur linear separable Daten korrekt klassifizieren.
*   Durch das Zusammenschließen von mehreren Perzeptronen kann man ein mehrschichtiges Perzeptron (engl. Multilayer Perceptron) aufstellen, das komplexere Funktionen modellieren kann.
*   Ein MLP wird oft auch als **Feed Forward Neural Network** oder  als **Fully Connected Neural Network** bezeichnet.
*   Die "inneren" Schichten eines solchen Netzwerkes sind sogenannte **versteckte Schichten** (engl. hidden layer). Das sind alle Schichten ausgenommen die Eingangs- und Ausgangsschicht.

### Graphische Übersicht und Vorwärtslauf
*   Ein Multi-Layer Perzeptron
    ![](images/mlp.png)
    Ein Vorwärtslauf (forward pass):
    $$a^{[1]} = ReLU \left( W^{[1]} \cdot \mathbb{x} + b^{[1]} \right) \tag{1}$$
    $$\hat{y} := a^{[2]} = \sigma \left( W^{[2]} \cdot a^{[1]} + b^{[2]} \right) \tag{2}$$
