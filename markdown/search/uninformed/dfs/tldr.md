---
title: "TL;DR"
disableToc: true
hidden: true
---


Die Tiefensuche gehört zu den "Uninformierten Suchverfahren": Es werden keine weiteren
Pfadkosten, sondern nur die Anzahl der Schritte berücksichtigt.

Die Tiefensuche entsteht, wenn man bei der Tree-Search oder der Graph-Search für die
Datenstruktur einen **Stack** benutzt: Expandierte Nachfolger werden immer **oben**
auf den Stack gelegt, und der nächste zu expandierende Knoten wird **oben** vom Stack
genommen. Dadurch verfolgt die Tiefensuche einen Pfad immer erst in die Tiefe.

Bei Sackgassen erfolgt automatisch ein Backtracking, d.h. es wird zum letzten Knoten mit
einer Alternative zurückgegangen. Dies liegt daran, dass bei einer Sackgasse keine
Nachfolger expandiert und oben auf den Stack gelegt werden.
