---
title: "NN03 - Logistische Regression"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
outcomes:
  - k2: "Logistische Regression aus Sicht neuronaler Netze: Graphische Darstellung, Vergleich mit Perzeptron und linearer Regression"
  - k2: "Formalisierung"
  - k2: "Sigmoid-Aktivierungsfunktion"
  - k2: "Verlust- und Kosten (Cross-Entropy Loss)"
  - k3: "Gradientenabstieg für logistische Regression"
# readings:
#   - key: "Russell2020"
#     comment: "Kapitel 2 und 3"
#   - key: "Ertel2017"
quizzes:
  - link: "https://www.hsbi.de/elearning/goto.php?target=tst_1106591&client_id=FH-Bielefeld"
    name: "Selbsttest Logistische Regression (ILIAS)"
assignments:
  - topic: sheet-nn-regression
youtube:
  - link: "https://youtu.be/GpJmjrqA5RY"
    name: "NN3.1 - Logistische Regression - Intro"
  - link: "https://youtu.be/z-jFZeNWMRc"
    name: "NN3.2 - Logistische Regression - Hypothesenfunktion und Bsp"
  - link: "https://youtu.be/ruuCKupOhCE"
    name: "NN3.3 - Logistische Regression - Verlust und Kosten"
  - link: "https://youtu.be/kPAZsr-r1LA"
    name: "NN3.4 - Logistische Regression - Gradientenabstieg"
attachments:
  - link: "https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/master/lecture/nn/files/NN03-Logistische_Regression.pdf"
    name: "NN03-Logistische_Regression.pdf"
---

## Kurze Übersicht

### Formalisierung
*   Ausgabe $y$ ist reelle Zahl aus dem stetigen Bereich $(0,1)$
*   Die **Hypothesenfunktion** ist:
    $$h(\mathbf{x}) = \sigma (\mathbf{w}^T\mathbf{x}) = \sigma (w_0 + w_1x_1 + w_2x_2 + \ldots + w_nx_n) \tag{1}$$

*   Der **Kreuzentropie Verlust** (engl. Cross-Entropy) für einen Datenpunkt $\mathbf{x}$:
    $$\mathcal{L}(a, y) =  - y  \log(a) - (1-y)  \log(1-a)\tag{2}$$
    wobei hier $a := \hat{y}$ die Vorhersage ist.

*   Die Kosten als durchschnittlicher Verlust über alle Datenpunkte $x^{(1)}, \ldots, x^{(m)}$:
    $$J = \frac{1}{m} \sum_{i=1}^m \mathcal{L}(a^{(i)}, y^{(i)})\tag{3}$$


### Gradientenabstieg
*   Der Gradient für einen Datenpunkt $\mathbf{x}$:
    $$\frac{\partial \mathcal{L}}{\partial w} = (a-y)x \tag{4}$$
*   Der Gradient für alle Datenpunkte $X$ in Matrix-Notation:
    $$\nabla J = \frac{\partial J}{\partial w} = \frac{1}{m}X(A-Y)^T\tag{5}$$


### Graphische Übersicht
*   Logistische Regression
    ![](images/log_reg_nn.png)
*   Lineare Regression
    ![](images/lin_reg_nn.png)
*   Perzeptron
    ![](images/perzeptron_nn.png)
