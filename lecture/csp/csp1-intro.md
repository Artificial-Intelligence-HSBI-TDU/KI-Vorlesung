# Einführung Constraints

> [!IMPORTANT]
>
> <details open>
>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Ein Constraintproblem (CSP) besteht aus Variablen, die über
> Einschränkungen (“Constraints”) verbunden sind. Jeder Variable wird
> eine Domäne (Wertebereich) zugeordnet.
>
> Die Constraints können sich auf eine einzelne Variable beziehen
> (“unäre Constraints”), auf zwei Variablen (“binäre Constraints”) oder
> auf mehr Variablen. Ein CSP kann als Graph dargestellt werden.
>
> Eine “Belegung” ist eine Zuweisung von Werten an Variablen aus deren
> Domäne. Eine “konsistente” Belegung erfüllt die Constraints, eine
> “vollständige” Belegung belegt alle Variablen.
>
> Eine Lösung für ein CSP ist eine vollständige und konsistente
> Belegung.
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Intro CSP](https://youtu.be/eFyo4Xh59ns)
>
> </details>

## Motivation: Einfärben von Landkarten

<img src="images/map.png" width="50%">

Die Skizze soll eine Landkarte mit verschiedenen Ländern darstellen. Die
Aufgabe lautet: Färbe jedes Land mit einer Farbe ein, um die
Übersichtlichkeit zu erhöhen. Verwende dabei so wenig wie möglich
unterschiedliche Farben. Aneinander grenzende Länder müssen
unterschiedliche Farben bekommen (=\> *Constraint*).

## Einfärben von Landkarten: Formalisierung

- **Variablen**: A, B, C, D, E, F
- **Werte**: $`\lbrace red, green, blue \rbrace`$
- **Constraints**: Benachbarte Regionen müssen unterschiedliche Farben
  haben

<!-- -->

- **Mögliche Lösung**: Zuweisung an Variablen (“Belegung”)
  $`\lbrace \mathop{\text{A}} = red, \mathop{\text{B}} = blue, \mathop{\text{C}} = green,
  \mathop{\text{D}} = red, \mathop{\text{E}} = blue, \mathop{\text{F}} = blue \rbrace`$

## Definition: Constraint Satisfaction Problem (CSP)

- Ein CSP $`\langle V, D, C \rangle`$ besteht aus:
  - Menge von **Variablen**
    $`V = \lbrace V_1, V_2, \ldots, V_n \rbrace`$
  - Je $`V_i`$ nicht leere **Domäne**
    $`D_i = \lbrace d_{i,1}, d_{i,2}, \ldots, d_{i,m_i} \rbrace`$
  - Menge von **Constraints**
    $`C = \lbrace C_1, C_2, \ldots, C_p \rbrace`$ (Randbedingungen,
    Abhängigkeiten zwischen Variablen)

<!-- -->

- Zuweisung/Belegung (*Assignment*) $`\alpha`$:
  - Zuweisung von Werten an (einige/alle) Variablen:
    $`\alpha = \lbrace X=a, Y=b, \ldots \rbrace`$ (aus den jeweiligen
    Wertebereichen)
  - **Konsistente Belegung**: Randbedingungen sind nicht verletzt
  - **Vollständige Belegung**: Alle Variablen sind belegt

<!-- -->

- **Lösung** eines CSP: Vollständige und konsistente Belegung

## Constraint-Graph

<img src="images/map_graph.png" width="80%">

Ein CSP kann man auch als Constraint-Graph darstellen. Die Variablen
werden zu Knoten im Graph, die Constraints zu Kanten zwischen den
Knoten. Dadurch kann man die aus dem Problemlösen bekannten Algorithmen
anwenden …

## Constraints – Arität

Die *Arität* betrifft hier die “Stelligkeit”: Wie viele Variablen stehen
in einem Constraint miteinander in Beziehung? (Also wie viele Parameter
hat ein Constraint?)

- **unär**: betrifft einzelne Variablen Beispiel:
  $`\mathop{\text{A}} \neq red`$

<!-- -->

- **binär**: betrifft Paare von Variablen Beispiel:
  $`\mathop{\text{A}} \neq \mathop{\text{B}}`$

<!-- -->

- **höhere Ordnung**: betrifft 3 oder mehr Variablen

<!-- -->

- **Präferenzen**: “soft constraints” Beispiel: “rot ist besser als
  grün”

  Abbildung über Gewichtung =\> Constraint-Optimierungsproblem (COP)

## Constraints – Wertebereiche

- **Endliche Domänen**: $`d`$ Werte =\> $`O(d^n)`$ mögliche Zuweisungen
  (exponentiell in der Zahl der Variablen)

<!-- -->

- **Unendliche Domänen**: reelle Zahlen, natürliche Zahlen =\> Keine
  Auflistung der erlaubten Wertekombinationen mehr möglich =\> Übergang
  zu Gleichungen/Ungleichungen: $`job_1+5<job_2`$
  - lineare Constraints
  - nichtlineare Constraints

**Historische Unterscheidung**:

- **Constraint Satisfaction**: endliche Domänen, kombinatorische
  Methoden
- **Constraint Solving**: unendliche Domänen

## CSP sind überall …

- Stundenpläne (Klassen, Räume, Zeiten)
- Konfiguration (Computer, Autos, …)
- Fahrpläne (Zug, Flug, …)
- Planung von komplexen Projekten
- Sudoku :-)
- …

## Wrap-Up

- Definitionen und Begriffe:
  - Variable, (un-) endliche Domänen, Wertemenge
  - Constraint, Arität, CSP
  - Zuweisung, Lösung, …

## 📖 Zum Nachlesen

- Russell und Norvig ([2020](#ref-Russell2020)): CSP: Abschnitt 5.1
- Kumar ([1992](#ref-Kumar1992))
- Barták ([2001](#ref-Bartak2001))

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Ich kann die Definitionen im Zusammenhang mit Constraints und
>   CSP erklären: Variable, Domäne, Constraint, Arität, CSP, Zuweisung
> - k3: Ich kann Probleme als CSP formulieren
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Intro CSP
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106572&client_id=FH-Bielefeld)
>
> </details>

------------------------------------------------------------------------

> [!NOTE]
>
> <details>
>
> <summary><strong>👀 Quellen</strong></summary>
>
> <div id="refs" class="references csl-bib-body hanging-indent"
> entry-spacing="0">
>
> <div id="ref-Bartak2001" class="csl-entry">
>
> Barták, R. 2001. „Theory and Practice of Constraint Propagation“. In
> *Proceedings of the 3rd Workshop on Constraint Programming for
> Decision and Control*. Bd. 50.
>
> </div>
>
> <div id="ref-Kumar1992" class="csl-entry">
>
> Kumar, V. 1992. „Algorithms for Constraint Satisfaction Problems: A
> Survey“. *AI Magazine* 13 (1): 32–44.
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
> </div>
>
> </details>

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 358dec7 (lecture: rework outcomes (CSP1), 2025-08-16)<br></sub></sup></p></blockquote>
