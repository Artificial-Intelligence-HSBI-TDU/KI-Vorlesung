# Übungsblatt: Entscheidungsbäume (Decision Tree Learner DTL)

## DTL.01: Entscheidungsbäume mit CAL3 und ID3 (6P)

Es ist wieder Wahlkampf: Zwei Kandidaten O und M bewerben sich um die
Kanzlerschaft. Die folgende Tabelle zeigt die Präferenzen von sieben
Wählern.

| Nr. | Alter      | Einkommen | Bildung  | Kandidat |
|:----|:-----------|:----------|:---------|:---------|
| 1   | $`\ge 35`$ | hoch      | Abitur   | O        |
| 2   | $`< 35`$   | niedrig   | Master   | O        |
| 3   | $`\ge 35`$ | hoch      | Bachelor | M        |
| 4   | $`\ge 35`$ | niedrig   | Abitur   | M        |
| 5   | $`\ge 35`$ | hoch      | Master   | O        |
| 6   | $`< 35`$   | hoch      | Bachelor | O        |
| 7   | $`< 35`$   | niedrig   | Abitur   | M        |

Trainieren Sie nacheinander mit den Verfahren CAL3 (3P) und ID3 (3P) auf
der obigen Trainingsmenge je einen Entscheidungsbaum. Nutzen Sie für
CAL3 dabei die Schwellen $`S_1=4`$ und $`S_2=0.7`$.

Sie können dafür eine Handsimulation anwenden oder die Algorithmen
implementieren. Sie können gern auch die Java-Klassen im Paket
[`aima.core.learning`](https://github.com/aimacode/aima-java/blob/AIMA3e/aima-core/src/main/java/aima/core/learning/learners/DecisionTreeLearner.java)
bzw. die Python-Klassen in
[`learning.py`](https://github.com/aimacode/aima-python/blob/master/learning.py)
als Ausgangspunkt nutzen.[^1]

## DTL.02: Pruning (1P)

Vereinfachen Sie schrittweise den Baum

``` math
x_3(x_2(x_1(C,A), x_1(B,A)), x_1(x_2(C,B), A))
```

so weit wie möglich.

Nutzen Sie die linearisierte Schreibweise. Geben Sie die jeweils
verwendete Regel an.

*Thema*: Anwendung der Transformations- und Pruning-Regeln

## DTL.03: Machine Learning mit Weka (3P)

Weka
([waikato.github.io/weka-wiki/](https://waikato.github.io/weka-wiki/))
ist eine beliebte Sammlung von (in Java implementierten) Algorithmen aus
dem Bereich des Maschinellen Lernens. Laden Sie sich das Tool in der
aktuellen stabilen Version herunter und machen Sie sich mit der
beiliegenden Dokumentation vertraut.

Laden Sie sich die Beispieldatensätze “Zoo” (`zoo.csv`) und “Restaurant”
(`restaurant.csv`) aus dem AIMA-Repository
([github.com/aimacode/aima-data](https://github.com/aimacode/aima-data))
herunter.[^2] Zum Laden der Beispieldatensätze in Weka müssen die
`.csv`-Dateien eine Kopfzeile mit den Namen der Attribute haben. Passen
Sie die Dateien entsprechend an und laden Sie diese im Reiter
“Pre-Process” mit “Open file …”.

*Hinweis*: Wenn Sie *Weka 3.6* einsetzen, sind alle für dieses Blatt
erforderlichen Algorithmen bereits vorhanden. In neueren Versionen
müssen Sie in der Weka-Haupt-GUI den Paketmanager unter “Tools” starten
und dort nach einem Paket suchen, welches ID3 enthält, und dieses Paket
nachinstallieren.

1.  Training mit J48 (1P)

    Wechseln Sie auf den Reiter “Classify” und wählen Sie mit dem Button
    “Choose” den Entscheidungsbaum-Lerner J48 aus. (Dies ist eine
    Java-Implementierung von C4.5. Die ID3-Implementierung funktioniert
    für den `zoo.csv`-Datensatz leider nicht …)

    Lernen Sie für die beiden Datensätze je einen Entscheidungsbaum. Wie
    sehen die Bäume aus? Wie hoch ist jeweils die Fehlerrate für den
    Trainingssatz? (Stellen Sie unter “Test options” den Haken auf “Use
    training set”.) Interpretieren Sie die **Confusion Matrix**.

2.  ARFF-Format (1P)

    Lesen Sie in der beiliegenden Doku zum Thema “ARFF” nach. Dabei
    handelt es sich um ein spezielles Datenformat, womit man Weka
    mitteilen kann, welche Attribute es gibt und welchen Typ diese haben
    und welche Werte auftreten dürfen.
    ([Link](https://waikato.github.io/weka-wiki/formats_and_processing/arff/))

    Erklären Sie die Unterschiede zwischen “nominal”, “ordinal” (bzw.
    “numeric”) und “string”.

    Konvertieren Sie den Zoo- und Restaurantdatensatz in das
    ARFF-Format. Beachten Sie, dass die ID3-Implementierung von Weka
    nicht mit bestimmten Attributtypen umgehen kann.

3.  Training mit ID3 und J48 (1P)

    Trainieren Sie für die im letzten Schritt erstellten Datensätze (Zoo
    und Restaurant) im ARFF-Format erneut Entscheidungsbäume. Nutzen Sie
    diesmal sowohl ID3 als auch J48.

    Vergleichen Sie wieder die Ergebnisse (Entscheidungsbäume,
    Fehlerraten, Confusion Matrix) untereinander und mit den Ergebnissen
    aus dem J48-Lauf mit den `.csv`-Dateien.

*Thema*: Kennenlernen von Weka

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 6672880 (markdown: switch to leaner yaml header (#438), 2025-08-09)<br></sub></sup></p></blockquote>

[^1]: Im Python-Code tauchen immer wieder “TODO”-Marker auf - bitte mit
    Vorsicht genießen!

[^2]: Zum Zoo-Datensatz gibt es die Erklärung direkt im Repo, für den
    Restaurant-Datensatz finden Sie die Erklärung im AIMA (Buch).
