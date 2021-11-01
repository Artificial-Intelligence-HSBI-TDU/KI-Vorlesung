---
title: "TL;DR"
disableToc: true
hidden: true
---


Der Entscheidungsbaum-Lernalgorithmus **ID3** nutzt den Informationsgehalt für die Entscheidung
bei der Attributwahl: Nimm das Attribut, welches einen möglichst hohen Informationsgehalt hat.
Oder andersherum: Wähle das Attribut, bei dem die verbleibende mittlere Entropie der Trainingsmenge
nach der Wahl des Attributs am kleinsten ist. Oder noch anders formuliert: Nimm das Attribut, bei
dem die Differenz zwischen der Entropie der Trainingsmenge (vor der Wahl des Attributs) und der
verbleibenden mittleren Entropie (nach der Wahl des Attributs) am größten ist (die Differenz nennt
man auch "*Information Gain*"). Die Trainingsmenge wird entsprechend der Ausprägung in Bezug auf
das eben gewählte Merkmal aufgeteilt und an die Kinder des Knotens weiter gereicht; dort wird der
Baum rekursiv weiter aufgebaut.

Durch eine Normierung des *Information Gain* kann eine Verbesserung in Bezug auf mehrwertige
Attribute erreicht werden, dies führt zum Algorithmus **C4.5**.
