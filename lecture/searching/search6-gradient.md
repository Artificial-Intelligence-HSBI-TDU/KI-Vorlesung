---
author: Carsten Gips (HSBI)
title: "Search: Lokale Suche - Gradientensuche"
---

::: tldr
Lokale Suchverfahren: Nur das Ergebnis zählt! Nicht der Weg ist das Ziel, sondern
nur das Erreichen des Ziels.

In Analogie zum Bergsteigen: Gehe in Richtung des stärksten Anstiegs kann man die
Suche so formulieren, dass man in jedem Suchschritt den Nachfolgeknoten nach dem
stärksten Anstieg der Kostenfunktion auswählen. Dieses Verfahren nennt sich auch
**Hill-Climbing** (bzw. Gradientensuche).
:::

::: youtube
-   [VL Gradientensuche](https://youtu.be/TcTF9xdW3WU)
:::

# Unterschiede in den Suchproblemen?

::::: columns
::: {.column width="46%"}
![](images/graph.png){width="80%" web_width="60%"}
:::

::: {.column width="46%"}
![](images/screenshot_stundenplan.png){width="80%" web_width="60%"}
:::
:::::

::: notes
Bisher betrachtete Suchverfahren:

-   Systematische Erkundung des Suchraums
-   **Weg** zur Lösung wichtig

\smallskip

=\> Oft aber nur das **Ziel an sich** interessant! `\newline`{=tex} (Und nicht, wie
man dort hin gelangt.)

\bigskip

Beispiel: Stundenplan
:::

# Analogie: Bergsteigen ohne Karte und Pfade

![](images/hill-climbing.png){width="50%"}

\bigskip
\bigskip

**Gradienten-Suche**: "Gehe in Richtung des steilsten Anstiegs der Zielfunktion."

=\> Schrittweise Verbesserung des aktuellen Zustands (Lokale Suche)

::: notes
-   Verschiedene Namen: "Hill-climbing", "Greedy local search"
-   Kann auch als Minimierung angewendet werden
:::

# Pseudoalgorithmus Gradientensuche

::: center
"*Wie Bergsteigen am Mount Everest in dickem Nebel mit Gedächtnisverlust*"
:::

\bigskip
\bigskip

1.  Setze `currNode` auf den Startknoten
2.  `currNode` ist gesuchtes Element: Abbruch, melde "*gefunden*"
    -   Expandiere alle Nachfolger von `currNode`
    -   Setze `nextNode` auf Nachfolger mit höchster Bewertung
    -   Falls Bewertung von `nextNode` $\leq$ Bewertung von `currNode`:
        `\newline`{=tex} Abbruch, melde "*nicht gefunden*"
    -   Setze `currNode` auf `nextNode`
3.  Gehe zu Schritt 2

:::: notes
::: center
![](images/tafelbeispiel.png){width="90%" web_width="60%"}
:::
::::

[[Tafelbeispiel Gradientensuche, Bewertung: Restkostenschätzung]{.ex}]{.slides}

::: notes
# Beispiel Gradientensuche: $n$-Damen

-   **Ziel**: Setze $n$ Damen auf ein $n \times n$-Spielfeld ohne Konflikte
-   **Start**: Setze $n$ Damen auf ein $n \times n$-Spielfeld (mit Konflikten)
-   **Suche**: Bewege jeweils eine Dame so, daß die Anzahl der Konflikte reduziert
    wird

Schauen Sie sich auch Abb. 4.3 auf Seite 130 im @Russell2020 an!

**Hinweis**: Alle Damen stehen von Anfang an auf dem Brett und werden nur verschoben
=\> "vollständige Zustandsformulierung"

## Eigenschaften 8-Damen-Problem ($n=8$)

-   Zustandsraum: $8^8 \approx 17$ Millionen Zustände!
-   Beginnend mit zufällig erzeugtem Startzustand:
    -   bleibt in 86% der Fälle stecken, d.h.
    -   findet Lösung nur in 14% der Fälle.
-   Beobachtung: Lösung nach durchschnittlich 4 Schritten, oder Verfahren bleibt
    nach durchschnittlich 3 Schritten stecken.

[nach [@Russell2020, p. 131]]{.credits nolist=true}
:::

# Eigenschaften Gradientensuche

::: notes
-   Vollständigkeit: nein
-   Optimalität: nein
-   Komplexität: linear in der Anzahl der zu expandierenden Knoten

\smallskip

**Zielfunktion (Bewertung) nötig!**
:::

![](images/hill-climbing.png){width="60%"}

\bigskip

**Problem**: lokale Maxima und Plateaus

::: notes
-   Lokale Maxima/Minima: Algorithmus findet nur eine suboptimale Lösung
-   Plateaus: Hier muss der Algorithmus mit zufälligen Zügen explorieren
:::

# Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

\bigskip

-   Gradientenverfahren: Gehe in Richtung des stärksten Anstiegs der Kostenfunktion

::: readings
-   @Russell2020: Gradientenabstieg: Abschnitt 4.1.1
:::

::: outcomes
-   k2: Ich kann die Problematik der lokalen Minima bei Gradientenverfahren erklären
-   k3: Ich kann die lokale Suche (Gradientenabstieg) auf ein konkretes Problem
    anwenden
:::

::: quizzes
-   [Selbsttest Gradientensuche
    (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106601&client_id=FH-Bielefeld)
:::

::: challenges
Betrachten Sie folgende Landkarte und Restwegschätzungen:

<!-- TODO
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MapGermanyGraph.svg/476px-MapGermanyGraph.svg.png)
-->

[[MapGermanyGraph.svg](https://commons.wikimedia.org/wiki/File:MapGermanyGraph.svg){width="40%"}
by [Regnaron](https://de.wikipedia.org/wiki/Benutzer:Regnaron) and
[Jahobr](https://commons.wikimedia.org/wiki/User:Jahobr) on Wikimedia Commons
([Public Domain](https://en.wikipedia.org/wiki/en:public_domain))]{.credits}

![](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/searching/images/challenge.png?raw=true)

Finden Sie mit der **Gradienten-Suche** jeweils einen Weg von Würzburg nach München.
Vergleichen Sie das Ergebnis mit der Best-First-Suche.
:::
