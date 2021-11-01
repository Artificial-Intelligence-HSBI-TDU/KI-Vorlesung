---
title: "TL;DR"
disableToc: true
hidden: true
---


CAL3 ist eine einfache Erweiterung von CAL2 für nicht-disjunkte (überlappende) Klassen. Statt
beim Baumaufbau bei einer Fehlklassifikation sofort zu verzweigen, werden hier zunächst die
im entsprechenden Pfad aufgelaufenen Klassensymbole gezählt. Wenn ausreichend viele davon
gesehen wurden (Schwelle $S_1$), wird eine Entscheidung getroffen: Wenn eine Klasse in diesem
temporären Blatt dominiert (ihre Häufigkeit über einer Schwelle $S_2$ liegt), dann entscheidet
man sich in diesem Blatt fest für diese Klasse. Ansonsten (die Häufigkeit aller Klassen in
dem Blatt liegt unter $S_2$) nimmt man analog zu CAL2 den nächsten, auf diesem Pfad noch nicht
