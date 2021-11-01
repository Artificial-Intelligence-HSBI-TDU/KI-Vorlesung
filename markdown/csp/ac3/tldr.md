---
title: "TL;DR"
disableToc: true
hidden: true
---


Bei der Backtracking-Suche werden schrittweise Variablen belegt. Dabei kann eine Belegung eine Lösung
im weiteren Verlauf der Suche unmöglich machen, so dass (viel) Backtracking notwendig wird.

Beim **Forward Checking** entfernt man nach der Belegung einer Variablen in allen Nachbarvariablen
die durch die aktuelle Belegung inkonsistent gewordenen Werte. Wenn dabei ein Wertebereich leer wird,
führt die aktuelle Belegung nicht zu einer Lösung und kann sofort zurückgenommen werden. Allerdings
findet man mit Forward Checking nicht alle Inkonsistenzen.

Bei der **Kantenkonsistenz** prüft man, ob zu jedem Wert aus dem Wertebereich einer Variablen in den
Nachbarvariablen mindestens ein passender (konsistenter) Wert existiert. Dabei werden die Constraints
nacheinander betrachtet (nicht gleichzeitig). Wenn dies nicht der Fall ist, wird der Wert aus dem
Wertebereich der betrachteten Variablen entfernt. Der AC-3-Algorithmus erzeugt schrittweise Kantenkonsistenz
für ein CSP.

Man kann den AC-3 als Vorverarbeitung nutzen und die Wertemengen *vor* der BT-Suche reduzieren. Eventuell
findet man dabei bereits eine Lösung oder kann eine Lösung ausschließen. Man kann den AC-3 auch als
Inferenzschritt in die BT-Suche einbetten ("MAC").
