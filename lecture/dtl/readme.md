---
archetype: "chapter"
title: "Entscheidungsbäume"
weight: 6
---


Beim überwachten Lernen soll eine Hypothese aufgebaut werden, die der echten (zu lernenden)
Funktion möglichst nahe kommt. Eine Hypothese kann im einfachsten Fall als Entscheidungsbaum
dargestellt werden. Die Merkmale bilden dabei die Knoten im Baum, und je Ausprägung gibt es
eine Kante zu einem Nachfolgerknoten. Ein Merkmal bildet die Wurzel des Baums, an den Blättern
sind die Klassen zugeordnet.

Einen Entscheidungsbaum kann man zur Klassifikation eines Objekts schrittweise durchlaufen: Für
jeden Knoten fragt man die Ausprägung des Merkmals im Objekt ab und wählt den passenden Ausgang
aus dem Knoten. Wenn man am Blatt angekommen ist, hat man die Antwort des Baumes auf das Objekt,
d.h. üblicherweise die Klasse.


`{{< children showhidden="true" >}}`{=markdown}







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
