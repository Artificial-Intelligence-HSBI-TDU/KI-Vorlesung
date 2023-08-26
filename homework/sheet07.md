---
archetype: assignment
title: "Meilenstein 2.3: Overfitting & MLP"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"

hidden: true
---

# Overfitting & MLP

Benutzen Sie den [Neural Network Playground](https://playground.tensorflow.org/) um die unten gelisteten Experimente durchzuführen. Achten Sie bei allen Experimenten auf das Verhalten der Trainings- und Testkosten. Sie können mit Hilfe der Checkbox unter der Ausgabezelle (ganz rechts, unten) die Testdaten ein- und ausblenden. Der Play-Knopf startet dabei das Training und der Reload-Knopf setzt das Netzwerk zurück.

-   Trainieren Sie ein logistisches Regressionsmodell auf dem "Gaussian" Datensatz (linear separierbarer Datensatz, links-unten).
    *   Fügen Sie dem Datensatz etwas Rauschen (Noise) hinzu und trainieren Sie erneut. Wie verhalten sich die Kosten? Warum?
    *   Können Sie eine Überanpassung dieses Modells erreichen?
    *   Trainieren Sie das Modell auf den anderen Datensätzen. Wie verhalten sich die Kosten? Warum?

-   Trainieren Sie folgende MLPs auf dem kreisförmigen Datensatz (Circle) mehrmals mit jeweils den Aktivierungsfunktionen ReLU, tanh und Sigmoid:
    *   MLP mit einer versteckten Schicht mit zwei Neuronen. Erhöhen Sie schrittweise die Anzahl der Neuronen in der versteckten Schicht auf drei, vier und zuletzt auf fünf.
    *   MLP mit vier Schichten, mit jeweils 6 Zellen pro Schicht.

-   Trainieren Sie ein Netzwerk mit zwei versteckten Schichten mit jeweils 6 Neuronen einige Male auf dem spiralförmigen Datensatz (rechts unten).
    *   Wie viele Epochen dauert das Training? Beobachten Sie Trainings- und Testkosten: liegt eine Überanpassung vor?
    *   Untersuchen Sie die Ausgaben der einzelnen Zellen, in dem Sie die Maus über die jeweilige Zelle bewegen.
    Bemerken Sie einen wesentlichen Unterschied in den Ausgaben der ersten Schicht im Vergleich zu der zweiten Schicht?
    *   Erhöhen Sie die Schichtanzahl auf drei, mit jeweils 7 Neuronen pro Schicht.
    Was können Sie über die Trainingszeit und Kosten sagen? Untersuchen und vergleichen Sie wieder die Ausgaben der Zellen in den drei Schichten.

Beantworten Sie für alle Experimente folgende Fragen:

*   Wie verhält sich die Entscheidungsgrenze?
*   Was können Sie über Trainings- und Testkosten sagen? Entsteht eine Überanpassung?
*   Wie schnell wird die Entscheidungsgrenze berechnet?
*   Können alle Datenpunkte jedes mal korrekt klassifiziert werden?
*   Hat die Auswahl der Aktivierungsfunktion einen Einfluss auf die Form der Entscheidungsgrenze oder die Geschwindigkeit der Berechnung?
*   Setzen Sie nun den Noise-Level auf 15 und wiederholen Sie die Experimente. Wann kann von einer Überanpassung gesprochen werden?
