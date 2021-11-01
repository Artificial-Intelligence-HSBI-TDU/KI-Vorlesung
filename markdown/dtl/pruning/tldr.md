---
title: "TL;DR"
disableToc: true
hidden: true
---


Pruning ist das Entfernen redundanter und irrelevanter Tests (Merkmale). Irrelevante Merkmale spielen keine
Rolle bei der Klassifikation, an jedem Ausgang eines irrelevanten Merkmals findet sich exakt der selbe Baum.
Diese Tests kann man einfach entfernen und durch einen ihrer Teilbäume ersetzen; dadurch ändert sich nicht
die Klassifikation des Baumes. Bei redundanten Tests sind alle Ausgänge bis auf einen noch mit "Nichtwissen"
("\*") markiert. Hier kann man den Test durch den einen bekannten Ausgang ersetzen, wodurch sich die Klassifikation
ändert. Allerdings wird der Klassifikationsfehler nicht größer, da man ja vorher nur für eine Ausprägung des
redundanten Merkmals einen Baum hatte und für die anderen jeweils mit "\*" antworten musste (d.h. hier stets
einen Fehler gemacht hatte). Über die Transformationsregel kann man einfach die Reihenfolge von Tests im
Baum ändern.
