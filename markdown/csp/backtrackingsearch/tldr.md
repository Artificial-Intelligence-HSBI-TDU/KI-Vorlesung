---
title: "TL;DR"
disableToc: true
hidden: true
---


CSP's mit endlichen Domänen lassen sich mit einer Backtracking-Suche lösen. Dabei wird
schrittweise eine Variablen ausgewählt und dann ein Wert aus deren Wertebereich für
die Belegung ausgewählt. Danach ruft sich die Backtracking-Suche rekursiv auf. Falls
dabei keine Lösung gefunden werden kann, erfolgt Backtracking und die Belegung wird
schließlich rückgängig gemacht und durch die nächste Möglichkeit ersetzt.
