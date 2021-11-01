---
title: "TL;DR"
disableToc: true
hidden: true
---


Eine Hypothese kann im einfachsten Fall als Entscheidungsbaum dargestellt werden. Die Merkmale bilden
dabei die Knoten im Baum, und je Ausprägung gibt es eine Kante zu einem Nachfolgerknoten. Ein Merkmal
bildet die Wurzel des Baums, an den Blättern sind die Klassen zugeordnet.

Einen Entscheidungsbaum kann man zur Klassifikation eines Objekts schrittweise durchlaufen: Für jeden
Knoten fragt man die Ausprägung des Merkmals im Objekt ab und wählt den passenden Ausgang aus dem Knoten.
Wenn man am Blatt angekommen ist, hat man die Antwort des Baumes auf das Objekt, d.h. üblicherweise die
Klasse.

Den Baum kann man mit dem Algorithmus CAL2 schrittweise aufbauen. Man startet mit "Nichtwissen" (symbolisiert
mit einem "\*") und iteriert durch alle Trainingsbeispiele, bis der Baum sich nicht mehr verändert. Wenn
der Baum auf ein Beispiel einen "\*" ausgibt, dann ersetzt man diesen "\*" mit der Klasse des eben betrachteten
Beispiels. Wenn der Baum bei einem Beispiel die passende Klasse ausgibt, macht man mit dem nächsten Beispiel
weiter. Wenn der Baum bei einem Beispiel eine andere Klasse ausgibt, muss das Klassensymbol im Baum (an
der Stelle, wo das Objekt gelandet ist) durch den nächsten Test ersetzt werden: Hierzu nimmt man das nächste,
auf diesem konkreten Pfad noch nicht verwendete Merkmal. CAL2 kann nur mit diskreten Attributen und disjunkten
Klassen einen fehlerfreien Baum erzeugen.
