---
author: Carsten Gips (HSBI)
title: Einführung Evolutionäre Algorithmen
---

::: tldr
Lokale Suchverfahren: Nur das Ergebnis zählt!

Evolutionäre Algorithmen sind lokale Suchverfahren, wobei gleichzeitig an mehreren
Stellen im Problemraum gesucht wird. Sie bedienen sich Mechanismen aus der
Evolution: Es gibt eine Population von Individuen, die jedes das Problem kodieren
("vollständige Zustandsbeschreibung") und damit im Laufe der Suche zu einer
möglichen Lösung werden können.
:::

::: youtube
-   [VL Einführung Evolutionäre Algorithmen](https://youtu.be/pKdKcPLI7V4)
:::

# Evolution sehr erfolgreich bei Anpassung

<!-- TODO
![](https://images.unsplash.com/flagged/photo-1552863473-6e5ffe5e052f?fm=png&crop=entropy&cs=tinysrgb){width="60%"}
-->

[[Photo](https://unsplash.com/photos/aWDgqexSxA0) by [Johannes
Plenio](https://unsplash.com/@jplenio) on Unsplash.com ([Unsplash
License](https://unsplash.com/license))]{.origin}

\bigskip
\bigskip

::: center
**Wie funktioniert's?**
:::

[[kurze Diskussion]{.ex}]{.slides}

# EA -- Zutaten und Mechanismen

-   Zutaten:
    -   **Individuen**: Kodierung möglicher Lösungen
    -   **Population** von Individuen
    -   **Fitnessfunktion**: Bewertung der Angepasstheit

\bigskip

-   Mechanismen ("Operatoren"):
    -   Selektion
    -   Rekombination (Crossover)
    -   Mutation

# EA -- Allgemeiner Ablauf

![](images/ea_prinz.png){width="80%" web_width="60%"}

# EA -- Beispiel

![](images/4-queens-example.png){width="40%" web_width="25%"}

::: notes
Jedes Individuum kodiert ein Spielfeld mit einer konkreten Anordnung **aller**
Königinnen =\> **Vollständige Zustandsbeschreibung**.

Dabei korrespondiert der Index in das Array des Individuums mit der jeweiligen
Spalte des Spielfelds. Die Zahl an einer Arrayposition gibt dann an, in welcher
Zeile in dieser Spalte eine Königin ist.

Crossover: Die ausgewählten Individuen werden an der selben Stelle aufgetrennt und
die Hälften verkreuzt zu zwei neuen Individuen zusammengesetzt. Es entstehen zwei
neue Anordnungen der Königinnen (zwei neue Spielfelder).
:::

[[Beispiel mit 4-Queens-Puzzle]{.ex}]{.slides}

# EA -- Strömungen

1.  **Genetische Algorithmen** (GA)
    -   Holland und Goldberg (ab 1960)
    -   Binäre Lösungsrepräsentation (Bitstring):
        $\mathbf{g} = (g_1, \dots, g_m)\in \{ 0,1\}^m$
    -   Fitnessbasierte stochastische Selektion
    -   $\mu$ Eltern erzeugen $\mu$ Kinder

\smallskip

2.  **Evolutionsstrategien** (ES)
    -   Rechenberg und Schwefel (ab 1960)
    -   Kodierung reellwertiger Parameter:
        $\mathbf{g} = (\mathbf{x}, \mathbf{\sigma})$ mit
        $\mathbf{x} = (x_1, \dots, x_n) \in \mathbb{R}^n$
    -   $\mu$ Eltern erzeugen $\lambda$ Kinder mit $\mu \le \lambda$

\smallskip

3.  **Evolutionäre Programmierung** (EP)

::: notes
*Hinweis*: Häufig finden sich Mischformen, beispielsweise GA mit reellwertigen
Parametern

*Hinweis*: Im Folgenden werden **Genetische Algorithmen** (GA) betrachtet. Sie
finden jeweils Hinweise auf die Gestaltung der Operatoren bei ES.
:::

# Anwendungsbeispiele für Evolutionäre Algorithmen

-   Berechnung und Konstruktion komplexer Bauteile: beispielsweise
    Tragflächenprofile (Flugzeuge), Brücken oder Fahrzeugteile unter
    Berücksichtigung bestimmter Nebenbedingungen
-   Scheduling-Probleme: Erstellung von Stunden- und Raumplänen oder Fahrplänen
-   Berechnung verteilter Netzwerktopologien: Wasserversorgung, Stromversorgung,
    Mobilfunk
-   Layout elektronischer Schaltkreise

# Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

\bigskip

-   Evolutionäre Algorithmen: Unterschied GA und ES (grober Überblick)

::: readings
-   @Russell2020: GA: Abschnitt 4.1.4
-   @Schwefel1995: Originalarbeit zu Evolutionsstrategien
-   @Michalewicz1996
-   @Baeck1996
-   @Nissen1997
:::

::: outcomes
-   k2: Ich kann die Problematik der lokalen Minima bei Gradientenverfahren erklären
-   k2: Ich kann einen Überblick über die verschiedenen Strömungen bei EA/GA
    darstellen
-   k2: Ich kann den prinzipiellen Ablauf von Genetischen Algorithmen an einem
    Beispiel erklären
:::
