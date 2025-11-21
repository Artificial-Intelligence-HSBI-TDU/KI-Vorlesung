# EA: Einführung Evolutionäre Algorithmen

> [!IMPORTANT]
>
> <details open>
>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Lokale Suchverfahren: Nur das Ergebnis zählt!
>
> Evolutionäre Algorithmen sind lokale Suchverfahren, wobei gleichzeitig
> an mehreren Stellen im Problemraum gesucht wird. Sie bedienen sich
> Mechanismen aus der Evolution: Es gibt eine Population von Individuen,
> die jedes das Problem kodieren (“vollständige Zustandsbeschreibung”)
> und damit im Laufe der Suche zu einer möglichen Lösung werden können.
> </details>

> [!TIP]
>
> <details open>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Einführung Evolutionäre
>   Algorithmen](https://youtu.be/pKdKcPLI7V4)
>
> </details>

## Evolution sehr erfolgreich bei Anpassung

<img src="https://images.unsplash.com/flagged/photo-1552863473-6e5ffe5e052f" width="60%">

Quelle: [Photo Evolution](https://unsplash.com/photos/aWDgqexSxA0) by
[Johannes Plenio](https://unsplash.com/@jplenio) on Unsplash.com
([Unsplash License](https://unsplash.com/license))

<div align="center">

**Wie funktioniert’s?**

</div>

## EA – Zutaten und Mechanismen

- Zutaten:
  - **Individuen**: Kodierung möglicher Lösungen
  - **Population** von Individuen
  - **Fitnessfunktion**: Bewertung der Angepasstheit

<!-- -->

- Mechanismen (“Operatoren”):
  - Selektion
  - Rekombination (Crossover)
  - Mutation

## EA – Allgemeiner Ablauf

<picture><source media="(prefers-color-scheme: light)" srcset="images/ea_prinz_light.png"><source media="(prefers-color-scheme: dark)" srcset="images/ea_prinz_dark.png"><img src="images/ea_prinz.png" width="60%"></picture>

## EA – Beispiel

<picture><source media="(prefers-color-scheme: light)" srcset="images/4-queens-example_light.png"><source media="(prefers-color-scheme: dark)" srcset="images/4-queens-example_dark.png"><img src="images/4-queens-example.png" width="25%"></picture>

Jedes Individuum kodiert ein Spielfeld mit einer konkreten Anordnung
**aller** Königinnen =\> **Vollständige Zustandsbeschreibung**.

Dabei korrespondiert der Index in das Array des Individuums mit der
jeweiligen Spalte des Spielfelds. Die Zahl an einer Arrayposition gibt
dann an, in welcher Zeile in dieser Spalte eine Königin ist.

Crossover: Die ausgewählten Individuen werden an der selben Stelle
aufgetrennt und die Hälften verkreuzt zu zwei neuen Individuen
zusammengesetzt. Es entstehen zwei neue Anordnungen der Königinnen (zwei
neue Spielfelder).

## EA – Strömungen

1.  **Genetische Algorithmen** (GA)
    - Holland ([1975](#ref-holland1975)) (Holland
      ([1992](#ref-holland1992))) und Goldberg
      ([1986](#ref-goldberg1986))
    - Binäre Lösungsrepräsentation (Bitstring):
      $`\mathbf{g} = (g_1, \dots, g_m)\in \{ 0,1\}^m`$
    - Fitnessbasierte stochastische Selektion
    - $`\mu`$ Eltern erzeugen $`\mu`$ Kinder

<!-- -->

1.  **Evolutionsstrategien** (ES)
    - Rechenberg ([1978](#ref-rechenberg1978)) und Schwefel
      ([1975](#ref-schwefel1975)) (Schwefel ([1995](#ref-Schwefel1995)))
    - Kodierung reellwertiger Parameter:
      $`\mathbf{g} = (\mathbf{x}, \mathbf{\sigma})`$ mit
      $`\mathbf{x} = (x_1, \dots, x_n) \in \mathbb{R}^n`$
    - $`\mu`$ Eltern erzeugen $`\lambda`$ Kinder mit $`\mu \le \lambda`$

<!-- -->

1.  **Evolutionäre Programmierung** (EP)

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

- Russell und Norvig ([2021](#ref-Russell2021)): GA: Abschnitt 4.1.4
- Weicker ([2015](#ref-Weicker2015))

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Ich kann die Problematik der lokalen Minima bei
>   Gradientenverfahren erklären
> - k2: Ich kann einen Überblick über die verschiedenen Strömungen bei
>   EA/GA darstellen
> - k2: Ich kann den prinzipiellen Ablauf von Genetischen Algorithmen an
>   einem Beispiel erklären
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
> <div id="ref-goldberg1986" class="csl-entry">
>
> Goldberg, D. E. 1986. „The genetic algorithm approach: why, how, and
> what next?“ In *Adaptive and learning systems: Theory and
> applications*. Springer.
>
> </div>
>
> <div id="ref-holland1975" class="csl-entry">
>
> Holland, J. H. 1975. „Adaptation in Natural and Artificial Systems: An
> Introductory Analysis with Applications to Biology, Control, and
> Artificial Intelligence“. Phdthesis, PhD Thesis, University of
> Michigan Press, Ann Arbor.
>
> </div>
>
> <div id="ref-holland1992" class="csl-entry">
>
> Holland, J. H. 1992. *Adaptation in Natural and Artificial Systems: An
> Introductory Analysis with Applications to Biology, Control, and
> Artificial Intelligence*. MIT press.
>
> </div>
>
> <div id="ref-rechenberg1978" class="csl-entry">
>
> Rechenberg, I. 1978. „Evolutionsstrategien“. *Simulationsmethoden in
> der Medizin und Biologie: Workshop, Hannover, 29. Sept.–1. Okt. 1977*,
> 83–114.
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
> <div id="ref-schwefel1975" class="csl-entry">
>
> Schwefel, H. P. 1975. „Evolutionsstrategie und numerische
> Optimierung“. Phdthesis, PhD Thesis, Technical University of Berlin,
> Department of Process Engineering.
>
> </div>
>
> <div id="ref-Schwefel1995" class="csl-entry">
>
> Schwefel, H. P. 1995. *Evolution and Optimum Seeking*. Wiley.
>
> </div>
>
> <div id="ref-Weicker2015" class="csl-entry">
>
> Weicker, K. 2015. *Evolutionäre Algorithmen*. 3rd edition. Springer
> Vieweg Wiesbaden. <https://doi.org/10.1007/978-3-658-09958-9>.
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

- [Photo Evolution](https://unsplash.com/photos/aWDgqexSxA0) by
  [Johannes Plenio](https://unsplash.com/@jplenio) on Unsplash.com
  ([Unsplash License](https://unsplash.com/license))

<blockquote><p><sup><sub><strong>Last modified:</strong> 765d342 (lecture: fix image url (EA1), 2025-10-24)<br></sub></sup></p></blockquote>
