---
title: "TL;DR"
disableToc: true
hidden: true
---


Minimax entwickelt den gesamten Spielbaum. Wenn man dabei die bisher besten Werte für MAX und MIN als
$\alpha$ und $\beta$ mitführt, beobachtet man, dass ein $\alpha$-Wert nie kleiner wird und ein $\beta$-Wert
nie größer wird. Dies kann man ausnutzen und das Entwickeln von Pfaden abbrechen, wenn in einem MIN-Knoten
der $\beta$-Wert kleiner wird als der $\alpha$-Wert des MAX-Vorgängers: (a) kann der $\beta$-Wert bei der
weiteren Untersuchung der verbleibenden Nachfolger im MIN-Knoten nur noch kleiner werden, und (b) würde der
MAX-Vorgänger diesen MIN-Knoten nie als Nachfolger in Betracht ziehen, da er bereits einen besseren Zug
gesehen hat (da sein $\alpha$ größer ist als das $\beta$ im Nachfolger). Deshalb kann man hier sofort die
Untersuchung der verbleibenden Nachfolger im MIN-Knoten abbrechen ("Pruning"). Eine analoge Überlegung gilt
für einen MAX-Nachfolger unter einem MIN-Knoten.

Dabei bleibt das Endergebnis erhalten. Man schneidet nur Suchpfade weg, die das Ergebnis von Minimax nicht
verändern.

Die mögliche Effizienzsteigerung ist sehr stark abhängig von Sortierung der Nachfolger! Deshalb stellt man
häufig Heuristiken zur "richtigen" Sortierung der Nachfolger auf ("Killer-Moves").

Zusätzlich kann man wie bei Minimax auch die Suchtiefe begrenzen und eine Bewertungsfunktion (statt der
Nutzenfunktion) einsetzen. Auch hier kann die Bewertungsfunktion wieder gewichtete Features nutzen und/oder
Positionen mit in Datenbanken gespeicherten Positionen und Bewertungen abgleichen.
