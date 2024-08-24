---
archetype: lecture-cy
title: "NN01 - Das Perzeptron"
linkTitle: "NN01 - Perzeptron"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
outcomes:
  - k2: "Arten des maschinellen Lernens"
  - k2: "Formalisierung eines ML-Problems, insbesondere Klassifizierung: Datensatz, Merkmalraum, Hyphotesenfunktion, Zielfunktion"
  - k2: "Perzeptron als linearer Klassifizierer"
  - k2: "Entscheidungsgrenze"
  - k3: "Berechnung der Entscheidungsgrenze"
  - k3: "Perzeptron Lernalgorithmus"
# readings:
#   - key: "Russell2020"
#     comment: "Kapitel 2 und 3"
#   - key: "Ertel2017"
quizzes:
  - link: "https://www.hsbi.de/elearning/goto.php?target=tst_1106589&client_id=FH-Bielefeld"
    name: "Selbsttest Intro ML (ILIAS)"
assignments:
  - topic: sheet-nn-perceptron
youtube:
  - link: "https://youtu.be/IJdiwITTC9Y"
    name: "NN1.1 - Einführung"
  - link: "https://youtu.be/oWcvFyLgqYc"
    name: "NN1.2 - Fallstudie und Formalisierung"
  - link: "https://youtu.be/ZvWpI0Doocc"
    name: "NN1.3 - Das Perzeptron Modell"
  - link: "https://youtu.be/8Rdw2NBCCJk"
    name: "NN1.4 - Perzeptron Beispiel"
  - link: "https://youtu.be/JD8Qsg8_kQI"
    name: "NN1.5 - Der Perzeptron Lernalgorithmus"
attachments:
  - link: "https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/master/lecture/nn/files/NN01-Das_Perzeptron.pdf"
    name: "NN01-Das_Perzeptron.pdf"
---


## Kurze Übersicht

### Definition "Maschinelles Lernen"
Fähigkeit zu lernen, ohne explizit programmiert zu werden. (Arthur Samuel, 1959)

### Arten des Lernens

*   Überwachtes Lernen (e.g. Klassifizierung, Regression)
*   Unüberwachtes Lernen (e.g. Clustering, Dimensionsreduktion)
*   Bestärkendes Lernen (e.g. Schach spielen)


### Formalisierung

*   Zielfunktion $f$
*   Merkmalraum (input space)
*   Ausgaberaum (output space)
*   Datensatz $\mathcal{D}$
*   Hypothesenmenge $\mathcal{H}$
*   Lernalgorithmus $\mathcal{A}$


### Das Perzeptron
Ein einfaches Modell für die **binäre Klassifizierung**

*   Bilde gewichtete Summe (Linearkombination) der Merkmale
*   Vergleiche das Ergebnis mit einem Schwellenwert
    *   Positiv, falls über dem Schwellenwert
    *   Negativ, falls unter dem Schwellenwert
*   Gewichte und Schwellenwert sind unbekannte Parameter des Modells, die es zu lernen gilt > siehe **Perzeptron Lernalgorithmus**
