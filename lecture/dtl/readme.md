# Entscheidungsbäume (Decision Tree Learner - DTL)

Beim überwachten Lernen soll eine Hypothese aufgebaut werden, die der
echten (zu lernenden) Funktion möglichst nahe kommt. Eine Hypothese kann
im einfachsten Fall als Entscheidungsbaum dargestellt werden. Die
Merkmale bilden dabei die Knoten im Baum, und je Ausprägung gibt es eine
Kante zu einem Nachfolgerknoten. Ein Merkmal bildet die Wurzel des
Baums, an den Blättern sind die Klassen zugeordnet.

Einen Entscheidungsbaum kann man zur Klassifikation eines Objekts
schrittweise durchlaufen: Für jeden Knoten fragt man die Ausprägung des
Merkmals im Objekt ab und wählt den passenden Ausgang aus dem Knoten.
Wenn man am Blatt angekommen ist, hat man die Antwort des Baumes auf das
Objekt, d.h. üblicherweise die Klasse.

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 6672880 (markdown: switch to leaner yaml header (#438), 2025-08-09)<br></sub></sup></p></blockquote>
