---
author: Carsten Gips (HSBI)
title: Heuristiken
---

::: tldr
Minimax entwickelt den gesamten Spielbaum. Wenn nicht genug Zeit dafür zur Verfügung
steht, kann man die Suchtiefe begrenzen. Für die Bewertung der Zustände benötigt man
eine `Eval`-Funktion, die die Knoten in der selben Reihenfolge sortieren sollte wie
es in der vollständigen Version über die `Utility`-Funktion geschieht. Die
`Eval`-Funktion sollte zudem schnell zu berechnen sein. Typische Varianten für die
`Eval`-Funktion sind gewichtete Features oder ein Nachschlagen in Spieldatenbanken
(Spielzustand plus Bewertung).

Minimax kann auf Spiele mit mehr als zwei Spielern erweitert werden. Dabei versucht
dann jeder Spieler für sich, das Ergebnis des Spiels (aus seiner Sicht) zu
maximieren.

Bei Spielen mit Zufall (Würfelereignisse) kann man jedem Würfelereignis eine
Wahrscheinlichkeit zuordnen und damit den jeweils erreichbaren `Max`- oder
`Min`-Wert gewichten. Die Summe dieser gewichteten Bewertungen ist die Bewertung des
entsprechenden "Chance"-Knotens, der dann in der darüberliegenden Ebene nach dem
Minimax-Prinzip ausgewertet wird (=\> *Expectimax*).
:::

::: youtube
-   [VL Heuristiken](https://youtu.be/rKqNqYBXuK8)
:::

# Wenn die Zeit nicht reicht: Suchtiefe begrenzen

-   Einführung neuer Funktionen:
    1.  `Cutoff-Test` statt `Terminal-Test`

        Beispielsweise bei erreichter Tiefe oder Zeitüberschreitung

    \smallskip

    2.  `Eval` statt `Utility`

        Bewertung der erreichten Position (statt nur Bewertung des Endzustandes)

\bigskip

-   Bedingungen an `Eval`:
    1.  Endknoten in selber Reihenfolge wie bei `Utility`
    2.  Schnell zu berechnen (!)

# Beispiel Schach

-   Mögliche Evaluierungskriterien:
    -   Materialwert: Bauer 1, Läufer/Springer 3, Turm 5, Dame 9
    -   Stellungsbewertung: Sicherheit des Königs, Stellung der Bauern
    -   Daumenregeln: 3 Punkte Vorteil =\> sicherer Sieg

\smallskip

-   Nutzung gewichteter Features $f_i$:
    `\quad`{=tex}$\operatorname{Eval}(s) = w_1f_1(s) + w_2f_2(s) + \ldots$

    -   [Beispiel:]{.notes} $w_1 = 9$ und $f_1(s)$ = (# weiße Königinnen) - (#
        schwarze Königinnen)

\bigskip

-   **Alternativ**: Speicherung von Positionen plus Bewertung in Datenbanken
    `\newline`{=tex} =\> Lookup mit $\operatorname{Eval}(s)$ [(statt Berechnung zur
    Laufzeit)]{.notes}

# Minimax mit mehreren Spielern

::: slides
\bigskip

![](images/minimax3.png){width="90%"}
:::

::: notes
![](images/minimax3.png){width="50%"}
:::

[[Tafelbeispiel]{.ex}]{.slides}

::: notes
Hier maximiert jeder Spieler sein eigenes Ergebnis. Im Grunde müsste diese Variante
dann besser "Maximax" heissen ...

Wenn es an einer Stelle im Suchbaum mehrere gleich gute (beste) Züge geben sollte,
kann der Spieler Allianzen bilden: Er könnte dann einen Zug auswählen, der für einen
der Mitspieler günstiger ist.
:::

# Zufallsspiele

<!-- TODO
![](https://live.staticflickr.com/3670/11267311625_e4758ff425_o_d.jpg){width="60%"}
-->

[["position-backgammon-decembre"](https://www.flickr.com/photos/83436399@N04/11267311625)
by [serialgamer_fr](https://www.flickr.com/photos/83436399@N04) on Flickr.com ([CC
BY
2.0](https://creativecommons.org/licenses/by/2.0/?ref=ccsearch&atype=rich))]{.origin}

Backgammon: Was ist in dieser Situation der optimale Zug?

# Minimax mit Zufallsspielen: ZUFALLS-Knoten

::: slides
\bigskip

![](images/expectimax.png){width="90%"}
:::

::: notes
![](images/expectimax.png){width="50%"}
:::

::: notes
Zusätzlich zu den MIN- und MAX-Knoten führt man noch Zufalls-Knoten ein, um das
Würfelergebnis repräsentieren zu können. Je möglichem Würfelergebnis $i$ gibt es
einen Ausgang, an dem die Wahrscheinlichkeit $P(i)$ dieses Ausgangs annotiert wird.
:::

=\> Für Zufallsknoten **erwarteten** Minimax-Wert (*Expectimax*) nutzen

[[Tafelbeispiel]{.ex}]{.slides}

# Minimax mit Zufall: Expectimax

Expectimax-Wert für Zufallsknoten $C$:

$$    \operatorname{Expectimax}(C) = \sum_i P(i) \operatorname{Expectimax}(s_i)$$

\bigskip

-   $i$ mögliches Würfelergebnis
-   $P(i)$ Wahrscheinlichkeit für Würfelergebnis
-   $s_i$ Nachfolgezustand von $C$ gegeben Würfelergebnis $i$

::: notes
Für die normalen Min- und Max-Knoten liefert `Expectimax()` die üblichen Aufrufe von
`Min-Value()` bwz. `Max-Value()`.

Auf
[wikipedia.org/wiki/Expectiminimax](https://en.wikipedia.org/wiki/Expectiminimax)
finden Sie eine Variante mit einem zusätzlichen Tiefenparameter, um bei einer
bestimmten Suchtiefe abbrechen zu können. Dies ist bereits eine erweiterte Version,
wo man beim Abbruch durch das Erreichen der Suchtiefe statt `Utility()` eine
`Eval()`-Funktion braucht. Zusätzlich kombiniert der dort gezeigte Algorithmus die
Funktionen `Expectimax()`, `Min-Value()` und `Max-Value()` in eine einzige Funktion.

Eine ähnliche geschlossene Darstellung finden Sie im [@Russell2020, S. 212].

**Hinweis**: Üblicherweise sind die Nachfolger der Zufallsknoten gleich
wahrscheinlich. Dann kann man einfach mit dem Mittelwert der Bewertung der
Nachfolger arbeiten.
:::

# Wrap-Up

-   Minimax:
    -   Kriterien zur Begrenzung der Suchtiefe, Bewertung `Eval` statt `Utility`
    -   Erweiterung auf $>2$ Spieler
    -   Erweiterung auf Spiele mit Zufall: *Expectimax*

::: readings
-   @Russell2020: Erweiterungen und Heuristiken: Abschnitte 6.2.2, 6.3, 6.5
-   @Ertel2017
:::

::: outcomes
-   k2: Minimax für mehr als zwei Spieler
-   k2: Minimax mit Zufallskomponente
-   k2: Optimierungsmöglichkeit: Sortierung der Nachfolger =\> Heuristik
-   k2: Optimierungsmöglichkeit: Suchtiefe beschränken =\> Übergang zu
    Bewertungsfunktion
-   k2: Optimierungsmöglichkeit: Bewertung über Spieldatenbanken
-   k3: Minimax-Algorithmus
-   k3: Tiefenbeschränkung und Bewertungsfunktion bei Minimax
:::
