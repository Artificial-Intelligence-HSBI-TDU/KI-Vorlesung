---
title: "TL;DR"
disableToc: true
hidden: true
---


Branch-and-Bound gehört zu den "Informierten Suchverfahren": Es werden
(reale) Pfadkosten statt der Anzahl der Schritte berücksichtigt.

Branch-and-Bound entsteht, wenn man bei der Tree-Search oder der Graph-Search für die
Datenstruktur eine sortierte **Queue** (Prioritätsqueue) benutzt: Expandierte Nachfolger
werden immer **hinten** in die Queue eingefügt, diese wird nach den **Kosten der partiellen
Pfade sortiert** und der nächste zu expandierende Knoten (d.h. der bisher günstigste partielle
Weg) wird **vorn** aus der Queue genommen. Branch-and-Bound arbeitet mit den bisher
entstandenen (realen) Kosten der partiellen Wege.
