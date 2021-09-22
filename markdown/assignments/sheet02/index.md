---
type: assignment
title: "Blatt 02: Lokale Suche, EA/GA"
author: "Carsten Gips (FH Bielefeld)"
points: 10
hidden: true
weight: 2
sketch: true
---


## Uninformierte Suchverfahren (4P)

Betrachten Sie folgende Landkarte und Restwegschätzungen:

::: center
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MapGermanyGraph.svg/476px-MapGermanyGraph.svg.png){width="40%"}

[Quelle: ["MapGermanyGraph.svg"](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg) by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and [Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr), licensed under [*public domain*](https://en.wikipedia.org/wiki/en:public_domain)]{.origin}
:::

![](images/MapGermanyGraph-Kosten.png){width="40%"}


1.  Finden Sie mit **Tiefensuche** einen Weg von Würzburg nach München. Führen
    Sie eine Handsimulation (Notation analog zur Vorlesung) durch und zeichnen
    Sie den Suchbaum. An welchen Stellen findet Backtracking statt?

2.  Führen Sie die Wegesuche mit **Breitensuche** durch (Handsimulation). Wird
    die optimale Lösung gefunden?

*Hinweis*: Nutzen Sie für beide Algorithmen die **Graph-Search-Variante**.

*Hinweis*: Tiefensuche/Breitensuche: Nachfolgeknoten werden in alphabetischer Reihenfolge
expandiert. Beispiel: Mannheim kommt vor München, Karlsruhe vor Kassel, ...

*Thema*: Ablauf von Tiefensuche, Breitensuche, Handsimulation und Notation



## Informierte Suchverfahren (6P)

Betrachten Sie erneut die in der vorigen Aufgabe gegebene Landkarte samt
Restwegschätzungen.

1.  Finden Sie einen Weg von Würzburg nach München mit dem A\*-Algorithmus
    (**Tree-Search-Variante** mit Verbesserung "keine Zyklen", siehe Vorlesung).
    Führen Sie dazu eine Handsimulation unter Nutzung der oben gegebenen
    Restkostenabschätzungen durch. Wird dabei eine optimale Lösung gefunden?

2.  Können die oben gegebenen Restkostenabschätzungen in A\* und
    Best-First-Suche verwendet werden?
    *   Falls ja, warum?
    *   Falls nein, warum? Wie müssten die Abschätzungen ggf. korrigiert werden?

3.  Falls Sie der Meinung waren, die Abschätzungen sind nicht korrekt,
    korrigieren Sie die Abschätzungen nun und führen Sie erneut eine Suche mit
    A\* durch.

*Hinweis*: Reihenfolge bei gleichen $f(n)$-Kosten: alphabetische Reihenfolge, d.h. Mannheim
käme vor München, Karlsruhe vor Kassel etc.

*Thema*: A\*-Algorithmus, Handsimulation und Notation



## Schiebepuzzle (1P)

Betrachten Sie das Schiebepuzzle-Problem ([@Russell2020, Fig. 3.27, S. 119]).

Geben Sie zwei zulässige Heuristiken an, die Sie mit A\* nutzen könnten.
Erklären Sie jeweils die Idee hinter der Heuristik und begründen Sie, warum
diese zulässig ist.

*Thema*: Heuristiken für A\*-Algorithmus



## Dominanz (1P)

Was bedeutet *"Eine Heuristik $h_1(n)$ dominiert eine Heuristik $h_2(n)$"*?

Wie wirkt sich die Nutzung einer dominierenden Heuristik $h_1(n)$ in A\*
aus (im Vergleich zur Nutzung einer Heuristik $h_2$, die von $h_1$ dominiert
wird)?

*Thema*: Begriff der dominierenden Heuristik (Selbststudium)



## Beweis der Optimalität von A* (2P)

Beweisen Sie, dass A* in der Tree-Search-Variante bei Nutzung einer
zulässigen Heuristik optimal ist.

*Thema*: Bedeutung einer zulässigen Heuristik (Selbststudium)



## Anwendungen (2P)

Recherchieren Sie, in welchen Anwendungen Suchalgorithmen eingesetzt werden.
Erklären Sie kurz, wie und wofür die Suchalgorithmen jeweils genutzt werden.

*Thema*: Anwendungen von Suchalgorithmen



{{% challenges %}}
## Bonus (2P)
*   Was bedeutet "optimal" im Zusammenhang mit der Suche? Ist Tiefensuche
    optimal? Was ist der Unterschied zu "vollständig"?
*   Wie kann man mit Tiefensuche den optimalen Weg finden?
*   Was bedeutet Backtracking? Wie wird das implementiert?
*   Was bedeutet "optimal" im Zusammenhang mit der Suche? Ist Breitensuche
    optimal? Was ist der Unterschied zu "vollständig"?
*   Findet Breitensuche immer eine Lösung, wenn es eine gibt? Ist  die erste
    gefundene Lösung auch immer die optimale?
*   Was ist das Problem an Breitensuche?
*   Breitensuche ist ein Spezialfall von Branch-and-Bound?
*   Tiefensuche ist ein Spezialfall von Best-First (Tree-Search-Variante)?
*   Branch-and-Bound ist ein Spezialfall von A\*?

## Bonus (2P)
Finden Sie einen Weg vom Kopierer zur Bibliothek:

![](images/graph.png){width="60%"}

-   mit Tiefensuche
-   mit Breitensuche
-   mit Branch-and-Bound
-   mit Best First
-   mit A\*

Vergleichen Sie die Ergebnisse!

{{% /challenges %}}



`{{< bib />}}`{=markdown}
