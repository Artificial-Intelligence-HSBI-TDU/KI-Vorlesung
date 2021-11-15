---
type: lecture-cy
title: "NN1 - Das Perzeptron"
menuTitle: "NN1 - Perzeptron"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 1
outcomes: false
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
    - id: IJdiwITTC9Y
    - id: oWcvFyLgqYc
    - id: ZvWpI0Doocc
    - id: 8Rdw2NBCCJk
    - id: JD8Qsg8_kQI
---


<div style="text-align:center;">

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
*   Datensatz $ \mathcal{D} $
*   Hypothesenmenge $ \mathcal{H} $
*   Lernalgorithmus $ \mathcal{A} $


### Das Perzeptron
Ein einfaches Modell für die **binäre Klassifizierung**

*   Bilde gewichtete Summe (Linearkombination) der Merkmale 
*   Vergleiche das Ergebnis mit einem Schwellenwert
        
    *   Positiv, falls über dem Schwellenwert
    *   Negativ, falls unter dem Schwellenwert
    *   Gewichte und Schwellenwert sind unbekannte Parameter des Modells, die es zu lernen gilt > siehe **Perzeptron Lernalgorithmus**



</div>


