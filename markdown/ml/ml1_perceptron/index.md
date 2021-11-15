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

<h2>Kurze Übersicht</h2>

<h4>Definition "Maschinelles Lernen"</h4>
Fähigkeit zu lernen, ohne explizit programmiert zu werden. (Arthur Samuel, 1959)

<h4>Arten des Lernens</h4>
<ul>
<li>Überwachtes Lernen (e.g. Klassifizierung, Regression)</li>
<li>Unüberwachtes Lernen (e.g. Clustering, Dimensionsreduktion)</li>
<li>Bestärkendes Lernen (e.g. Schach spielen)</li>
</ul>

<h4>Formalisierung</h4>
<ul>
<li>Zielfunktion f</li>
<li>Merkmalraum (input space)</li>
<li>Ausgaberaum (output space)</li>
<li>Datensatz D</li>
<li>Hypothesenmenge H</li>
<li>Lernalgorithmus A</li>
</ul>

<h4>Das Perzeptron</h4>
Ein einfaches Modell für die <b>binäre Klassifizierung</b>

<ul>
    <li>Bilde gewichtete Summe (Linearkombination) der Merkmale </li>
    <li>Vergleiche das Ergebnis mit einem Schwellenwert
        <ul>
        <li>Positiv, falls über dem Schwellenwert</li>
        <li>Negativ, falls unter dem Schwellenwert</li></ul></li>
    <li> Gewichte und Schwellenwert sind unbekannte Parameter des Modells, die es zu lernen gilt > siehe <b>Perzeptron Lernalgorithmus</b> </li>
</ul>


</div>


