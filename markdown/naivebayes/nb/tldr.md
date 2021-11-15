---
title: "TL;DR"
disableToc: true
hidden: true
---


Mit Hilfe der (verallgemeinerten) Bayes-Regel kann man Klassifikation durchführen.
Dazu werden beim "Training" die bedingten Wahrscheinlichkeiten aus den Trainingsdaten
geschätzt. Die Anwendung (Klassifikation) erfolgt dann durch die Nutzung der beim
"Training" berechneten bedingten Wahrscheinlichkeiten:

$$
h_{MAP} = \operatorname{argmax}_{h \in H} P(h|D_1,  \ldots, D_n) =
\operatorname{argmax}_{h \in H} P(h) \prod_i P(D_i|h)
$$

Für jede Hypothese $h$, d.h. für jede Klasse, wird der Posterior $P(h|D_1,  \ldots, D_n)$
ausgerechnet. Die Klasse, deren Wert dabei am höchsten ist, "gewinnt", d.h. die Klasse
mit dem größten Posterior wird ausgegeben. (Deshalb wird das Verfahren oft auch "MAP"
-- *Maximum a Posteriori* -- genannt.)

Bei der Berechnung wird angenommen, dass die betrachteten Merkmale (bedingt) unabhängig
sind (dies geht in die obige Formel ein). Diese Annahme trifft aber oft nicht zu, deshalb
auch der Name "*Naive* Bayes Klassifikation". Man berechnet in diesem Fall falsche Werte.
Dennoch zeigt der Algorithmus in der Praxis sehr gute Ergebnisse.

Durch den Einsatz der bedingten Wahrscheinlichkeiten in der Produktformel ergeben sich
einige Schwierigkeiten:

1.  Wenn beim "Training" Ausprägungen fehlen, ist die bedingte Wahrscheinlichkeit Null.
    Dadurch wird das gesamte Produkt Null. Zur Abhilfe kann man den **Laplace-Schätzer**
    nutzen, der (gesteuert über einen Parameter) gewissermaßen virtuelle Trainingsbeispiele
    beisteuert.
2.  Durch das Produkt vieler kleiner Werte kann es schnell zu *Floating Point*-Underflows
    kommen. Hier kann man einen Trick nutzen: Man berechnet den Logarithmus der Produktformel.
    Dadurch ändern sich zwar die absoluten Werte, die Reihenfolge der Hypothesen bleibt aber
    erhalten. Da wir nur nach der Hypothese suchen, die einen höheren Wert als die anderen
    hat, und nicht den absoluten Wert an sich benötigen, kann man so vorgehen. Durch den
    Logarithmus wird aus dem Produkt eine Summe, wo die kleinen Werte der bedingten
    Wahrscheinlichkeiten nicht so starke Auswirkungen haben wie im Produkt.

Oft nimmt man zusätzlich an, dass für alle Hypothesen (Klassen) $h$ der Prior $P(h)$ gleich
ist. Dann kann man diesen Faktor ebenfalls aus der Berechnung entfernen. Dieses Verfahren
nennt man auch "**Maximum Likelihood**".

Der NB-Klassifikator wird gern für die Textklassifikation eingesetzt. Hier muss man einem
Text ein Label zuordnen. In einer Vorverarbeitung wird zunächst eine Menge der relevanten
Wörter über alle Trainingstexte gebildet (*Bag-of-Words*). Der Bag-of-Words entspricht einem
Merkmalsvektor, wobei die Merkmale die einzelnen Wörter sind. Dann kann jeder Text der
Trainingsmenge über so einen Merkmalsvektor dargestellt werden: Entweder man gibt pro Merkmal
an, ob es da (1) oder nicht da (0) ist oder man zählt die Häufigkeit des Auftretens. Dann kann
man mit dem NB-Klassifikator die bedingten Wahrscheinlichkeiten schätzen und einen neuen Text
klassifizieren.
