---
archetype: assignment
title: "Projekt 2: Poster"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 9

hidden: true
---

## Multilayer Perzeptron

Implementieren Sie Forwärts- und Rückwärtslauf eines Multilayer Perzeptrons und nutzen Sie Ihre MLP-Implementierung um eines der folgenden Klassifizierungsprobleme zu lösen:

*   Klassifizierung der handgeschriebenen Ziffern im [MNIST Datensatz](https://en.wikipedia.org/wiki/MNIST_database)
*   Klassifizierung der Blumenarten im [Iris-Datensatz](https://en.wikipedia.org/wiki/Iris_flower_data_set)

Sie können auch ein anderes, äquivalentes Klassifizierungsproblem Ihrer Wahl lösen.

In Ihrer Implementierung sollten die Anzahl der Schichten, die Anzahl der Zellen pro Schicht und die Aktivierungsfunktion für jede Schicht einstellbar sein und ein Experimentieren mit unterschiedlichen Konfigurationen erlauben. 

Hinweise zu den einzelnen Schritten (Initialisierung der Gewichte, Forwärtslauf, Berechnung der Kosten, Rückwärtslauf, Aktualisierung der Gewichte, Training, ...) finden Sie im [MLP-Starter-Code](files/mlp_starter.ipynb). Der Code im Starter ist als Anregung gedacht, Sie können auch unabhängig programmieren. Sie sollten auf jeden Fall alle Berechnungen in vektorisierter Form durchführen.

*   Laden Sie die Daten und legen Sie einen Teil als Testdaten zur Seite. Setzen Sie diese Testdaten auf keinen Fall während des Trainings Ihrer Modelle ein.
*   Trainieren Sie **mindestens drei Netzwerke** mit unterschiedlichen Konfigurationen und vergleichen Sie die Ergebnisse. 
*   Stellen Sie für alle Experimente den Verlauf der Trainingskosten graphisch dar. Geben Sie am Ende des Trainings die Trainings-Accuracy (Erfolgsrate auf den Trainingsdaten) und Test-Accuracy (Erfolgsrate auf den Testdaten) an, um die Performanz Ihrer Modelle zu vergleichen. 
*   Untersuchen Sie Ihre Modelle in Bezug auf Überanpassung.

Erstellen Sie ein DIN-A2-Poster, auf dem Sie **Ihren Datensatz**, **Ihre Modelle** und die **Ergebnisse Ihrer Experimente** übersichtlich präsentieren. Beschränken Sie sich dabei
auf die wesentlichen Aussagen. Ihr Poster sollte folgende Punkte ansprechen:

*   Was ist das Problem? Wie sieht der Datensatz genau aus? Welche Form haben Eingabe und Ausgabe? Welchen Anteil haben Sie als Testdaten zur Seite gelegt?
*   Was sind die genauen Konfigurationen Ihrer Modelle? Warum diese Auswahl?
*   Wie haben Sie Ihre Modelle trainiert (Anzahl Iterationen, Lernrate, ...)
*   Wie erfolgreich sind Ihre Modelle? Wie messen Sie den Erfolg?
*   Liegt in einem oder mehreren der Modelle ein Überanpassung vor? Wie haben Sie es festgestellt und wie könnten Sie es verhindern?
*   Wie würden Sie Ihre Ergebnisse und Erkenntnisse zusammenfassen (Fazit)?


**Hinweis 1:** Für die Postererstellung finden Sie eine gute Anleitung sowie passende Vorlagen im Blog ["How to create beautiful and effective academic posters in PowerPoint"](https://www.brightcarbon.com/blog/effective-academic-posters-powerpoint/). Sie _können_ diese Vorlagen nutzen (müssen es aber nicht).

**Hinweis 2:** Die oben genannten Datensätze können beide in Python unter Verwendung geeigneter Bibliotheken einfach geladen und in Trainings- und Testsets gespalten werden.

**Hinweis 3:** Ein Vergleich Ihrer Ergebnisse mit dem publizierten Stand der Technik wird empfohlen.