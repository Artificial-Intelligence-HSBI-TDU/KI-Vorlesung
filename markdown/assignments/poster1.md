---
archetype: assignment
title: "Projekt 1: Poster"
author: "Carsten Gips (FH Bielefeld)"
weight: 5

hidden: true
---



## Stundenplanung

Betrachten Sie das Stundenplanproblem:

![](images/screenshot_stundenplan.png){width="60%"}

Es gibt verschiedene Jahrgänge/Semester, verschiedene Vorlesungen (die von bestimmten Dozenten
gehalten werden) und unterschiedliche Räume. Nehmen Sie den Stundenplan Ihres Studiengangs
für das Wintersemester (betrachten Sie also alle Semester und nicht nur Ihren Jahrgang) und
betrachten Sie zur Vereinfachung nur die Vorlesungen. Gehen Sie zur Vereinfachung ebenfalls
davon aus, dass alle Räume gleich groß (und ausreichend groß) sind und dass die Vorlesungen
immer in festen 2h-Zeitfenstern geplant werden können.


1.  Listen Sie alle Eigenschaften des Problems übersichtlich auf: Welche Vorlesungen werden in
    welchem Jahrgang von welchem Dozenten angeboten, welche Räume werden dabei berücksichtigt?

2.  Lösen Sie das Problem, indem Sie entweder

    *   Gradientensuche und Simulated Annealing, oder
    *   Genetische/Evolutionäre Algorithmen mit verschiedenen Parametereinstellungen, oder
    *   Constraintsolving mit `BT_Search` und AC-3

    implementieren und anwenden. Sie können gern auch die passenden Java-Klassen in [`aimacode/aima-java`]
    bzw. die passenden Python-Klassen in [`aimacode/aima-python`] als Ausgangspunkt nutzen.

3.  Erstellen Sie ein DIN-A4-Poster, auf dem Sie Ihr Vorgehen, die Modellierung und wichtige
    Code-Fragmente und die Ergebnisse übersichtlich präsentieren. Beschränken Sie sich dabei
    auf die wesentlichen Aussagen.

    Sie finden eine gute Anleitung sowie passende Vorlagen auf
    ["How to create beautiful and effective academic posters in PowerPoint"].


_Hinweis_: Abzugeben ist der Code sowie das Poster (als PDF).

_Hinweis_: Wenn das Problem sofort beim ersten oder zweiten Schritt gelöst ist, machen Sie
es etwas komplexer: Reduzieren Sie die Zahl der verfügbaren Räume und/oder lassen Sie einen
Dozenten mehrere Module machen. Wenn es zu lange braucht, vereinfachen Sie das Problem ein
wenig: Geben Sie zusätzliche Räume hinzu, verteilen Sie die Arbeit auf mehrere Dozenten,
entfernen Sie einige Kurse pro Jahrgang.


[`aimacode/aima-java`]: https://github.com/aimacode/aima-java/tree/AIMA3e/aima-core
[`aimacode/aima-python`]: https://github.com/aimacode/aima-python
["How to create beautiful and effective academic posters in PowerPoint"]: https://www.brightcarbon.com/blog/effective-academic-posters-powerpoint/
