---
title: "TL;DR"
disableToc: true
hidden: true
---


Lernen wird in der KI oft als Verhaltensänderung (eines Systems) aufgefasst. Dabei soll eine
Gütefunktion optimiert werden.

Je nach verfügbarem Feedback eines "Lehrers" werden typischerweise drei Arten von Lernen
unterschieden: Überwachtes Lernen, Unüberwachtes Lernen, Reinforcement Lernen. Dabei stellt
der Lehrer beim überwachten Lernen Trainingsbeispiele plus eine Vorgabe (Klasse, Funktionswert)
zur Verfügung, während beim unüberwachten Lernen nur die Trainingsbeispiele bereitgestellt
werden und der Algorithmus selbst Zusammenhänge in den Daten erkennen soll. Beim Reinforcement
Learning erfolgt das Feedback am Ende einer Kette von Aktionen, d.h. der Algorithmus muss
diese Bewertung auf die einzelnen Aktionen zurückrechnen.

Beim überwachten Lernen soll eine Hypothese aufgebaut werden, die der echten (zu lernenden)
Funktion möglichst nahe kommt. Eine konsistente Hypothese erklärt die Trainingsdaten, eine
generalisierende Hypothese kann auch unbekannte Daten (die aus der selben Quelle stammen, also
zum selben Problem gehören) korrekt bewerten. Es wird unterschieden zwischen Klassifikation
(einige wenige diskrete Label/Klassen, die den Trainingsbeispielen zugeordnet sind) und
Regression (Lernen eines Funktionsverlaufs).

Merkmalsvektoren gruppieren Eigenschaften des Problems bzw. der Objekte, d.h. jedes Objekt
kann über einen Merkmalsvektor beschrieben werden. Trainingsdaten sind ausgewählte Beispielobjekte
(durch Merkmalsvektoren beschrieben) plus die Vorgabe (Klasse oder Funktionswert) vom Lehrer.
