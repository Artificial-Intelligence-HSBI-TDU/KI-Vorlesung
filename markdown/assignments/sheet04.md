---
archetype: assignment
title: "Meilenstein 1.4: Entscheidungsbäume"
author: "Carsten Gips (FH Bielefeld)"
points: 10
weight: 4

hidden: true

sketch: true
---



## A5.1: Handsimulation CAL2 (2P)

Zeigen Sie mit einer Handsimulation, wie CAL2 mit dem folgenden
Trainingsdatensatz schrittweise einen Entscheidungsbaum generiert.
Nutzen Sie die linearisierte Schreibweise.

| Beispiel | $x_1$ | $x_2$ | $x_3$ | Klasse |
|:--------:|:-----:|:-----:|:-----:|:------:|
|    1     |   a   |   a   |   a   |   1    |
|    2     |   a   |   b   |   a   |   2    |
|    3     |   a   |   a   |   b   |   1    |
|    4     |   b   |   a   |   b   |   1    |
|    5     |   a   |   a   |   c   |   1    |
|    6     |   b   |   b   |   b   |   2    |

*Thema*: Anwendung von CAL2



## A5.2: CAL2: Anforderungen an Trainingsmenge (1P)

Welchen Entscheidungsbaum würde CAL2 lernen, wenn dem Trainingsdatensatz aus
der vorigen Aufgabe der Vektor $((a,a,b), 2)$ als Beispiel Nr. 7 hinzugefügt
werden würde?

*Thema*: Voraussetzungen an Trainingsdatensatz



## A5.3: Pruning (1P)

Vereinfachen Sie schrittweise den Baum
$$x_3(x_2(x_1(C,A), x_1(B,A)), x_1(x_2(C,B), A))$$
so weit wie möglich.

Nutzen Sie die linearisierte Schreibweise.
Geben Sie die jeweils verwendete Regel an.

*Thema*: Anwendung der Transformations- und Pruning-Regeln



## A5.4: Handsimulationen CAL3 und ID3 (3P)

Es ist wieder Wahlkampf: Zwei Kandidaten O und M bewerben sich um die
Kanzlerschaft. Die folgende Tabelle zeigt die Präferenzen von sieben Wählern.

Führen Sie je eine Handsimulation mit
-   (1P) CAL3 ($S_1=4$, $S_2=0.7$) und
-   (2P) ID3 durch.

| Nr. | Alter    | Einkommen | Bildung  | Kandidat |
|:----|:---------|:----------|:---------|:---------|
| 1   | $\ge 35$ | hoch      | Abitur   | O        |
| 2   | $< 35$   | niedrig   | Master   | O        |
| 3   | $\ge 35$ | hoch      | Bachelor | M        |
| 4   | $\ge 35$ | niedrig   | Abitur   | M        |
| 5   | $\ge 35$ | hoch      | Master   | O        |
| 6   | $< 35$   | hoch      | Bachelor | O        |
| 7   | $< 35$   | niedrig   | Abitur   | M        |

*Thema*: Verständnis algorithmischer Ablauf CAL3 und ID3



## A5.5: Machine Learning mit Weka (3P)

Weka ([cs.waikato.ac.nz/ml/weka](https://www.cs.waikato.ac.nz/ml/weka/)) ist eine
beliebte Sammlung von (in Java implementierten) Algorithmen aus dem Bereich des
Maschinellen Lernens. Laden Sie sich das Tool in der aktuellen stabilen Version
herunter und machen Sie sich mit der beiliegenden Dokumentation vertraut.

Laden Sie sich die Beispieldatensätze "Zoo" (`zoo.csv`) und "Restaurant" (`restaurant.csv`)
aus dem AIMA-Repository ([github.com/aimacode/aima-data](https://github.com/aimacode/aima-data))
herunter. Zum Laden der Beispieldatensätze in Weka müssen die `.csv`-Dateien eine
Kopfzeile mit den Namen der Attribute haben. Passen Sie die Dateien entsprechend an
und laden Sie diese im Reiter "Pre-Process" mit "Open file ...".

*Hinweis*: Wenn Sie *Weka 3.6* einsetzen, sind alle für dieses Blatt erforderlichen
Algorithmen bereits vorhanden. In neueren Versionen müssen Sie in der Weka-Haupt-GUI
den Paketmanager unter "Tools" starten und dort nach einem Paket suchen, welches ID3
enthält, und dieses Paket nachinstallieren.

### Training mit J48 (1P)

Wechseln Sie auf den Reiter "Classify" und wählen Sie mit dem Button "Choose" den
Entscheidungsbaum-Lerner J48 aus. (Dies ist eine Java-Implementierung von C4.5. Die
ID3-Implementierung funktioniert für den `zoo.csv`-Datensatz leider nicht ...)

Lernen Sie für die beiden Datensätze je einen Entscheidungsbaum. Wie sehen die Bäume
aus? Wie hoch ist jeweils die Fehlerrate für den Trainingssatz? (Stellen Sie unter
"Test options" den Haken auf "Use training set".) Interpretieren Sie die **Confusion
Matrix**.

### ARFF-Format (1P)

Lesen Sie in der beiliegenden Doku zum Thema "ARFF" nach. Dabei handelt es sich um ein
spezielles Datenformat, womit man Weka mitteilen kann, welche Attribute es gibt und
welchen Typ diese haben und welche Werte auftreten dürfen.

Erklären Sie die Unterschiede zwischen "nominal", "ordinal" (bzw. "numeric") und "string".

Konvertieren Sie den Zoo- und Restaurantdatensatz in das ARFF-Format. Beachten Sie, dass
die ID3-Implementierung von Weka nicht mit bestimmten Attributtypen umgehen kann.

### Training mit ID3 und J48 (1P)

Trainieren Sie für die im letzten Schritt erstellten Datensätze (Zoo und Restaurant) im
ARFF-Format erneut Entscheidungsbäume. Nutzen Sie diesmal sowohl ID3 als auch J48.

Vergleichen Sie wieder die Ergebnisse (Entscheidungsbäume, Fehlerraten, Confusion Matrix)
untereinander und mit den Ergebnissen aus dem J48-Lauf mit den `.csv`-Dateien.

*Thema*: Kennenlernen von Weka
