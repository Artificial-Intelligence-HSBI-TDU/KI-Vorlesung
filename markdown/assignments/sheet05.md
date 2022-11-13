---
archetype: assignment
title: "Meilenstein 2.1: Perzeptron"
author: "Canan Yıldız (Türkisch-Deutsche Universität)"
weight: 5

hidden: false
---


## Perzeptron Lernalgorithmus

Ziel dieser Aufgabe ist es, mit Hilfe eines Experiments ein Gefühl für die Laufzeit des Perzeptron-Lernalgorithmus zu bekommen und eine Art empirische Approximation zu bestimmen.

### Datensatz
*   Konstruieren Sie Ihren eigenen Datensatz $\mathcal{D}$ mit $m=10$ gleichförmig verteilten Zufallspunkten aus dem Bereich $\mathcal{X}=[−1, 1]\times[−1, 1]$.
*   Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte Punkte aus dem Bereich $[−1, 1]\times[−1, 1]$. Verwenden Sie die Gerade, die durch diese zwei Punkte verläuft, als die Entscheidungsgrenze Ihrer Zielfunktion $f$. Sie können die positiv beschriftete Seite beliebig festlegen.
*   Werten Sie die Zielfunktion für jeden Datenpunkt $\mathbf{x}^{(j)}$ aus, um die entsprechenden Beschriftungen (Ausgangslabel) $y^{(j)}$ zu erhalten.

### Training
Führen Sie nun den Perzeptron Lernalgorithmus $1000$ mal hintereinander aus. Initialsieren Sie jedes mal die Gewichte mit $0$. Wählen Sie in jedem Lernschritt einen Punkt $\mathbf{x}^{(i)}$ *zufällig* aus der Menge der falsch klassifizierten Punkte und aktualisieren Sie die Gewichte entsprechend der folgenden Formel:
$$\mathbf{w}:=\mathbf{w}+\alpha ( y^{(i)} - h(\mathbf{x}^{(i)}) ) \mathbf{x}^{(i)}$$

Führen Sie das Training jeweils ein mal mit den Lernraten $\alpha=1$ und $\alpha=0.1$ durch. Halten Sie für jeden Durchlauf fest, wie viele Schritte der Algorithmus benötigt, um zu der endgültigen Hypothese $h^{*}(\mathbf{x})$ zu konvergieren. Berechnen Sie am Ende die durchschnittliche Anzahl von benötigten Schritten. In welcher Größenordnung liegt sie?

### Experimente
Wiederholen Sie das obige Experiment mit $m=100$ und $m=1000$ Datenpunkten. In welcher Größenordnung liegt die durchschnittliche Anzahl von benötigten Schritten in diesen Fällen?

Um eine zuverlässigere Schätzung zu erhalten, können Sie dasselbe Experiment mehrfach mit anderen zufällig generierten Datensätzen derselben Größe $m$ wiederholen und danach den Durchschnitt über alle Wiederholungen betrachten.

### Visualisierung (optional)
*   Halten Sie während des Trainings die Anzahl der falsch klassifizierten Punkte fest und veranschaulichen Sie anschließend den Lernprozess mit Hilfe eines zweidimensionalen Plots.
*   Visualisieren Sie (auf eine geeignete Weise), wie sich die Entscheidungsrenze während des Trainings verändert.

*Idee nach* Yaser S. Abu-Mostafa, Malik Magdon-Ismail, and Hsuan-Tien Lin. 2012. Learning From Data. AMLBook.
