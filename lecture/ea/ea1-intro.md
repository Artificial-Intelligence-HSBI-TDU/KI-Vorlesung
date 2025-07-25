# Einführung Evolutionäre Algorithmen

> [!NOTE]
> <details open>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lokale Suchverfahren: Nur das Ergebnis zählt!
>
> Evolutionäre Algorithmen sind lokale Suchverfahren, wobei gleichzeitig
> an mehreren Stellen im Problemraum gesucht wird. Sie bedienen sich
> Mechanismen aus der Evolution: Es gibt eine Population von Individuen,
> die jedes das Problem kodieren ("vollständige Zustandsbeschreibung")
> und damit im Laufe der Suche zu einer möglichen Lösung werden können.
>
> </details>
> <details>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Einführung Evolutionäre
>   Algorithmen](https://youtu.be/pKdKcPLI7V4)
>
> </details>

## Evolution sehr erfolgreich bei Anpassung

<div style="width:60%;">

![](https://images.unsplash.com/flagged/photo-1552863473-6e5ffe5e052f?fm=png&crop=entropy&cs=tinysrgb)

</div>

Quelle: [Photo](https://unsplash.com/photos/aWDgqexSxA0) by [Johannes
Plenio](https://unsplash.com/@jplenio) on Unsplash.com ([Unsplash
License](https://unsplash.com/license))

<div align="center">

**Wie funktioniert's?**

</div>

## EA -- Zutaten und Mechanismen

- Zutaten:
  - **Individuen**: Kodierung möglicher Lösungen
  - **Population** von Individuen
  - **Fitnessfunktion**: Bewertung der Angepasstheit

<!-- -->

- Mechanismen ("Operatoren"):
  - Selektion
  - Rekombination (Crossover)
  - Mutation

## EA -- Allgemeiner Ablauf

<div style="width:80%;">

![](images/ea_prinz.png)

</div>

## EA -- Beispiel

<div style="width:40%;">

![](images/4-queens-example.png)

</div>

Jedes Individuum kodiert ein Spielfeld mit einer konkreten Anordnung
**aller** Königinnen =\> **Vollständige Zustandsbeschreibung**.

Dabei korrespondiert der Index in das Array des Individuums mit der
jeweiligen Spalte des Spielfelds. Die Zahl an einer Arrayposition gibt
dann an, in welcher Zeile in dieser Spalte eine Königin ist.

Crossover: Die ausgewählten Individuen werden an der selben Stelle
aufgetrennt und die Hälften verkreuzt zu zwei neuen Individuen
zusammengesetzt. Es entstehen zwei neue Anordnungen der Königinnen (zwei
neue Spielfelder).

## EA -- Strömungen

1.  **Genetische Algorithmen** (GA)
    - Holland und Goldberg (ab 1960)
    - Binäre Lösungsrepräsentation (Bitstring):
      $\mathbf{g} = (g_1, \dots, g_m)\in \{ 0,1\}^m$
    - Fitnessbasierte stochastische Selektion
    - $\mu$ Eltern erzeugen $\mu$ Kinder

<!-- -->

2.  **Evolutionsstrategien** (ES)
    - Rechenberg und Schwefel (ab 1960)
    - Kodierung reellwertiger Parameter:
      $\mathbf{g} = (\mathbf{x}, \mathbf{\sigma})$ mit
      $\mathbf{x} = (x_1, \dots, x_n) \in \mathbb{R}^n$
    - $\mu$ Eltern erzeugen $\lambda$ Kinder mit $\mu \le \lambda$

<!-- -->

3.  **Evolutionäre Programmierung** (EP)

*Hinweis*: Häufig finden sich Mischformen, beispielsweise GA mit
reellwertigen Parametern

*Hinweis*: Im Folgenden werden **Genetische Algorithmen** (GA)
betrachtet. Sie finden jeweils Hinweise auf die Gestaltung der
Operatoren bei ES.

## Anwendungsbeispiele für Evolutionäre Algorithmen

- Berechnung und Konstruktion komplexer Bauteile: beispielsweise
  Tragflächenprofile (Flugzeuge), Brücken oder Fahrzeugteile unter
  Berücksichtigung bestimmter Nebenbedingungen
- Scheduling-Probleme: Erstellung von Stunden- und Raumplänen oder
  Fahrplänen
- Berechnung verteilter Netzwerktopologien: Wasserversorgung,
  Stromversorgung, Mobilfunk
- Layout elektronischer Schaltkreise

## Wrap-Up

Lokale Suchverfahren: Nur das Ergebnis zählt!

- Evolutionäre Algorithmen: Unterschied GA und ES (grober Überblick)

## 📖 Zum Nachlesen

- Russell und Norvig ([2020](#ref-Russell2020)): GA: Abschnitt 4.1.4
- Schwefel ([1995](#ref-Schwefel1995)): Originalarbeit zu
  Evolutionsstrategien
- Michalewicz ([1996](#ref-Michalewicz1996))
- Bäck ([1996](#ref-Baeck1996))
- Nissen ([1997](#ref-Nissen1997))

------------------------------------------------------------------------

> [!TIP]
> <details>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Problematik der lokalen Minima bei Gradientenverfahren
> - k2: Überblick über die verschiedenen Strömungen
> - k2: Prinzipieller Ablauf von Genetischen Algorithmen
>
> </details>

------------------------------------------------------------------------

> [!NOTE]
> <details>
> <summary><strong>👀 Quellen</strong></summary>
>
> <div id="refs" class="references csl-bib-body hanging-indent"
> entry-spacing="0">
>
> <div id="ref-Baeck1996" class="csl-entry">
>
> Bäck, T. 1996. *Evolutionary Algorithms in Theory and Praxis*. Oxford
> University Press.
>
> </div>
>
> <div id="ref-Michalewicz1996" class="csl-entry">
>
> Michalewicz, Z. 1996. *Genetic Algorithms + Data Structures =
> Evolution Programs*. Springer.
>
> </div>
>
> <div id="ref-Nissen1997" class="csl-entry">
>
> Nissen, V. 1997. *Einführung in Evolutionäre Algorithmen*.
> Vieweg+Teubner Verlag.
>
> </div>
>
> <div id="ref-Russell2020" class="csl-entry">
>
> Russell, S., und P. Norvig. 2020. *Artificial Intelligence: A Modern
> Approach*. 4th Edition. Pearson. <http://aima.cs.berkeley.edu>.
>
> </div>
>
> <div id="ref-Schwefel1995" class="csl-entry">
>
> Schwefel, H. P. 1995. *Evolution and Optimum Seeking*. Wiley.
>
> </div>
>
> </div>
>
> </details>

------------------------------------------------------------------------

<div style="width:10%;">

![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

</div>

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

**Exceptions:**

- [Photo](https://unsplash.com/photos/aWDgqexSxA0) by [Johannes
  Plenio](https://unsplash.com/@jplenio) on Unsplash.com ([Unsplash
  License](https://unsplash.com/license))

<blockquote><p><sup><sub><strong>Last modified:</strong> 80d2904 (Remove Hugo: remove cbox, 2025-07-17)<br></sub></sup></p></blockquote>
