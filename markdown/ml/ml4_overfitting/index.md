---
type: lecture-cy
title: "NN4 - Overfitting und Regularisierung"
menuTitle: "NN4 - Overfitting"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 4
outcomes: true
readings:
    - key: "AbuMostafa2012"
      comment: "Kapitel 4"
# quizzes:
#   - link: XYZ
#     name: "Testquizz (URL from 'Invite more Players')"
# assignments:
#   - topic: blatt01
#   - topic: blatt02
youtube:
    - id: KJLT-h_ChRo
    - id: BW91MYPUH_k
---


## Kurze Übersicht

### Nichtlineare Modelle
*   Einführung von neuen Merkmalen in Form von nichtlienaren Kombinationen der ursprünglichen Merkmale
*   Erhöhung der Komplexität des Modells ermöglicht das Erfassen von nichtlinearen Beziehungen
*   **Bemerkung**: Die Hypothesenfunktion bleibt linear in den Gewichten, es wird weiterhin logistische Regression in einem **erweiterten** Merkmalraum durchgeführt.

### Überanpassung und Regularisierung

*   Die **Überanpassung** (engl. Overfitting) ist eines der häufigsten und wichtigsten Probleme in ML und DL
*   "Was im Bereich des maschinellen Lernens Professionelle von Amateuren unterscheidet, ist ihre Fähigkeit mit Überanpassung umzugehen." [@AbuMostafa2012, S. 119]
*   Anzeichen von Überanpassung sind geringe Trainingskosten und hohe **Testkosten** (Kosten auf nicht-gesehenen Daten).
*   Regularisierung ist eine Maßnahme gegen Überanpassung. Man kann es sich als eine Reduktion in der Komplexität des Modells vorstellen.
*   Der Regularisierungsparameter $\lambda$ ist ein Hyperparameter. Je größer der $\lambda$-Wert, desto größer der Regularisierungseffekt.
*   Die **Kostentenfunktion** bei regulariserter logistischer Regression:
    $$ J = \frac{1}{m} \left\lbrack \sum_{i=1}^m \left( -y^{[i]}log(a^{[i]})-(1-y^{[i]})log(1-a^{[i]}) \right) + \frac{\lambda}{2} \sum_{j=1}^n (w^2_j)  \right\rbrack \tag{1} $$
*   Die **Gewichtsaktualisierung** mit Regularisierungsterm:
    $$ w_j := w_j - \frac{\alpha}{m} \left\lbrack \sum_{i=1}^m \left( ( a^{[i]} - y^{[i]} )x_j^{[i]} \right) + \lambda w_j  \right\rbrack \tag{2} $$



