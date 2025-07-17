---
title: "Übungsblatt: Naive Bayes"
author: "Carsten Gips (HSBI)"
points: "10 Punkte"
---

<!--  pandoc -s -f markdown -t markdown+smart-grid_tables-multiline_tables-simple_tables --columns=94 --reference-links=true  sheet-nb.md  -o xxx.md  -->

## NB.01: Wahlkampf mit Naive Bayes (4P)

Betrachten Sie erneut das Szenerio von [Aufgabe DTL.01].

(2P) "Trainieren" Sie für den gezeigten Datensatz einen Naive Bayes Klassifikator (manuell).

(2P) Welchen Kandidaten würde der Klassifikator einem Wähler ($< 35$, niedrig, Bachelor)
zuordnen? Erklären Sie die Arbeitsweise des Klassifikators.

## NB.02: Textklassifikation mit Naive Bayes: Spam-Erkennung (6P)

Laden Sie sich den Datensatz ["Spam Mails Dataset" (Kaggle)] herunter. Dieser besteht aus
knapp 5000 vorklassifizierten Einträgen (Mails mit den Klassen `ham` bzw. `spam`).

(2P) Bereiten Sie diesen Datensatz für das Training eines Naive Bayes Klassifikators vor.
Überlegen Sie sich, was mögliche Merkmale sein könnten und schreiben Sie sich ein Skript,
welches den Datensatz entsprechend bearbeitet/transformiert. (*Tipp*: Ein ["Bag-of-Words"] ist
ein guter Anfang.)

(2P) Implementieren Sie einen Naive Bayes Klassifikator in einer Programmiersprache Ihrer Wahl
oder machen Sie sich mit existierenden Implementierungen vertraut, beispielsweise in [NLTK]
oder [scikit-learn] oder [Weka].

(2P) Splitten Sie den vorbereiteten Datensatz in eine Trainings- und eine Testmenge auf und
trainieren Sie den Naive Bayes Klassifikator. Wie sieht ihr Klassifikator aus, was sind die
wichtigsten Begriffe jeweils für die Klasse `spam` bzw. `ham`? Bewerten Sie das Testergebnis.

  [Aufgabe DTL.01]: sheet-dtl.md
  ["Spam Mails Dataset" (Kaggle)]: https://www.kaggle.com/datasets/venky73/spam-mails-dataset
  ["Bag-of-Words"]: https://en.wikipedia.org/wiki/Bag-of-words_model
  [NLTK]: https://www.nltk.org/index.html
  [scikit-learn]: https://scikit-learn.org/stable/index.html
  [Weka]: https://waikato.github.io/weka-wiki/
