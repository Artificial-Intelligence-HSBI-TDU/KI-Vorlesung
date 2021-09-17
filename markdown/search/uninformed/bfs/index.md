---
type: lecture-cg
title: "Suche mit Breitensuche"
menuTitle: "Breitensuche"
author: "Carsten Gips (FH Bielefeld)"
weight: 2
readings:
  - key: "Russell2020"
    comment: "Breitensuche: Abschnitt 3.4.1"
quizzes:
  - link: TODO
    name: "TODO"
assignments:
  - topic: sheet02
youtube:
  - id: eRX0IpUOnvY
fhmedia:
  - link: https://www.fh-bielefeld.de/medienportal/m/3496d633d4dfc355d225fdd0f2087c153a17bd283cfaabfcc388d6ff0d56e2aa1c86a7ac3da8ab868fb5374ba57341bf2236c912b6c9849a76c4430db90334f7
    name: "Direktlink FH-Medienportal: Breitensuche"
---


## Hole das Buch

:::center
![](images/graph.png){width="60%"}
:::

::: notes
=> [**Problemlösen == Suche im Graphen**]{.alert}
:::

\bigskip
\bigskip

**Uninformierte ("blinde") Suche**:

Keine Informationen über die Kosten eines Pfades: Nur die [Pfadlänge]{.alert} (Anzahl der Schritte) zählt.

::: notes
Varianten:
*   `[Tiefensuche]({{<ref "/search/uninformed/dfs" >}})`{=markdown}
*   **Breitensuche**
:::


## Breitensuche (*BS*, *BFS*)

::: notes
**Erinnerung Graph-Search**
:::

1.  Füge Startknoten in leere Datenstruktur (Stack, Queue, ...) ein
2.  Entnehme Knoten aus der Datenstruktur:
    -   Knoten ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Markiere aktuellen Knoten, und
    -   Expandiere alle Nachfolger des Knotens und füge alle unmarkierten
        Nachfolger, die noch nicht in der Datenstruktur sind, in die
        Datenstruktur ein
3.  Falls die Datenstruktur leer ist: Abbruch, melde "*nicht gefunden*"
4.  Gehe zu Schritt 2

\bigskip
=> Was passiert, wenn wir eine [**Queue**]{.alert} einsetzen?

:::::: notes
:::center
![](images/tafelbeispiel.png){width="90%"}
:::
::::::

[Tafelbeispiel Breitensuche (Queue, Suchbaum, markierte Knoten)]{.bsp}

<!-- XXX
* Beispiel mit *gerichteten* Kanten, um lange Zyklen an Tafelbeispiel zu vermeiden
* Sackgasse möglichst "früh" (A-B-C (C: Sackgasse), A-B-D, und von D geht's weiter ...)
-->

::::::::: notes
## Bemerkungen

*   Nachfolger eines Knotens: Alle von diesem Zustand durch Aktionen erreichbare Zustände

*   Suchalgorithmus mit [**Queue**]{.alert} als Datenstruktur => **Breitensuche**
    *   Zu betrachtender Knoten in Schritt 2 wird *vorn* aus der Queue genommen
    *   Expandierte Knoten werden in Schritt 2.a *hinten* in die Queue eingefügt
        Dabei i.A. die vorgegebene  Reihenfolge der Nachfolgeknoten beachten!

    Auswirkung: Suchbaum wird **ebenenweise** aufgebaut (deshalb "Breitensuche")

*   Graph-Search: Markierte Knoten müssen geeignet gespeichert werden: separate Datenstruktur
    => Aufwand!


## Konventionen für diese Lehrveranstaltung

In der Beschreibung der Algorithmen werden häufig nur die letzten Knoten der partiellen Wege
in den Datenstrukturen mitgeführt (das gilt auch für die Beschreibung im [@Russell2020]). Dies
erschwert die Nachvollziehbarkeit, wenn man die Queue oder den Stack schrittweise aufschreibt.
Deshalb wird für diese Veranstaltung die Konvention eingeführt, immer die **partiellen Wege**
aufzuschreiben.

Nicht Bestandteil der Algorithmen, dient aber der Nachvollziehbarkeit: Expandierte Knoten
sollen alphabetisch sortiert an der korrekten Stelle in der Datenstruktur auftauchen, dabei
soll aber natürlich die Reihenfolge der ursprünglich in der Datenstruktur enthaltenen Knoten
nicht modifiziert werden. (Bei "echten" Problemen wird die Reihenfolge der expandierten
Nachfolger in der Regel durch eine Reihenfolge der anwendbaren Operationen bestimmt.)


## Weitere Hinweise

*   Die Breitensuche wurde zufällig am Beispiel Graph-Search eingeführt.
    Man kann auch die Tree-Search-Variante einsetzen. Wichtig ist nur, dass als
    Datenstruktur eine Queue genutzt wird.

*   Im [@Russell2020] wird die Breitensuche ebenfalls auf der Basis des
    Graph-Search-Algorithmus eingeführt. Allerdings wird die Abbruchbedingung
    modifiziert: Die Zielbedingung wird nicht erst (wie bei Graph-Search
    eigentlich definiert) geprüft, wenn ein Knoten aus der Queue entnommen wird,
    sondern bereits bei der Erzeugung der Nachfolgerknoten (vor dem Einfügen in
    die Queue). Dadurch spart man sich die Expansion einer zusätzlichen Ebene:
    Die Komplexität wäre in diesem Fall "nur" $O(b^{d})$.
:::::::::


## Eigenschaften Breitensuche vs. Tiefensuche {#vergleich-ts-bs}

|                     | **Tiefensuche** | **Breitensuche** |
|:--------------------|:----------------|:-----------------|
| Vollständigkeit     | nein[^1]        | ja[^2]           |
| Optimalität         | nein            | ja               |
| Zeitkomplexität     | $O(b^m)$        | $O(b^{d+1})$     |
| Speicherkomplexität | $O(bm)$         | $O(b^{d+1})$     |

::: notes
*   Zeitkomplexität: maximal zu expandierende Knotenzahl
*   Speicher:
    *   TS: in jeder Tiefe weitere $b$ Knoten speichern
    *   BS: alle Knoten einer Ebene im Speicher halten[^3]
:::

\vfill
\footnotesize

**b**: Verzweigungsfaktor, **d**: Ebene d. höchsten Lösungsknotens, **m**:
Länge d. längsten Pfades

\normalsize

[^1]: gilt für Tree-Search-Variante; vollständig in Graph-Search-Variante bei endlichem Suchraum
[^2]: falls *b* endlich
[^3]: $O(b^{d})$ mit vorgezogener Zielprüfung (vgl. [@Russell2020])


## Praxisvergleich Breitensuche vs. Tiefensuche

**Breitensuche**:
Annahme: $b=10$, 10.000 Knoten/s, 1.000 Byte/Knoten

| **Tiefe** | **exp. Knoten** | **Zeit** | **Speicher** |
|:----------|:----------------|:---------|:-------------|
| 2         | $10^3$          | 0.1 s    | 1 MB         |
| 4         | $10^5$          | 10 s     | 100 MB       |
| 6         | $10^7$          | 20 min   | 10 GB        |
| 8         | $10^9$          | 30 h     | 1 TB         |
| 10        | $10^{11}$       | 130 d    | 100 TB       |

\pause
\bigskip

**Tiefensuche**:
Annahme: längster Pfad (Tiefe) $m=1000$

=> Speicherbedarf [**ca. 10 MB**]{.alert}


## Wrap-Up

*   Uninformierte Suchverfahren
    *   Keine weiteren Pfadkosten (nur Anzahl der Schritte)
    *   Breitensuche: Verfolge alle Pfade (baue den Suchbaum ebenenweise auf)







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
