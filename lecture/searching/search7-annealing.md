---
title: "Lokale Suche: Simulated Annealing"
author: "Carsten Gips (HSBI)"
readings:
  - "@Russell2020: Simulated Annealing: Abschnitt 4.1.2"
tldr: |
  Lokale Suchverfahren: Nur das Ergebnis zählt! Nicht der Weg ist das Ziel, sondern nur
  das Erreichen des Ziels.

  Das Problem bei der Gradientensuche ist, dass man eine Kostenfunktion benötigt und
  diese auch **lokale Minima** enthalten kann. Mit der reinen Gradientensuche würde
  man bei Erreichen lokaler Minima die Suche abbrechen (müssen), da es keine weitere
  Verbesserung unter den Nachfolgern mehr geben kann. In Anlehnung an das Abkühlen von
  Metall kann hier eine Variante der lokalen Suche helfen: **Simulated Annealing**.
  Man führt einen "Temperatur"-Parameter ein, der im Laufe der Suche immer kleiner
  wird und schließlich gegen Null geht. In Abhängigkeit von dieser "Temperatur" wird
  mit einer bestimmten Wahrscheinlichkeit eine Verschlechterung akzeptiert: Bei einer
  hohen Temperatur ist diese Wahrscheinlichkeit höher, bei einer niedrigen Temperatur
  niedriger, so dass das Verfahren in ein normales Hill-Climbing übergeht. Damit kann
  man ein Festfressen in lokalen Minima vermeiden bzw. überwinden.
outcomes:
  - k2: "Funktionsweise Simulated Annealing"
quizzes:
  - link: "https://www.hsbi.de/elearning/goto.php?target=tst_1106602&client_id=FH-Bielefeld"
    name: "Selbsttest Simulated Annealing (ILIAS)"
assignments:
  - topic: sheet-ea
youtube:
  - link: "https://youtu.be/vPg7PWuY2bM"
    name: "VL Simulated Annealing"
fhmedia:
  - link: "https://www.hsbi.de/medienportal/m/5abd7e34f28bedb07ac3c4d9665a493bbf5b5cedfb97e91f9f2d8be0a3bace4e628a0b0ac2530e146ccbb0fd2de2fc99b48604d15c8b864b3f58825e8ca99260"
    name: "VL Simulated Annealing"
---


# Motivation

![](images/hill-climbing.png){width="60%"}

\bigskip

**Problem**: lokale Maxima und Plateaus

::: notes
*   Lokale Maxima/Minima: Algorithmus findet nur eine suboptimale Lösung
*   Plateaus: Hier muss der Algorithmus mit zufälligen Zügen explorieren


Mögliche Lösungen:

*   Neustart des Algorithmus, wenn kein Fortschritt erzielt wird
*   Rauschen "injizieren"
:::


::: notes
# Gedankenexperiment: Ausweg aus lokalen Minima

*   "Drehen der Landschaft": Minimieren statt Maximieren
*   Ball wird in Zustandsraum-Landschaft gesetzt.
*   Folge:
    *   rollt steilsten Abstieg hinunter
    *   rollt evtl. in Tal auf halber Höhe (lokales Minimum)
        => bleibt dort gefangen

\bigskip
\bigskip
\pause
=> "**Schütteln** der Landschaft" -- Ball springt aus dem Tal und
rollt in anderes Tal

\smallskip
Nicht zu stark schütteln -- sonst wird u.U. globales Minimum verlassen!
:::

[[Gedankenexperiment: Problem "drehen" und Ball in Zustandsraum-Landschaft werfen]{.ex}]{.slides}


::: notes
# Analogie Härten von Metall

*   Metall erhitzen bis Atome frei beweglich
*   Langsam abkühlen

=> stabiles Atomgitter mit minimalem Energiezustand
:::


::: notes
# Übertragen der Idee

*   Starkes "Schütteln" (hohe "Temperatur") am Anfang
*   Schrittweises "Abkühlen" => "Schütteln" im Laufe der Zeit
    verringern

=> **Simulated Annealing**
:::


# Pseudocode Simulated Annealing (Minimierungsproblem)

```python
def simulated_annealing(problem):
    current = problem.startNode
    t = 0;  temp = schedule(t)

    while temp>0:
        temp = schedule(++t)
        neighbors = current.expandSuccessors()
        if not neighbors: return current
        working = random.choice(neighbors)
        dE = problem.value(current) - problem.value(working)
        if dE > 0 or probability(math.exp(dE/temp)):
            current = working

    return current
```

::: notes
Wenn `dE` positiv ist, dann ist der Nachfolger "besser" (hier: kleiner bewertet) als der aktuelle Knoten und wird immer
als nächster Knoten übernommen.

Wenn `dE` negativ ist, dann ist der betrachtete Nachfolger "schlechter" (hier: größer bewertet) als der aktuelle Knoten.
Dann wird er mit einer Wahrscheinlichkeit `math.exp(dE/temp)` als nächster Knoten übernommen. Diese
Wahrscheinlichkeit ist bei hohen Temperaturen `temp` eher hoch, und sinkt, je niedriger die Temperatur `temp` wird.

Die Temperatur `temp` bewegt sich dabei von hohen positiven Werten auf den Wert Null (wird also nicht negativ).
:::

[[Anmerkung: Akzeptieren von Verschlechterungen]{.ex}]{.slides}


::: notes
# Detail: Akzeptieren von Verschlechterungen

:::center
![](https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Exp_e.svg/524px-Exp_e.svg.png){width="60%"}

[["Exp e.svg"](https://commons.wikimedia.org/wiki/File:Exp_e.svg) by Marcel Marnitz, reworked by [Georg-Johann](https://commons.wikimedia.org/wiki/User:Georg-Johann) on Wikimedia Commons ([Public Domain](https://en.wikipedia.org/wiki/Public_domain))]{.origin}
:::

*   Wahrscheinlichkeit zum Akzeptieren einer Verschlechterung: `math.exp(dE/temp)`
*   $dE$ negativ => $\exp\left(\text{dE}/\text{temp}\right) = \exp\left(-\frac{|\text{dE}|}{\text{temp}}\right) = \frac{1}{\exp\left(\frac{|\text{dE}|}{\text{temp}}\right)}$

$\exp(a)$ bzw. $e^a$:
*   $a<0$: geht gegen 0
*   $a=0$: 1
*   $a>0$: steil (exponentiell) gegen Unendlich ...

Wenn $dE$ negativ ist, wird `math.exp(dE/temp)` ausgewertet. Damit ergibt sich wegen $dE$ negativ:
$\exp\left(\text{dE}/\text{temp}\right) = \exp\left(-\frac{|\text{dE}|}{\text{temp}}\right) = \frac{1}{\exp\left(\frac{|\text{dE}|}{\text{temp}}\right)}$.
Betrachtung für $dE$ (nur negativer Fall!) und $\text{temp}$:
*   Temperatur $\text{temp}$ hoch: $a = \frac{|\text{dE}|}{\text{temp}}$ ist positiv und klein (nahe Null), d.h. $\exp(a)$ nahe 1 (oder
    größer), d.h. die Wahrscheinlichkeit $1/\exp(a)$ ist nahe 1 (oder kleiner)
*   Temperatur $\text{temp}$ wird kleiner und geht gegen Null: $a = \frac{|\text{dE}|}{\text{temp}}$ ist positiv und wird größer, d.h.
    $\exp(a)$ geht schnell gegen Unendlich, d.h. die Wahrscheinlichkeit $1/\exp(a)$ geht gegen 0
:::


# Abkühlungsplan problemabhängig wählen

*   Initiale Temperatur: So hoch, daß praktisch jede Änderung akzeptiert wird

\smallskip

*   Abkühlen: $T_k = \alpha T_{k-1}$ mit $0.8 \le \alpha \le 0.99$
    *   Ausreichend langsam abkühlen!
    *   Typisch: jede Stufe so lange halten, daß etwa 10 Änderungen akzeptiert wurden

\smallskip

*   Stop: Keine Verbesserungen in 3 aufeinander folgenden Temperaturen

::: notes
Der Abkühlungsplan muss problemabhängig gewählt werden. Das Beispiel zeigt typische Elementes
eines solchen Abkühlungsplans.
:::


::: notes
# Eigenschaften Simulated Annealing

*   Vollständigkeit: ja (mit gewisser Wahrscheinlichkeit)
*   Optimalität: ja (mit gewisser Wahrscheinlichkeit)

Voraussetzung: geeigneter Abkühlungsplan
:::

[[Eigenschaften: Vollständig und Optimal mit Wahrscheinlichkeit]{.ex}]{.slides}


::: notes
# Anwendungen von Simulated Annealing

*   Flugplan-Scheduling
*   Layout-Probleme (Chipentwurf, Leiterplatten)
*   Produktionsplanung
:::


# Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

\bigskip

*   Gradientenverfahren
    *   Analogie Bergsteigen: Gehe in Richtung des stärksten Anstiegs der
        Kostenfunktion => **Hill-Climbing**
    *   Achtung: Probleme mit lokalen Minima => **Simulated Annealing**
