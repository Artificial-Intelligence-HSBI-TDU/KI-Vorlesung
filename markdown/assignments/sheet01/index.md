---
type: assignment
title: "Blatt 01: Problemlösen, Suche"
author: "Carsten Gips (FH Bielefeld)"
points: 10
hidden: true
weight: 1
---



## A1.1 Möglichkeiten und Grenzen der KI (1P)

Recherchieren Sie, welche Probleme bereits mittels Computer- bzw. Robotereinsatz
gelöst werden können und welche aktuell noch ungelöst sind.

*Thema*: Gefühl für bereits realisierbare Aufgaben



## A1.2 Auswirkungen der KI (1P)

Recherchieren Sie Auswirkungen auf die Gesellschaft durch die KI, etwa
durch autonomes Fahren.

*Thema*: Chancen und Risiken, Ethik



## A1.3 Problemformalisierung, Zustandsraum (2P)

Drei Elben und drei Orks befinden sich an einem Ufer eines Flusses und wollen
diesen überqueren. Es steht dazu ein Pferd zur Verfügung, welches maximal zwei
Wesen tragen kann. Das Pferd kann den Fluss nicht allein überqueren.

Gesucht ist eine Möglichkeit, alle Elben und Orks über den Fluss zu bringen.
Dabei darf zu keiner Zeit an keinem Ufer die Anzahl der sich dort befindlichen
Orks größer sein als die der dort wartenden Elben, da es sonst zu Konflikten
zwischen beiden Gruppen kommt.

1.  Formalisieren Sie das Problem (Zustände, Aktionen, Start- und Endzustand).
2.  Skizzieren Sie den Problemgraph.

*Thema*: Formalisierung von Problemen, Problemgraph



## A1.4 Uninformierte Suchverfahren (2P)

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

*Hinweis*: Tiefensuche/Breitensuche: Expandierte Nachfolgeknoten werden in
alphabetischer Reihenfolge in die Datenstruktur eingefügt.
Beispiel: Mannheim kommt vor München, Karlsruhe vor Kassel, ...

*Thema*: Ablauf von Tiefensuche, Breitensuche, Handsimulation und Notation



## A1.5 Informierte Suchverfahren (2P)

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

*Hinweis*: Reihenfolge bei gleichen $f(n)$-Kosten: alphabetische Reihenfolge, d.h.
Mannheim käme vor München, Karlsruhe vor Kassel etc.

*Thema*: A\*-Algorithmus, Handsimulation und Notation



## A1.6 Dominanz (1P)

Was bedeutet *"Eine Heuristik $h_1(n)$ dominiert eine Heuristik $h_2(n)$"*?

Wie wirkt sich die Nutzung einer dominierenden Heuristik $h_1(n)$ in A\*
aus (im Vergleich zur Nutzung einer Heuristik $h_2$, die von $h_1$ dominiert
wird)?

Geben Sie selbstgewählte Beispiele an.

*Thema*: Begriff der dominierenden Heuristik (Selbststudium)



## A1.7 Beweis der Optimalität von A* (1P)

Beweisen Sie, dass A* in der Tree-Search-Variante bei Nutzung einer
zulässigen Heuristik optimal ist.

*Thema*: Bedeutung einer zulässigen Heuristik (Selbststudium)



{{% challenges %}}
## A1.8 Bonus: Turing Test (1P)

Testen Sie einige der im Netz verfügbaren Chatbots auf deren Intelligenz.[^Links]
Notieren Sie sich eine Startfrage und messen Sie die Zeit, die Sie bei den
verschiedenen Programmen benötigen, bis Sie sicher sagen können, dass es kein
Mensch ist. Speichern Sie jeweils ein Protokoll der Dialoge. Können Sie selbst
einen Bot erstellen?

*Thema*: Turing-Test selbst erfahren

[^Links]: Starten Sie zum Beispiel auf
[github.com/DopplerHQ/awesome-bots](https://github.com/DopplerHQ/awesome-bots#popular-examples-of-bots)
oder [simonlaven.com](https://www.simonlaven.com/)
oder [cleverbot.com/](https://www.cleverbot.com/)
oder [home.pandorabots.com](https://home.pandorabots.com/en/)
oder [github.com/alice-bot](https://github.com/alice-bot).

{{% /challenges %}}
