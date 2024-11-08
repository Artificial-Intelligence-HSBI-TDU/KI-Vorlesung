---
archetype: assignment
title: "Übungsblatt: Naive Bayes"
author: "Carsten Gips (HSBI)"
points: "10 Punkte"

hidden: true
---



## NB.01: Wahlkampf mit Naive Bayes (4P)

Betrachten Sie erneut das Szenerio von [Aufgabe DTL.01](sheet-dtl.md).

(2P) "Trainieren" Sie für den gezeigten Datensatz einen Naive Bayes Klassifikator (manuell).

(2P) Welchen Kandidaten würde der Klassifikator einem Wähler ($< 35$, niedrig, Bachelor)
zuordnen? Erklären Sie die Arbeitsweise des Klassifikators.


## NB.02: Textklassifikation mit Naive Bayes: Spam-Erkennung (6P)

Laden Sie sich den Datensatz
["Spam Mails Dataset" (Kaggle)](https://www.kaggle.com/datasets/venky73/spam-mails-dataset)
herunter. Dieser besteht aus knapp 5000 vorklassifizierten Einträgen (Mails mit den Klassen
`ham` bzw. `spam`).

(2P) Bereiten Sie diesen Datensatz für das Training eines Naive Bayes Klassifikators vor.
Überlegen Sie sich, was mögliche Merkmale sein könnten und schreiben Sie sich ein Skript,
welches den Datensatz entsprechend bearbeitet/transformiert.
(_Tipp_: Ein ["Bag-of-Words"](https://en.wikipedia.org/wiki/Bag-of-words_model) ist ein guter
 Anfang.)

(2P) Implementieren Sie einen Naive Bayes Klassifikator in einer Programmiersprache Ihrer Wahl
oder machen Sie sich mit existierenden Implementierungen vertraut, beispielsweise in
[NLTK](https://www.nltk.org/index.html) oder
[scikit-learn](https://scikit-learn.org/stable/index.html) oder
[Weka](https://www.cs.waikato.ac.nz/ml/weka/).

(2P) Splitten Sie den vorbereiteten Datensatz in eine Trainings- und eine Testmenge auf und
trainieren Sie den Naive Bayes Klassifikator. Wie sieht ihr Klassifikator aus, was sind die
wichtigsten Begriffe jeweils für die Klasse `spam` bzw. `ham`? Bewerten Sie das Testergebnis.
