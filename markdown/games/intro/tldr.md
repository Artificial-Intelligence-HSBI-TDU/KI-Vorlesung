---
title: "TL;DR"
disableToc: true
hidden: true
---


Mit dem Minimax-Algorithmus können optimale Züge berechnet werden. Dabei wird von zwei
Spielern `Max` und `Min` ausgegangen, die abwechselnd ziehen und beide optimal spielen.
Wenn `Max` gewonnen hat, wird der Spielausgang mit +1 bewertet, wenn `Min` gewonnen hat
mit -1, und mit 0 sonst. Damit hat man ein sogenanntes "Nullsummenspiel" (der Gewinn des
einen Spielers ist der Verlust des anderen) und kann den Algorithmus so gestalten, dass
`Max` stets den Zug wählt, der das Spielergebnis maximiert und `Min` entsprechend den
Zug wählt, der das Spielergebnis minimiert.

Minimax baut den gesamten Spielbaum bis zu den Blättern auf. Die Blätter (Spielausgang)
werden mit einer `Utility`-Funktion bewertet, und diese Bewertung wird dann im Spielbaum
nach oben gereicht.
