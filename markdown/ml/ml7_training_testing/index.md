---
type: lecture-cy
title: "NN7 - Training & Testing"
menuTitle: "NN7 - Training & Testing"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 7
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
# youtube:
#   - id: XYZ (ID)
#   - id: XYZ (ID)
sketch: false
---


## Kurze Übersicht

### Training und Testing
*	Der tatsächliche **Erfolg** eines Modells wird nicht durch niedrige Trainingskosten gemessen, sondern durch geringe Kosten auf ungesehenen Daten, d.h. **hohe Vorhersagekraft, gute Generalisierung**!

*   Die Menge aller gelabelten Daten  in **Trainingsset und Testset** aufteilen, Testset nicht während des Trainings einsetzen!. 
    *	$E_{in}$ bezeichnet den Fehler auf dem Trainingsset, auch **in-sample error**.
    *	$E_{out}$ bezeichnet den Fehler auf dem gesamten Eingaberaum $X$, auch **out-of-sample error**. $E_{out}$ ist der eigentliche Indikator für den zukünftigen Erfolg des Modells, ist uns aber nicht zugänglich.
    *	$E_{test}$ bezeichnet den Fehler auf dem Testset und ist eine **Näherung** für $E_{out}$.  

    > Analogie:
    > $E_{in}$ : Erfolg in Übungsaufgaben und Probeprüfungen.
    > $E_{test}$ : Erfolg in Endprüfung. 

*	Die Näherung $E_{test}$ sollte möglichst genau sein, damit es als ein verlässliches **Gütesiegel** dienen kann.
	*	Das Testset sollte genug Daten enthalten. Üblicher Anteil an Testdaten:
		*	bei  $|D| \approx 100.000 \rightarrow$  ca. 20%
		*	bei  $|D| \approx 10.000.000 \rightarrow$  ca. 1%
	    *	Beispiel: Hat man 1000 Beispiele im Testset, wird $E_{test}$ mit $\ge 98\%$ Wahrscheinlichkeit in der $\pm 5\%$ Umgebung von $E_{out}$ liegen (für theoretische Grundlagen und Herleitung siehe [@AbuMostafa2012, S. 39-69]).
	*	Trainingsdaten und Testdaten sollten möglichst aus derselben Verteilung kommen, wie die zukünftigen **Real-World-Daten**.


*	**Wichtige Bemerkung**: 
    *   Testdaten nicht anfassen, bis das Modell Einsatzbereit ist!
    *   Die Testdaten dürfen in **keinster Weise** bei der Auswahl der endgültigen Hypothese eingesetzt werden, weder bei der Berechnung der Parameter (Training), noch bei der Bestimmung der Hyperparameter (Hyperparameter-Tuning). 
    *   Sobald der Testfehler die Auswahl der endgültigen Hypothese beeinflusst, kann sie nicht mehr als "Gütesiegel" eingesetzt werden.

        **CHECK**: Hätte man zufällig andere Testdaten gewählt, könnte sich dadurch  die endgültige Hypothese ändern?
	
	


