---
type: lecture-cy
title: "NN8 - Performanzanalyse"
menuTitle: "NN8 - Performanzanalyse"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 8
outcomes: true
# readings:
#   - key: "Russell2020"
#     comment: "Kapitel 2 und 3"
#   - key: "Ertel2017"
# quizzes:
#   - link: XYZ
#     name: "Testquizz (URL from 'Invite more Players')"
youtube:
    - id: T-WYL28iwdU
    - id: fpsNzn4Moow
    - id: Wx_HAuIXTAQ
    - id: UAV7EpdIe6Q
    - id: vsmoYiArtrA
sketch: false
---


## Kurze Übersicht

### Performanzmetriken für Klassifizierungsprobleme

#### Wahrheitsmartix (engl. Confusion Matrix)
*   Gibt eine Übersicht über die Anzahl von richtig und falsch klassifizierten Datenpunkten
    *   $TP = $ # True Positives $ = $ Anzahl richtiger 1-Vorhersagen
    *   $FP = $ # False Positives $ = $ Anzahl falscher 1-Vorhersagen
    *   $FN = $ # False Negatives $ = $ Anzahl falscher 0-Vorhersagen
    *   $TN = $ # True Negatives $ = $ Anzahl richtiger 0-Vorhersagen

![Abbildung 1 - Wahrheitsmatrix](images/nn8-1.png)

#### Treffergenauigkeit (engl. Accuracy)
*   Anzahl richtig klassifizierter Datenpunkte, Erfolgsrate (engl. correct rate)
    $$ Accuracy = \frac{TP+TN}{TP+TN+FP+FN} $$

*   Accuracy vermittelt ein falsches Bild des Erfolges bei unausgewogenen Datensätzen \
    Beispiel: 
    *   Klasse 1 hat 10, Klasse 0 hat 990 Beispiele.
    *   Ein Modell, das immer 0 ausgibt, hat $990/1000 = 0.99$ Treffergenauigkeit, ist aber offensichtlich kein gutes Modell!

#### Prezision (engl. Precision)

*   Positive Predictive Value (PPV)
*   Antwort auf: Von allen **positiven Vorhersagen**, wie viele sind richtig?
    $$ Precision = \frac{TP}{TP + FP} $$
*   Wahrscheinlichkeit, dass ein positiv klassifiziertes Beispiel auch tatsächlich positiv ist.
*   Je näher an 1, desto besser.
*   Accuracy of **positive predictions**.

#### Recall

*   True Positive Rate, auch Sensitivität (engl. Sensitivity)
*   Antwort auf: Von allen **positiven Beispielen**, wie viele wurden richtig klassifiziert?
    $$ Recall = \frac{TP}{TP + FN} $$
*   Wahrscheinlichkeit, dass ein positives Beispiel tatsächlich als solches erkannt wird.
*   Je näher an 1, desto besser.
*   Accuracy of **positive examples**.

#### Precision-Recall Trade-off
*   Ein gutes Modell sollte hohe Precision und zugleich hohes Recall haben. 
*   Man kann die Prezision eines Modells beliebig erhöhen (durch das Vergrößern des Schwellenwertes bei der Klassifizierung), jedoch wird dabei das Recall abnehmen.
*   Genau so kann man das Recall eines Modells beliebig erhöhen (durch das Verkleinern des Schwellenwertes bei der Klassifizierung), jedoch wird dabei die Prezision abnehmen.
*   Es gilt ein gutes Trade-off zu finden. 
*   Eine Zwei-Zahlen-Metrik erschwert den Entscheidungsprozess bei Evaluierung und Modellauswahl.

#### $F_1$-Score (Harmonisches Mittel)

*   Fasst Prezision (P) und Recall (R) in einer Metrik zusammen (Harmonisches Mittel von P und R):
    $$ F_1-Score = \frac{2}{\frac{1}{P} + \frac{1}{R}} = 2 \cdot \frac{PR}{P + R} $$
*   Der $F_1$-Score wird nur dann hoch sein, wenn P und R beide hoch sind.
*   Je näher an 1, desto besser.
*   Sehr kleine P und R Werte ziehen den $F_1$-Score sehr stark herunter. In dieser Hinsicht gibt diese Metrik ein akkurates Bild über den Erfolg eines Modells.