# Games4: Alpha-Beta-Pruning

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Minimax entwickelt den gesamten Spielbaum. Wenn man dabei die bisher besten Werte für MAX und MIN als $\alpha$ und $\beta$ mitführt, beobachtet man, dass ein $\alpha$-Wert nie kleiner wird und ein $\beta$-Wert nie größer wird. Dies kann man ausnutzen und das Entwickeln von Pfaden abbrechen, wenn in einem MIN-Knoten der $\beta$-Wert kleiner wird als der $\alpha$-Wert des MAX-Vorgängers: (a) kann der $\beta$-Wert bei der weiteren Untersuchung der verbleibenden Nachfolger im MIN-Knoten nur noch kleiner werden, und (b) würde der MAX-Vorgänger diesen MIN-Knoten nie als Nachfolger in Betracht ziehen, da er bereits einen besseren Zug gesehen hat (da sein $\alpha$ größer ist als das $\beta$ im Nachfolger). Deshalb kann man hier sofort die Untersuchung der verbleibenden Nachfolger im MIN-Knoten abbrechen ("Pruning"). Eine analoge Überlegung gilt für einen MAX-Nachfolger unter einem MIN-Knoten.
>
> Dabei bleibt das Endergebnis erhalten. Man schneidet nur Suchpfade weg, die das Ergebnis von Minimax nicht verändern.
>
> Die mögliche Effizienzsteigerung ist sehr stark abhängig von Sortierung der Nachfolger! Deshalb stellt man häufig Heuristiken zur "richtigen" Sortierung der Nachfolger auf ("Killer-Moves").
>
> Zusätzlich kann man wie bei Minimax auch die Suchtiefe begrenzen und eine Bewertungsfunktion (statt der Nutzenfunktion) einsetzen. Auch hier kann die Bewertungsfunktion wieder gewichtete Features nutzen und/oder Positionen mit in Datenbanken gespeicherten Positionen und Bewertungen abgleichen.
>
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> Vorlesung \[[YT](https://youtu.be/lYCudNU6v34)\], \[[HSBI](https://www.hsbi.de/medienportal/album/video/gki-games4-alpha-beta-pruning/457023dac3b8a6273befbd92c4b09bba/251)\]
>
> </details>

## Verbesserung Minimax-Algorithmus

<p align="center"><picture><source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/games/images/minimax_inv.png" /><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/games/images/minimax.png" width="35%" /></picture></p>

$\to$ **Minimax-Baum**: Verbesserungen möglich?

## Alpha-beta-Pruning

Minimax-Algorithmus mit zusätzlichen Informationen:

-   $\alpha$: bisher bester Wert für MAX (höchster Wert)
-   $\beta$: bisher bester Wert für MIN (kleinster Wert)

$\to$ Beobachtungen:

1.  $\alpha$ für MAX-Knoten wird nie kleiner
2.  $\beta$ für MIN-Knoten wird nie größer

## Pruning-Regeln

1.  Schneide (unter) MIN-Knoten ab, deren $\beta \le$ dem $\alpha$ des MAX-Vorgängers ist.

<!-- -->

2.  Schneide (unter) MAX-Knoten ab, deren $\alpha \ge$ dem $\beta$ des MIN-Vorgängers ist.

<div data-align="center">

Abbruch, wenn kein Platz mehr zwischen Alpha und Beta

</div>

## Alpha-beta-Pruning -- Der Algorithmus (Skizze)

``` python
def Max-Value(state, alpha, beta):
    if Terminal-Test(state): return Utility(state)

    v = -INF
    for (a, s) in Successors(state):
        v = MAX(v, Min-Value(s, alpha, beta))
        if (v >= beta): return v
        alpha = MAX(alpha, v)
    return v
```

``` python
def Min-Value(state, alpha, beta):
    if Terminal-Test(state): return Utility(state)

    v = +INF
    for (a, s) in Successors(state):
        v = MIN(v, Max-Value(s, alpha, beta))
        if (v <= alpha): return v
        beta = MIN(beta, v)
    return v
```

Initialer Aufruf von `Max-Value()` mit $\alpha = -\infty$ und $\beta = +\infty$

**Achtung**: Es kursieren Varianten von diesem Algorithmus, bei denen auf die Hilfsvariable `v` verzichtet wird und stattdessen `alpha` bzw. `beta` direkt modifiziert werden und als Rückgabewert dienen. Das *kann* zu anderen oder falschen Ergebnissen führen! Sie können das in der Übungsaufgabe gut beobachten.

Hier noch zwei Links zu Online-Simulatoren für Minimax und Alpha-Beta-Pruning:

[homepage.ufp.pt/jtorres/ensino/ia/alfabeta.html](http://homepage.ufp.pt/jtorres/ensino/ia/alfabeta.html)

[raphsilva.github.io/utilities/minimax_simulator/](https://raphsilva.github.io/utilities/minimax_simulator/#) (englische Variante von https://github.com/lerneumann/minimax)

Vergleichen Sie die Ergebnisse im Simulator mit den selbst berechneten Werten.

## Alpha-beta-Pruning -- Eigenschaften

1.  Pruning beeinflusst nicht das Endergebnis!

2.  Sortierung der Nachfolger spielt große Rolle

3.  Perfekte Sortierung: $O(b^{d/2}) \to$ Verdopplung der Suchtiefe möglich

Für Schach immer noch zu aufwändig ...

## Verbesserungen für Alpha-beta-Pruning

-   "Killer-Move": Maximale Effizienz nur wenn **optimaler Zug immer zuerst** untersucht $\to$ Zu untersuchende Züge **sortieren/priorisieren**, zb. Schach:
    a)  Figuren schlagen
    b)  Drohen
    c)  Vorwärts ziehen
    d)  Rückwärts ziehen

<!-- -->

-   Verändern der Suchtiefe nach Spielsituation

<!-- -->

-   Bewertungsfunktion `Eval`:
    -   Datenbanken mit Spielsituationen und Expertenbewertung:
        -   Eröffnungsspiele (besonders viele Verzweigungen)
        -   Endspiele
    -   Lernen der optimalen Gewichte für `Eval`-Funktion
    -   Berücksichtigung von Symmetrien

## Beispiel DeepBlue (IBM, 1997)

-   Alpha-beta-Pruning mit Tiefenbeschränkung: ca. 14 Halbzüge
-   Dynamische Tiefenbeschränkung (stellungsabhängig, max. ca. 40 Züge)
-   Heuristische Stellungsbewertung `Eval`:
    -   mehr als 8.000 Features
    -   ca. 4.000 Eröffnungsstellungen
    -   ca. 700.000 Spielsituationen (von Experten bewertet)
    -   Endspiel-Datenbank: alle Spiele mit 5 Steinen, viele mit 6 Steinen

Quelle: ([Russell und Norvig 2014](#ref-Russell2014), p. 185)

## Beispiel AlphaGo (Google, 2016)

-   Beschränkung der Suchtiefe: Bewertung der Stellung durch *"Value Network"*
-   Beschränkung der Verzweigungsbreite: Bestimmung von Zugkandidaten durch *"Policy Network"*

<!-- -->

-   Training dieser *"Deep Neural Networks"*:
    -   Überwachtes Lernen: "Analyse" von Spiel-Datenbanken
    -   Reinforcement-Lernen: Self-Play, Bewertung am Ende
        -   Züge mit Monte-Carlo-Baumsuche ausgewählt

Quelle: ([<span class="nocase">Silver u. a.</span> 2016](#ref-Silver2016)), siehe auch [deepmind.com/research/alphago/](https://deepmind.com/research/case-studies/alphago-the-story-so-far)

## Wrap-Up

-   Alpha-beta-Pruning:
    -   Mitführen der bisher besten Werte für MAX und MIN: $\alpha$ und $\beta$
    -   Abschneiden von Pfaden, die Verschlechterung bewirken würden
    -   Endergebnis bleibt erhalten
    -   Effizienzsteigerung abhängig von Sortierung der Nachfolger

<!-- -->

-   Viele Verbesserungen denkbar:
    -   Zu untersuchende Züge "richtig" sortieren (Heuristik)
    -   Suchtiefe begrenzen und Bewertungsfunktion (statt Nutzenfunktion)
    -   Positionen mit Datenbank abgleichen

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Alpha-beta-Pruning: Abschnitt 6.2.3, Erweiterungen: Abschnitt 6.3
> -   Ertel ([2025](#ref-Ertel2025)): Kapitel 6.4.2 "Alpha-Beta-Pruning"
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k3: Ich kann Alpha-Beta-Pruning implementieren und anwenden
> -   k2: Ich kann die Anwendung verschiedener von Minimax her bekannter Optimierungsmöglichkeiten auf Alpha-Beta-Pruning erklären: Sortierung der Nachfolger, Suchtiefe beschränken (Übergang zu Bewertungsfunktion), Spielzug-Bewertung über Spieldatenbanken
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Alpha-Beta-Pruning (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106584&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Pruning sichtbar machen - gleicher Baum, andere Reihenfolge**
>
> Wir verwenden einen vollständigen Baum der Tiefe 3, Verzweigungsgrad 2:
>
>                                W (MAX)
>                           /               \
>                       A (MIN)            B (MIN)
>                      /      \           /      \
>                C (MAX)     D(MAX)   E (MAX)   F(MAX)
>                 / \         / \      / \       / \
>               L1  L2      L3  L4   L5  L6    L7  L8
>               3    5      6    9   1    2    0   -1
>
> 1.  Geben Sie die Minimax-Bewertung an.
> 2.  Führen Sie Alpha-Beta-Pruning durch. Wo würde der Algorithmus abschneiden?
> 3.  Die Reihenfolge des Betrachtens der Kind-Bäume kann für Alpha-Beta-Pruning wichtig sein. Geben Sie je eine Reihenfolge der Kindbäume C, D (unter A) und E, F (unter B) an, wo
>     -   möglichst viel abgeschnitten werden kann
>     -   möglichst wenig abgeschnitten werden kann
> 4.  Was bedeutet das für Implementierungen in echten Spielen?
> 5.  Was bedeutet das beim frühen Abschneiden und Verwenden von Heuristiken?
>
> **Alpha-Beta vs. Minimax**
>
> Betrachten Sie den folgenden Spielbaum:
>
>                          W (MAX)
>                       /           \
>                   A (MIN)        B (MIN)
>                   /    \         /    \
>                 L1      L2     L3      L4
>                (1)      (2)   (0)      (3)
>
> 1.  Führen Sie Minimax durch.
> 2.  Führen Sie Alpha-Beta-Pruning durch.
> 3.  Erklären Sie das Ergebnis.
>
> **Alpha-Beta und fehlerhafte Implementierung**
>
> Im Netz kursieren Varianten des Alpha-Beta-Prunings, wo auf die Hilfsvariable `v` verzichtet wird und stattdessen direkt mit den Werten $\alpha$ und $\beta$ gerechnet wird. Dies sieht dann beispielsweise so aus:
>
> ``` python
> def Max-Value(state, alpha, beta):
>     if terminal(state): return Utility(state)
>     for child in children(state):
>         alpha = max(alpha, Min-Value(child, alpha, beta))
>         if alpha >= beta: return alpha
>     return alpha
>
> def Min-Value(state, alpha, beta):
>     if terminal(state): return Utility(state)
>     for child in children(state):
>         beta = min(beta, Max-Value(child, alpha, beta))
>         if beta <= alpha: return beta
>     return beta
> ```
>
> Betrachten Sie nun den folgenden Spielbaum:
>
>                   W (MAX)
>                /          \
>            A (MIN)       B (MIN)
>            /    \        /    \
>          L1     L2     L3     L4
>         (5)     (6)   (4)     (7)
>
> Vergleichen Sie für diesen Spielbaum die in der Vorlesung besprochene Implementierung von Alpha-Beta-Pruning (siehe Skript/([Russell und Norvig 2021](#ref-Russell2021))) und die fehlerhafte Variante aus dem Netz.
>
> </details>

------------------------------------------------------------------------

> [!NOTE]
>
> <details >
> <summary><strong>👀 Quellen</strong></summary>
>
> <div id="refs" class="references csl-bib-body hanging-indent">
>
> <div id="ref-Ertel2025" class="csl-entry">
>
> Ertel, W. 2025. *Grundkurs Künstliche Intelligenz*. 6th edition. Springer Vieweg Wiesbaden. <https://doi.org/10.1007/978-3-658-44955-1>.
>
> </div>
>
> <div id="ref-Russell2014" class="csl-entry">
>
> Russell, S., und P. Norvig. 2014. *Artificial Intelligence: A Modern Approach*. 3rd revised edition. Pearson. <http://aima.cs.berkeley.edu>.
>
> </div>
>
> <div id="ref-Russell2021" class="csl-entry">
>
> Russell, S., und P. Norvig. 2021. *Artificial Intelligence: A Modern Approach*. 4th Edition. Pearson. <http://aima.cs.berkeley.edu>.
>
> </div>
>
> <div id="ref-Silver2016" class="csl-entry">
>
> <span class="nocase">Silver, D., A. Huang, C. Maddison, u. a.</span> 2016. „Mastering the Game of Go with Deep Neural Networks and Tree Search". *Nature* 529 (7587): 484. <https://doi.org/10.1038/nature16961>.
>
> </div>
>
> </div>
>
> </details>

------------------------------------------------------------------------

<p align="center"><img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png"  /></p>

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> f9717b2 2026-10-25 lecture: fix challenge (ab-pruning)<br></sub></sup></p></blockquote>
