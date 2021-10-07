---
title: "TL;DR"
disableToc: true
hidden: true
---


A\* zählt zu den Verfahren der informierten Suche. Dabei verwendet A\* sowohl die
realen Pfadkosten als auch die Schätzungen der Restkosten, d.h. die Kostenfunktion für
A\* ist $f(n) = g(n)+h(n)$.

A\* ist vollständig und optimal, allerdings muss die Heuristik bei der Tree-Search-Variante
**zulässig** sein (d.h. sie muss *unterschätzen*, beispielsweise die Luft-Linie) und bei der
Graph-Search-Variante muss sie **konsistent** sein (d.h. für jeden Knoten die
Dreiecks-Ungleichung erfüllen).

A\* hat wie BnB exponentiellen Aufwand. Durch die zusätzliche Verwendung der Heuristik
werden die partiellen Pfade in der Queue aber geschickter sortiert, so dass A\* in der
Regel mit weniger Suchschritten als BnB auskommt.
