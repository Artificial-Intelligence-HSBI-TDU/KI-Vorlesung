---
archetype: assignment
title: "Meilenstein 1.1: Problemlösen, Suche"
author: "Carsten Gips (FH Bielefeld)"
points: 10
weight: 1

hidden: true
---



## Stundenplanung mit lokaler Suche

Betrachten Sie das Stundenplanproblem:

![](images/screenshot_stundenplan.png){width="80%"}

Es gibt verschiedene Studierendengruppen, verschiedene Module (die von bestimmten Dozenten
gehalten werden) und unterschiedliche Räume. Nehmen Sie den Stundenplan Ihres Studiengangs
für das Wintersemester (betrachten Sie also alle Semester und nicht nur Ihres) und betrachten
Sie zur Vereinfachung nur die Vorlesungen. Gehen Sie zur Vereinfachung ebenfalls davon aus,
dass alle Räume gleich groß (und ausreichend groß) sind.

Listen Sie alle Eigenschaften des Problems übersichtlich auf: Welche Vorlesungen werden in
welchem Jahrgang von welchem Dozenten angeboten, welche Räume werden dabei berücksichtigt?

Formulieren Sie das Problem nun geeignet, dass es mit Gradientensuche bzw. Simulated Annealing
gelöst werden kann.

Implementieren Sie die Gradientensuche und Simulated Annealing und finden Sie damit für
Ihr Stundenplanproblem eine Lösung. Wie aufwändig ist die Suche: Was müssen Sie im Speicher
halten, wie viele Iterationen benötigen Sie? Vergleichen Sie Gradientensuche und Simulated
Annealing.

_Hinweis_: Wenn das Problem sofort beim ersten oder zweiten Schritt gelöst ist, machen Sie
es etwas komplexer: Reduzieren Sie die Zahl der verfügbaren Räume und/oder lassen Sie einen
Dozenten mehrere Module machen. Wenn es zu lange braucht, vereinfachen Sie das Problem ein
wenig: Geben Sie zusätzliche Räume hinzu, verteilen Sie die Arbeit auf mehrere Dozenten,
entfernen Sie einige Kurse pro Jahrgang.
