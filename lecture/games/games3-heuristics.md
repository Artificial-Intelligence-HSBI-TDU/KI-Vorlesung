# Games: Heuristiken

> [!IMPORTANT]
>
> <details open>
>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Minimax entwickelt den gesamten Spielbaum. Wenn nicht genug Zeit dafür
> zur Verfügung steht, kann man die Suchtiefe begrenzen. Für die
> Bewertung der Zustände benötigt man eine `Eval`-Funktion, die die
> Knoten in der selben Reihenfolge sortieren sollte wie es in der
> vollständigen Version über die `Utility`-Funktion geschieht. Die
> `Eval`-Funktion sollte zudem schnell zu berechnen sein. Typische
> Varianten für die `Eval`-Funktion sind gewichtete Features oder ein
> Nachschlagen in Spieldatenbanken (Spielzustand plus Bewertung).
>
> Minimax kann auf Spiele mit mehr als zwei Spielern erweitert werden.
> Dabei versucht dann jeder Spieler für sich, das Ergebnis des Spiels
> (aus seiner Sicht) zu maximieren.
>
> Bei Spielen mit Zufall (Würfelereignisse) kann man jedem
> Würfelereignis eine Wahrscheinlichkeit zuordnen und damit den jeweils
> erreichbaren `Max`- oder `Min`-Wert gewichten. Die Summe dieser
> gewichteten Bewertungen ist die Bewertung des entsprechenden
> “Chance”-Knotens, der dann in der darüberliegenden Ebene nach dem
> Minimax-Prinzip ausgewertet wird (=\> *Expectimax*).
> </details>

> [!TIP]
>
> <details open>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Heuristiken](https://youtu.be/rKqNqYBXuK8)
>
> </details>

## Wenn die Zeit nicht reicht: Suchtiefe begrenzen

- Einführung neuer Funktionen:
  1.  `Cutoff-Test` statt `Terminal-Test`

      Beispielsweise bei erreichter Tiefe oder Zeitüberschreitung

  <!-- -->

  1.  `Eval` statt `Utility`

      Bewertung der erreichten Position (statt nur Bewertung des
      Endzustandes)

<!-- -->

- Bedingungen an `Eval`:
  1.  Endknoten in selber Reihenfolge wie bei `Utility`
  2.  Schnell zu berechnen (!)

## Beispiel Schach

- Mögliche Evaluierungskriterien:
  - Materialwert: Bauer 1, Läufer/Springer 3, Turm 5, Dame 9
  - Stellungsbewertung: Sicherheit des Königs, Stellung der Bauern
  - Daumenregeln: 3 Punkte Vorteil =\> sicherer Sieg

<!-- -->

- Nutzung gewichteter Features $`f_i`$:
  $`\mathop{\text{Eval}}(s) = w_1f_1(s) + w_2f_2(s) + \ldots`$

  - Beispiel: $`w_1 = 9`$ und $`f_1(s)`$ = (# weiße Königinnen) - (#
    schwarze Königinnen)

<!-- -->

- **Alternativ**:
  - Speicherung von Positionen plus Bewertung in **Datenbanken** =\>
    Lookup mit $`\mathop{\text{Eval}}(s)`$ (statt Berechnung zur
    Laufzeit)
  - Training von **ML-Modellen** (Eingabe: Position, Ausgabe: Bewertung)
    =\> Lookup mit $`\mathop{\text{Eval}}(s)`$ (statt Berechnung zur
    Laufzeit also eine Art Klassifikation der aktuellen Position durch
    das MLP, welches die gelernte Bewertung ausgibt)

Oft ist das vollständige Berechnen eines Zweiges im Suchbaum sehr
zeitaufwändig und kostet viele Ressourcen (Speicher, Rechenkapazität).
In einem laufenden Spiel hat man aber nur begrenzt Zeit, und oft laufen
Spiele auf dedizierten Geräten mit eher beschränkter Hardware.

Wenn die einzelnen Zweige nicht mehr bis zu den Blättern berechnet
werden (können), muss man den aktuellen Zustand aber dennoch bewerten
können. Dies wird im Algorithmus durch die Funktion
$`\mathop{\text{Eval}}(s)`$ erledigt (für den Zustand $`s`$).

Für diese Funktion kann man unterschiedliche Strategien anwenden:

- Oft gibt es Heuristiken, mit denen eine Stellung im Spiel ungefähr
  bewertet werden kann (obiges Beispiel: Schach mit der
  Materialbewertung). Damit müssen nicht alle Züge im Vorfeld
  durchgerechnet werden.
- Eine andere häufig genutzte Strategie ist das Berechnen von möglichst
  vielen Positionen und der jeweiligen Bewertung vor dem Spiel und das
  Abspeichern der Tupel (Position, Bewertung) in einer Datenbank. Im
  Spiel selbst kann man dann relativ schnell die Bewertung der aktuellen
  Position aus der Datenbank holen.
- Eine weitere häufig angewendete Strategie ist das Trainieren eines
  neuronalen Netzes (etwa Multilagen-Perzeptron, MLP) mit vorab
  berechneten Positionen und Bewertungen. Im Spiel wird dann die
  aktuelle Position in das Netz gegeben und der Output als Bewertung
  genutzt.
- Eine weitere Strategie ist die Monte Carlo Tree Search. In einer
  Position hat man i.d.R. relativ viele Möglichkeiten, d.h. der Knoten
  im Suchbaum hat entsprechend viele Ausgänge. Statt nun zeitaufwändig
  die vollständige Suche über alle Ausgänge durchzuführen, wird die
  Berechnung nur für zufällig gewählte Zweige durchgeführt und das
  Ergebnis gemittelt und als Schätzung für die Bewertung des Knotens
  genutzt.
- Zum Berechnen der Bewertungen kann auch Reinforcement Learning
  herangezogen werden. Hier machen die Agenten nacheinander ihre Züge
  und erst am Ende erfolgt eine Bewertung durch den Trainer. Diese
  Bewertung wird dann auf die einzelnen Züge zurückgerechnet, und durch
  mehrfaches Durchspielen immer weiter verbessert.

## Minimax mit mehreren Spielern

<picture><source media="(prefers-color-scheme: light)" srcset="images/minimax3_light.png"><source media="(prefers-color-scheme: dark)" srcset="images/minimax3_dark.png"><img src="images/minimax3.png" width="35%"></picture>

Hier maximiert jeder Spieler sein eigenes Ergebnis. Im Grunde müsste
diese Variante dann besser “Maximax” heissen …

Wenn es an einer Stelle im Suchbaum mehrere gleich gute (beste) Züge
geben sollte, kann der Spieler Allianzen bilden: Er könnte dann einen
Zug auswählen, der für einen der Mitspieler günstiger ist.

## Zufallsspiele

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Backgammon_lg.png/960px-Backgammon_lg.png" width="60%">

Quelle: [Backgammon
lg.png](https://commons.wikimedia.org/wiki/File:Backgammon_lg.png) by
[Ptkfgs](https://commons.wikimedia.org/wiki/User:Ptkfgs) on Wikimedia
Commons ([Public
Domain](https://en.wikipedia.org/wiki/en:public_domain))

Backgammon: Was ist in dieser Situation der optimale Zug?

## Minimax mit Zufallsspielen: ZUFALLS-Knoten

<picture><source media="(prefers-color-scheme: light)" srcset="images/expectimax_light.png"><source media="(prefers-color-scheme: dark)" srcset="images/expectimax_dark.png"><img src="images/expectimax.png" width="35%"></picture>

Zusätzlich zu den MIN- und MAX-Knoten führt man noch Zufalls-Knoten ein,
um das Würfelergebnis repräsentieren zu können. Je möglichem
Würfelergebnis $`i`$ gibt es einen Ausgang, an dem die
Wahrscheinlichkeit $`P(i)`$ dieses Ausgangs annotiert wird.

=\> Für Zufallsknoten **erwarteten** Minimax-Wert (*Expectimax*) nutzen

## Minimax mit Zufall: Expectimax

Expectimax-Wert für Zufallsknoten $`C`$:

``` math
\mathop{\text{Expectimax}}(C) = \sum_i P(i) \mathop{\text{Expectimax}}(s_i)
```

- $`i`$ mögliches Würfelergebnis
- $`P(i)`$ Wahrscheinlichkeit für Würfelergebnis
- $`s_i`$ Nachfolgezustand von $`C`$ gegeben Würfelergebnis $`i`$

Für die normalen Min- und Max-Knoten liefert `Expectimax()` die üblichen
Aufrufe von `Min-Value()` bwz. `Max-Value()`.

Auf
[wikipedia.org/wiki/Expectiminimax](https://en.wikipedia.org/wiki/Expectiminimax)
finden Sie eine Variante mit einem zusätzlichen Tiefenparameter, um bei
einer bestimmten Suchtiefe abbrechen zu können. Dies ist bereits eine
erweiterte Version, wo man beim Abbruch durch das Erreichen der
Suchtiefe statt `Utility()` eine `Eval()`-Funktion braucht. Zusätzlich
kombiniert der dort gezeigte Algorithmus die Funktionen `Expectimax()`,
`Min-Value()` und `Max-Value()` in eine einzige Funktion.

Eine ähnliche geschlossene Darstellung finden Sie im ([Russell und
Norvig 2021, 212](#ref-Russell2021)).

**Hinweis**: Üblicherweise sind die Nachfolger der Zufallsknoten gleich
wahrscheinlich. Dann kann man einfach mit dem Mittelwert der Bewertung
der Nachfolger arbeiten.

## Wrap-Up

- Minimax:
  - Kriterien zur Begrenzung der Suchtiefe, Bewertung `Eval` statt
    `Utility`
  - Erweiterung auf $`>2`$ Spieler
  - Erweiterung auf Spiele mit Zufall: *Expectimax*

## 📖 Zum Nachlesen

- Russell und Norvig ([2021](#ref-Russell2021)): Erweiterungen und
  Heuristiken: Abschnitte 6.2.2, 6.3, 6.5
- Ertel ([2025](#ref-Ertel2025)): Kapitel 6.5 “Heuristische
  Bewertungsfunktionen”

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Ich kann die Erweiterung von Minimax für mehr als zwei Spieler
>   erklären
> - k2: Ich kann die Erweiterung von Minimax mit Zufallskomponenten
>   erklären
> - k2: Ich kann die Heuristik erklären: Sortierung der Nachfolger
> - k2: Ich kann erklären, wie die Suchtiefe beschränkt werden kann
>   durch den Übergang zu Bewertungsfunktion
> - k2: Ich kann erklären, wie eine Stellungsbewertung über
>   Spieldatenbanken funktioniert
> - k3: Ich kann den Minimax-Algorithmus implementieren
> - k3: Ich kann Tiefenbeschränkung und Bewertungsfunktion bei Minimax
>   einsetzen
>
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
> <div id="ref-Ertel2025" class="csl-entry">
>
> Ertel, W. 2025. *Grundkurs Künstliche Intelligenz*. 6th edition.
> Springer Vieweg Wiesbaden.
> <https://doi.org/10.1007/978-3-658-44955-1>.
>
> </div>
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

- [Backgammon
  lg.png](https://commons.wikimedia.org/wiki/File:Backgammon_lg.png) by
  [Ptkfgs](https://commons.wikimedia.org/wiki/User:Ptkfgs) on Wikimedia
  Commons ([Public
  Domain](https://en.wikipedia.org/wiki/en:public_domain))

<blockquote><p><sup><sub><strong>Last modified:</strong> c9e46ab (lecture: update readings on Minimax and Alpha-Beta-Pruning (Games), 2025-10-23)<br></sub></sup></p></blockquote>
