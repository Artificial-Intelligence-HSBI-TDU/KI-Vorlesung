---
title: "TL;DR"
disableToc: true
hidden: true
---


CSP's mit endlichen Domänen lassen sich mit einer Backtracking-Suche lösen. Dabei
gibt es einige Freiheitsgrade: Auswahl der nächsten Variable und Wahl des nächsten
Werts. Hier können Heuristiken die Suche beschleunigen.

Zur Wahl der als nächstes zu betrachtenden Variable kann die **Minimum Remaining
Values (MRV)**-Heuristik eingesetzt werden: Wähle die Variable mit wenigsten freien
Werten. Bei Gleichstand bei der MRV kann man mit der **Gradheuristik** die Variable
mit den meisten Constraints zu offenen (noch nicht belegten) Variablen wählen.

Bei der Wahl des Wertes kann die **Least Constraining Value (LCV)**-Heuristik genutzt
werden: Wähle den Wert, der für die verbleibenden Variablen die wenigsten Werte ungültig
macht.

Während die MRV relativ leicht umzusetzen ist, muss man für die LCV alle Constraints zu
den Nachbarn auswerten.
