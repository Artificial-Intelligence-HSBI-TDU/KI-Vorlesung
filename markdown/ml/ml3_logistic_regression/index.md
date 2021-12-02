---
type: lecture-cy
title: "NN3 - Logistische Regression"
menuTitle: "NN3 - Logistische Regression"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 3
outcomes: true
# readings:
#   - key: "Russell2020"
#     comment: "Kapitel 2 und 3"
#   - key: "Ertel2017"
# quizzes:
#   - link: XYZ
#     name: "Testquizz (URL from 'Invite more Players')"
assignments:
    - topic: sheet07
youtube:
    - id: GpJmjrqA5RY
    - id: z-jFZeNWMRc
    - id: ruuCKupOhCE
    - id: kPAZsr-r1LA
---

## Kurze Übersicht

### Formalisierung
*   Ausgabe $y$ ist reelle Zahl aus dem stetigen Bereich $(0,1)$
*   Die **Hypothesenfunktion** ist:
    $$ h(\mathbf{x}) = \sigma (\mathbf{w}^T\mathbf{x}) = \sigma (w_0 + w_1x_1 + w_2x_2 + \ldots + w_nx_n) $$

*   Der **Kreuzentropie Verlust** (engl. Cross-Entropy) für einen Datenpunkt $ \mathbf{x} $: 
    $$ \mathcal{L}(a, y) =  - y  \log(a) - (1-y)  \log(1-a)\tag{3} $$
    wobei hier $a := \hat{y} $ die Vorhersage ist.

*   Die Kosten als durchschnittlicher Verlust über alle Datenpunkte $ x^{(1)}, \ldots, x^{(m)} $:
    $$ J = \frac{1}{m} \sum_{i=1}^m \mathcal{L}(a^{(i)}, y^{(i)})\tag{4} $$


### Gradientenabstieg
*   Der Gradient für einen Datenpunkt $ \mathbf{x} $:
    $$  \frac{\partial \mathcal{L}}{\partial w} = (a-y)x$$
*   Der Gradient für alle Datenpunkte $X$ in Matrix-Notation:
    $$ \nabla J = \frac{\partial J}{\partial w} = \frac{1}{m}X(A-Y)^T\tag{8}$$


### Graphische Übersicht
*   Logistische Regression
    ![](images/log_reg_nn.png)
*   Lineare Regression
    ![](images/lin_reg_nn.png)
*   Perzeptron
    ![](images/perzeptron_nn.png)


