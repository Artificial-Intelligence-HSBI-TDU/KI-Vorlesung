---
archetype: assignment
title: "Blatt 06: Naive Bayes"
author: "Carsten Gips (HSBI)"
points: "10 Punkte"

hidden: true
---



## A06.1: Wahlkampf mit Naive Bayes (3P)

Betrachten Sie erneut das Szenerio von Aufgabe A05.1 auf [Blatt 05](sheet05.md).

"Trainieren" Sie für den gezeigten Datensatz einen Naive Bayes Klassifikator (manuell).

Welchen Kandidaten würde der Klassifikator einem Wähler ($< 35$, niedrig, Bachelor) zuordnen?


## A06.2: Textklassifikation mit Naive Bayes: Spam-Erkennung (6P)

Laden Sie sich einen geeigneten Datensatz herunter, beispielsweise das
["Spam Mails Dataset" (Kaggle)](https://www.kaggle.com/datasets/venky73/spam-mails-dataset).
Dieser besteht aus knapp 5000 vorklassifizierten Einträgen (Mails mit den Klassen `ham` bzw. `spam`).

(2P) Bereiten Sie diesen Datensatz für das Training eines Naive Bayes Klassifikators vor.

(2P) Implementieren Sie einen Naive Bayes Klassifikator oder machen Sie sich mit existierenden
Implementierungen vertraut, beispielsweise in [NLTK](https://www.nltk.org/index.html) oder
[scikit-learn](https://scikit-learn.org/stable/index.html) oder [Weka](https://www.cs.waikato.ac.nz/ml/weka/).

(2P) Splitten Sie den vorbereiteten Datensatz in eine Trainings- und eine Testmenge auf und
trainieren Sie den Naive Bayes Klassifikator. Wie sieht ihr Klassifikator aus, was sind die
wichtigsten Begriffe jeweils für die Klasse `spam` bzw. `ham`? Bewerten Sie das Testergebnis.
