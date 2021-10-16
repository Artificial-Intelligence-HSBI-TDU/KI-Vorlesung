---
title: "TL;DR"
disableToc: true
hidden: true
---


Minimax entwickelt den gesamten Spielbaum. Wenn nicht genug Zeit dafür zur Verfügung steht, kann man die
Suchtiefe begrenzen. Für die Bewertung der Zustände benötigt man eine `Eval`-Funktion, die die Knoten in
der selben Reihenfolge sortieren sollte wie es in der vollständigen Version über die `Utility`-Funktion
geschieht. Die `Eval`-Funktion sollte zudem schnell zu berechnen sein. Typische Varianten für die
`Eval`-Funktion sind gewichtete Features oder ein Nachschlagen in Spieldatenbanken (Spielzustand plus
Bewertung).

Minimax kann auf Spiele mit mehr als zwei Spielern erweitert werden. Dabei versucht dann jeder Spieler für
sich, das Ergebnis des Spiels (aus seiner Sicht) zu maximieren.

Bei Spielen mit Zufall (Würfelereignisse) kann man jedem Würfelereignis eine Wahrscheinlichkeit zuordnen
und damit den jeweils erreichbaren `Max`- oder `Min`-Wert gewichten. Die Summe dieser gewichteten Bewertungen
ist die Bewertung des entsprechenden "Chance"-Knotens, der dann in der darüberliegenden Ebene nach dem
Minimax-Prinzip ausgewertet wird (=> *Expectimax*).
