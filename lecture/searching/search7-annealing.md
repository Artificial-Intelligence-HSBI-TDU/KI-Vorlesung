# Search: Lokale Suche - Simulated Annealing

> [!IMPORTANT]
>
> <details open>
>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lokale Suchverfahren: Nur das Ergebnis zählt! Nicht der Weg ist das
> Ziel, sondern nur das Erreichen des Ziels.
>
> Das Problem bei der Gradientensuche ist, dass man eine Kostenfunktion
> benötigt und diese auch **lokale Minima** enthalten kann. Mit der
> reinen Gradientensuche würde man bei Erreichen lokaler Minima die
> Suche abbrechen (müssen), da es keine weitere Verbesserung unter den
> Nachfolgern mehr geben kann. In Anlehnung an das Abkühlen von Metall
> kann hier eine Variante der lokalen Suche helfen: **Simulated
> Annealing**. Man führt einen “Temperatur”-Parameter ein, der im Laufe
> der Suche immer kleiner wird und schließlich gegen Null geht. In
> Abhängigkeit von dieser “Temperatur” wird mit einer bestimmten
> Wahrscheinlichkeit eine Verschlechterung akzeptiert: Bei einer hohen
> Temperatur ist diese Wahrscheinlichkeit höher, bei einer niedrigen
> Temperatur niedriger, so dass das Verfahren in ein normales
> Hill-Climbing übergeht. Damit kann man ein Festfressen in lokalen
> Minima vermeiden bzw. überwinden.
> </details>

> [!TIP]
>
> <details open>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Simulated Annealing](https://youtu.be/vPg7PWuY2bM)
>
> </details>

## Motivation

<picture><source media="(prefers-color-scheme: light)" srcset="images/hill-climbing_light.png"><source media="(prefers-color-scheme: dark)" srcset="images/hill-climbing_dark.png"><img src="images/hill-climbing.png" width="60%"></picture>

**Problem**: lokale Maxima und Plateaus

- Lokale Maxima/Minima: Algorithmus findet nur eine suboptimale Lösung
- Plateaus: Hier muss der Algorithmus mit zufälligen Zügen explorieren

Mögliche Lösungen:

- Neustart des Algorithmus, wenn kein Fortschritt erzielt wird
- Rauschen “injizieren”

## Gedankenexperiment: Ausweg aus lokalen Minima

- “Drehen der Landschaft”: Minimieren statt Maximieren
- Ball wird in Zustandsraum-Landschaft gesetzt.
- Folge:
  - rollt steilsten Abstieg hinunter
  - rollt evtl. in Tal auf halber Höhe (lokales Minimum) =\> bleibt dort
    gefangen

=\> “**Schütteln** der Landschaft” – Ball springt aus dem Tal und rollt
in anderes Tal

Nicht zu stark schütteln – sonst wird u.U. globales Minimum verlassen!

## Analogie Härten von Metall

- Metall erhitzen bis Atome frei beweglich
- Langsam abkühlen

=\> stabiles Atomgitter mit minimalem Energiezustand

## Übertragen der Idee

- Starkes “Schütteln” (hohe “Temperatur”) am Anfang
- Schrittweises “Abkühlen” =\> “Schütteln” im Laufe der Zeit verringern

=\> **Simulated Annealing**

## Pseudocode Simulated Annealing (Minimierungsproblem)

``` python
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

Wenn `dE` positiv ist, dann ist der Nachfolger “besser” (hier: kleiner
bewertet) als der aktuelle Knoten und wird immer als nächster Knoten
übernommen.

Wenn `dE` negativ ist, dann ist der betrachtete Nachfolger “schlechter”
(hier: größer bewertet) als der aktuelle Knoten. Dann wird er mit einer
Wahrscheinlichkeit `math.exp(dE/temp)` als nächster Knoten übernommen.
Diese Wahrscheinlichkeit ist bei hohen Temperaturen `temp` eher hoch,
und sinkt, je niedriger die Temperatur `temp` wird.

Die Temperatur `temp` bewegt sich dabei von hohen positiven Werten auf
den Wert Null (wird also nicht negativ).

## Detail: Akzeptieren von Verschlechterungen

<div align="center">

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Exp_e.svg/524px-Exp_e.svg.png" width="60%">

Quelle: [“Exp e.svg”](https://commons.wikimedia.org/wiki/File:Exp_e.svg)
by Marcel Marnitz, reworked by
[Georg-Johann](https://commons.wikimedia.org/wiki/User:Georg-Johann) on
Wikimedia Commons ([Public
Domain](https://en.wikipedia.org/wiki/Public_domain))

</div>

- Wahrscheinlichkeit zum Akzeptieren einer Verschlechterung:
  `math.exp(dE/temp)`

- Wenn $`dE`$ negativ ist, wird `math.exp(dE/temp)` ausgewertet

- Wenn $`dE`$ negativ, dann gilt (Umformung):

``` math
\exp\left(\text{dE}/\text{temp}\right) = \exp\left(-\frac{|\text{dE}|}{\text{temp}}\right) = \frac{1}{\exp\left(\frac{|\text{dE}|}{\text{temp}}\right)}
```

- Betrachtung von $`\exp(a)`$ bzw. $`e^a`$:

  - $`a<0`$: geht gegen 0
  - $`a=0`$: 1
  - $`a>0`$: steil (exponentiell) gegen Unendlich …

- Damit ergibt sich für $`dE`$ (nur negativer Fall!) und
  $`\text{temp}`$:

  - Temperatur $`\text{temp}`$ hoch:
    $`a = \frac{|\text{dE}|}{\text{temp}}`$ ist positiv und klein (nahe
    Null), d.h. $`\exp(a)`$ nahe 1 (oder größer), d.h. die
    Wahrscheinlichkeit $`1/\exp(a)`$ ist nahe 1 (oder kleiner)
  - Temperatur $`\text{temp}`$ wird kleiner und geht gegen Null:
    $`a = \frac{|\text{dE}|}{\text{temp}}`$ ist positiv und wird größer,
    d.h. $`\exp(a)`$ geht schnell gegen Unendlich, d.h. die
    Wahrscheinlichkeit $`1/\exp(a)`$ geht gegen 0

## Abkühlungsplan problemabhängig wählen

- Initiale Temperatur: So hoch, daß praktisch jede Änderung akzeptiert
  wird

<!-- -->

- Abkühlen: $`T_k = \alpha T_{k-1}`$ mit $`0.8 \le \alpha \le 0.99`$
  - Ausreichend langsam abkühlen!
  - Typisch: jede Stufe so lange halten, daß etwa 10 Änderungen
    akzeptiert wurden

<!-- -->

- Stop: Keine Verbesserungen in 3 aufeinander folgenden Temperaturen

Der Abkühlungsplan muss problemabhängig gewählt werden. Das Beispiel
zeigt typische Elementes eines solchen Abkühlungsplans.

## Eigenschaften Simulated Annealing

- Vollständigkeit: ja (mit gewisser Wahrscheinlichkeit)
- Optimalität: ja (mit gewisser Wahrscheinlichkeit)

Voraussetzung: geeigneter Abkühlungsplan

## Anwendungen von Simulated Annealing

- Flugplan-Scheduling
- Layout-Probleme (Chipentwurf, Leiterplatten)
- Produktionsplanung

## Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

- Gradientenverfahren
  - Analogie Bergsteigen: Gehe in Richtung des stärksten Anstiegs der
    Kostenfunktion =\> **Hill-Climbing**
  - Achtung: Probleme mit lokalen Minima =\> **Simulated Annealing**

## 📖 Zum Nachlesen

- Russell und Norvig ([2021](#ref-Russell2021)): Simulated Annealing:
  Abschnitt 4.1.2

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k3: Ich kann die Funktionsweise von Simulated Annealing erklären und
>   den Algorithmus auf ein konkretes Problem anwenden
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Simulated Annealing
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106602&client_id=FH-Bielefeld)
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Team-Planung**
>
> Sie haben 12 Personen mit Rollen/Skills und paarweisen Synergiewerten
> (positiv = gut, negativ = Konflikt). Es gibt die Rollen/Skills
> “Frontend” (FE), “Backend” (BE), “Fullstack” (FS) sowie “User
> Experience” (UX). Für die Synergie-Werte überlegen Sie sich einige
> passende Beispiele, etwa “Person A und B kommen gut miteinander aus”
> o.ä.
>
> Bilden Sie 3 Teams zu je 4 Personen, so dass
>
> - die Summe der Synergien innerhalb der Teams maximiert wird,
> - pro Team mindestens je 1x FE, 1x BE, 1x FS vorhanden ist (harte oder
>   weiche Nebenbedingung),
> - optional: UX in einem Team bringt Bonus.
>
> Es gibt exakt 12 Personen, darunter jeweils 3 FE, 3 BE, 3 FS, 3 UX.
>
> Modellieren Sie dieses Problem geeignet, damit Sie es mit Simulated
> Annealing lösen können.
> </details>

------------------------------------------------------------------------

> [!NOTE]
>
> <details>
>
> <summary><strong>👀 Quellen</strong></summary>
>
> <div id="refs" class="references csl-bib-body hanging-indent">
>
> <div id="ref-Russell2021" class="csl-entry">
>
> Russell, S., und P. Norvig. 2021. *Artificial Intelligence: A Modern
> Approach*. 4th Edition. Pearson. <http://aima.cs.berkeley.edu>.
>
> </div>
>
> </div>
>
> </details>

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

**Exceptions:**

- [“Exp e.svg”](https://commons.wikimedia.org/wiki/File:Exp_e.svg) by
  Marcel Marnitz, reworked by
  [Georg-Johann](https://commons.wikimedia.org/wiki/User:Georg-Johann)
  on Wikimedia Commons ([Public
  Domain](https://en.wikipedia.org/wiki/Public_domain))

<blockquote><p><sup><sub><strong>Last modified:</strong> 6eabe16 (lecture: add challenge (Search7), 2025-10-20)<br></sub></sup></p></blockquote>
