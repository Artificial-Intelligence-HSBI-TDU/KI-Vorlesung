# Übungsblatt: Perzeptron

## NN.Perzeptron.01: Entscheidungsgrenze (2P)

- (1P) Betrachten Sie das durch den Gewichtsvektor
  $`(w_0,w_1,w_2)^T = (2,1,1)^T`$ gegebene Perzeptron. Zeichnen Sie die
  Trennebene und markieren Sie den Bereich, der mit $`+1`$ klassifiziert
  wird.
- (1P) Welche der folgenden Perzeptrons haben die selbe Trennebene?
  Welche weisen exakt die gleiche Klassifikation auf?
  - $`(w_0,w_1,w_2)^T = (1, 0.5, 0.5)^T`$
  - $`(w_0,w_1,w_2)^T = (200, 100, 100)^T`$
  - $`(w_0,w_1,w_2)^T = (\sqrt{2}, \sqrt{1}, \sqrt{1})^T`$
  - $`(w_0,w_1,w_2)^T = (-2, -1, -1)^T`$

*Thema*: Verständnis Interpretation Perzeptron
(Trennebene/Entscheidungsgrenze)

## NN.Perzeptron.02: Logische Funktionen als Perzeptron (2P)

- (1.5P) Das Perzeptron kann zur Ausführung zahlreicher logischer
  Funktionen verwendet werden. Implementieren Sie die binären
  Logikfunktionen UND, ODER und KOMPLEMENT und demonstrieren Sie Ihre
  Implementierung in der Übung/im Praktikum.
- (0.5P) Eine grundlegende Einschränkung des Perzeptrons besteht darin,
  dass es die EXKLUSIV-ODER-Funktion nicht implementieren kann. Erklären
  Sie den Grund für diese Einschränkung.

*Thema*: Verständnis Perzeptron

## NN.Perzeptron.03: Perzeptron Lernalgorithmus (6P)

Ziel dieser Aufgabe ist es, mit Hilfe eines Experiments ein Gefühl für
die Laufzeit des Perzeptron-Lernalgorithmus zu bekommen und eine Art
empirische Approximation zu bestimmen.

### Datensatz (1P)

- Konstruieren Sie Ihren eigenen Datensatz $`\mathcal{D}`$ mit $`m=10`$
  gleichförmig verteilten Zufallspunkten aus dem Bereich
  $`\mathcal{X}=[-1, 1]\times[-1, 1]`$.
- Wählen Sie auf ähnliche Weise zwei zufällige, gleichmäßig verteilte
  Punkte aus dem Bereich $`[-1, 1]\times[-1, 1]`$. Verwenden Sie die
  Gerade, die durch diese zwei Punkte verläuft, als die
  Entscheidungsgrenze Ihrer Zielfunktion $`f`$. Sie können die positiv
  beschriftete Seite beliebig festlegen.
- Werten Sie die Zielfunktion für jeden Datenpunkt $`\mathbf{x}^{(j)}`$
  aus, um die entsprechenden Beschriftungen (Ausgangslabel) $`y^{(j)}`$
  zu erhalten.

### Training (3P)

Führen Sie nun den Perzeptron-Lernalgorithmus $`1000`$ mal
hintereinander aus. Initialisieren Sie jedes Mal die Gewichte mit $`0`$.
Wählen Sie in jedem Lernschritt einen Punkt $`\mathbf{x}^{(i)}`$
*zufällig* aus der Menge der falsch klassifizierten Punkte und
aktualisieren Sie die Gewichte entsprechend der folgenden Formel:
``` math
\mathbf{w}:=\mathbf{w}+\alpha ( y^{(i)} - h(\mathbf{x}^{(i)}) ) \mathbf{x}^{(i)}
```

Nehmen Sie $`\alpha=1`$ als Lernrate. Halten Sie für jeden Durchlauf
fest, wie viele Schritte der Algorithmus benötigt, um zu der endgültigen
Hypothese $`h^{*}(\mathbf{x})`$ zu konvergieren. Berechnen Sie am Ende
die durchschnittliche Anzahl von benötigten Schritten. In welcher
Größenordnung liegt sie?

### Experimente (2P)

Wiederholen Sie das obige Experiment mit $`m=100`$ und $`m=1000`$
Datenpunkten, jeweils ein Mal mit den Lernraten $`\alpha=1`$ und
$`\alpha=0.1`$. In welcher Größenordnung liegt die durchschnittliche
Anzahl von benötigten Schritten in diesen Fällen?

Um eine zuverlässigere Schätzung zu erhalten, können Sie dasselbe
Experiment mehrfach mit anderen zufällig generierten Datensätzen
derselben Größe $`m`$ wiederholen und danach den Durchschnitt über alle
Wiederholungen betrachten.

### Visualisierung (optional)

- Halten Sie während des Trainings die Anzahl der falsch klassifizierten
  Punkte fest und veranschaulichen Sie anschließend den Lernprozess mit
  Hilfe eines zweidimensionalen Plots.
- Visualisieren Sie (auf eine geeignete Weise) Meilenstein 2.1, wie sich
  die Entscheidungsrenze während des Trainings verändert.

Sie können das folgende [**Jupyter
Notebook**](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/homework/files/perzeptron_lernalgorithmus_starter.ipynb)
als Startpunkt benutzen.

Quelle: *Idee nach* Yaser S. Abu-Mostafa, Malik Magdon-Ismail, and
Hsuan-Tien Lin. 2012. Learning From Data. AMLBook.

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 2ed282e (homework: move discussion task ai and society back to first assignment, 2025-09-15)<br></sub></sup></p></blockquote>
