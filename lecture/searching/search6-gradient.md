# Search: Lokale Suche - Gradientensuche

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lokale Suchverfahren: Nur das Ergebnis zählt! Nicht der Weg ist das
> Ziel, sondern nur das Erreichen des Ziels.
>
> In Analogie zum Bergsteigen: Gehe in Richtung des stärksten Anstiegs
> kann man die Suche so formulieren, dass man in jedem Suchschritt den
> Nachfolgeknoten nach dem stärksten Anstieg der Kostenfunktion
> auswählen. Dieses Verfahren nennt sich auch **Hill-Climbing** (bzw.
> Gradientensuche).
> </details>

> [!TIP]
>
> <details open>
> <summary><strong>🎦 Videos</strong></summary>
>
> -   [VL Gradientensuche](https://youtu.be/TcTF9xdW3WU)
>
> </details>

## Unterschiede in den Suchproblemen?

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/graph.png" width="60%" /></p>

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/screenshot_stundenplan.png" width="60%" /></p>

Bisher betrachtete Suchverfahren:

-   Systematische Erkundung des Suchraums
-   **Weg** zur Lösung wichtig

=\> Oft aber nur das **Ziel an sich** interessant! (Und nicht, wie man
dort hin gelangt.)

Beispiel: Stundenplan

## Analogie: Bergsteigen ohne Karte und Pfade

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/hill-climbing.png" width="50%" /></p>

**Gradienten-Suche**: "Gehe in Richtung des steilsten Anstiegs der
Zielfunktion."

=\> Schrittweise Verbesserung des aktuellen Zustands (Lokale Suche)

-   Verschiedene Namen: "Hill-climbing", "Greedy local search"
-   Kann auch als Minimierung angewendet werden

## Pseudoalgorithmus Gradientensuche

<div align="center">

"*Wie Bergsteigen am Mount Everest in dickem Nebel mit
Gedächtnisverlust*"

</div>

1.  Setze `currNode` auf den Startknoten
2.  `currNode` ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Expandiere alle Nachfolger von `currNode`
    -   Setze `nextNode` auf Nachfolger mit höchster Bewertung
    -   Falls Bewertung von `nextNode` $\leq$ Bewertung von `currNode`:
        Abbruch, melde "*nicht gefunden*"
    -   Setze `currNode` auf `nextNode`
3.  Gehe zu Schritt 2

<div align="center">

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/tafelbeispiel.png" width="60%" /></p>

</div>

## Beispiel Gradientensuche: $n$-Damen

-   **Ziel**: Setze $n$ Damen auf ein $n \times n$-Spielfeld ohne
    Konflikte
-   **Start**: Setze $n$ Damen auf ein $n \times n$-Spielfeld (mit
    Konflikten)
-   **Suche**: Bewege jeweils eine Dame so, daß die Anzahl der Konflikte
    reduziert wird

Schauen Sie sich auch Abb. 4.3 auf Seite 130 im Russell und Norvig
([2021](#ref-Russell2021)) an!

**Hinweis**: Alle Damen stehen von Anfang an auf dem Brett und werden
nur verschoben =\> "vollständige Zustandsformulierung"

### Eigenschaften 8-Damen-Problem ($n=8$)

-   Zustandsraum: $8^8 \approx 17$ Millionen Zustände!
-   Beginnend mit zufällig erzeugtem Startzustand:
    -   bleibt in 86% der Fälle stecken, d.h.
    -   findet Lösung nur in 14% der Fälle.
-   Beobachtung: Lösung nach durchschnittlich 4 Schritten, oder
    Verfahren bleibt nach durchschnittlich 3 Schritten stecken.

Quelle: nach ([Russell und Norvig 2021](#ref-Russell2021), p. 131)

## Eigenschaften Gradientensuche

-   Vollständigkeit: nein
-   Optimalität: nein
-   Komplexität: linear in der Anzahl der zu expandierenden Knoten

**Zielfunktion (Bewertung) nötig!**

<p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/hill-climbing.png" width="60%" /></p>

**Problem**: lokale Maxima und Plateaus

-   Lokale Maxima/Minima: Algorithmus findet nur eine suboptimale Lösung
-   Plateaus: Hier muss der Algorithmus mit zufälligen Zügen explorieren

## Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

-   Gradientenverfahren: Gehe in Richtung des stärksten Anstiegs der
    Kostenfunktion

> [!TIP]
>
> <details open>
> <summary><strong>📖 Zum Nachlesen</strong></summary>
>
> -   Russell und Norvig ([2021](#ref-Russell2021)): Gradientenabstieg:
>     Abschnitt 4.1.1
>
> </details>

> [!NOTE]
>
> <details >
> <summary><strong>✅ Lernziele</strong></summary>
>
> -   k2: Ich kann die Problematik der lokalen Minima bei
>     Gradientenverfahren erklären
> -   k3: Ich kann die lokale Suche (Gradientenabstieg) auf ein
>     konkretes Problem anwenden
>
> </details>

> [!TIP]
>
> <details >
> <summary><strong>🧩 Quizzes</strong></summary>
>
> -   [Selbsttest Gradientensuche
>     (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106601&client_id=FH-Bielefeld)
>
> </details>

> [!IMPORTANT]
>
> <details open>
> <summary><strong>🏅 Challenges</strong></summary>
>
> Betrachten Sie folgende Landkarte und Restwegschätzungen:
>
> <p align="center"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MapGermanyGraph.svg/476px-MapGermanyGraph.svg.png"  /></p>
>
> Quelle: [MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg){width="40%"}
> by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and
> [Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on Wikimedia
> Commons ([Public
> Domain](https://en.wikipedia.org/wiki/en:public_domain))
>
> <p align="center"><img src="https://raw.githubusercontent.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/_w26/lecture/searching/images/challenge.png"  /></p>
>
> Finden Sie mit der **Gradienten-Suche** jeweils einen Weg von Würzburg
> nach München. Vergleichen Sie das Ergebnis mit der Best-First-Suche.
> </details>

------------------------------------------------------------------------

> [!NOTE]
>
> <details >
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

<p align="center"><img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png"  /></p>

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

**Exceptions:**

-   [MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg){width="40%"}
    by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and
    [Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on
    Wikimedia Commons ([Public
    Domain](https://en.wikipedia.org/wiki/en:public_domain))

<blockquote><p><sup><sub><strong>Last modified:</strong> 6a8bc1e 2025-10-15 lecture: use local images for challenges (Search6)<br></sub></sup></p></blockquote>
