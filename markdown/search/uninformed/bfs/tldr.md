---
title: "TL;DR"
disableToc: true
hidden: true
---


Die Breitensuche gehört zu den "Uninformierten Suchverfahren": Es werden keine weiteren
Pfadkosten, sondern nur die Anzahl der Schritte berücksichtigt.

Die Breitensuche entsteht, wenn man bei der Tree-Search oder der Graph-Search für die
Datenstruktur eine **Queue** benutzt: Expandierte Nachfolger werden immer **hinten**
in die Queue eingefügt, und der nächste zu expandierende Knoten wird **vorn** aus der
Queue genommen. Dadurch wird bei der Breitensuche der Suchbaum ebenenweise entwickelt.
