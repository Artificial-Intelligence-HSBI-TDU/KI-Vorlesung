# NB: Wiederholung Wahrscheinlichkeitstheorie

> [!IMPORTANT]
>
> <details open>
>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Diese Sitzung ist eine (relativ oberflächliche)
> Einführung/Wiederholung in die/der Grundlagen der
> Wahrscheinlichkeitstheorie.
>
> Wir schauen uns die möglichen Ausgänge eines Zufallsexperiments an
> (“Ereignisse”). Wenn diese Ereignisse sich gegenseitig ausschließen
> und alle denkbaren Ergebnisse abdecken, dann nennt man diese
> Ereignisse auch **Elementarereignisse**. Die Wahrscheinlichkeit für
> ein Ereignis kann man angeben als Anzahl der möglichen Ergebnisse, die
> für dieses Ereignis günstig sind, geteilt durch die Anzahl aller
> Ausgänge. Über die Kolmogorov Axiome bekommt man die typischen
> Rechenregel für die Wahrscheinlichkeit.
>
> Man kann eine **Verbundwahrscheinlichkeit** $`P(A,B) = P(B,A)`$
> angeben, das ist die Wahrscheinlichkeit, dass $`A`$ und $`B`$
> gleichzeitig auftreten.
>
> Die **bedingte** Wahrscheinlichkeit für $`A`$ gegeben $`B`$ ist
> $`P(A \mid B)`$ und berechnet sich $`P(A \mid B) = P(A,B)/P(B)`$.
>
> Daraus kann man die **Bayes-Regel** ableiten:
> $`P(A \mid B) = P(B \mid A)P(A)/P(B)`$.
>
> Dabei nennt man
>
> - $`P(A)`$ **“Prior”** oder **“A-priori-Wahrscheinlichkeit”** (die
>   Wahrscheinlichkeit für $`A`$ ohne weiteres Wissen),
> - $`P(B \mid A)`$ **“Likelihood”** (Wie wahrscheinlich ist das
>   Auftreten von $`B`$, gegeben $`A`$?),
> - $`P(A \mid B)`$ **“Posterior”** oder
>   **“A-posteriori-Wahrscheinlichkeit”** (Wie wahrscheinlich ist $`A`$,
>   wenn $`B`$ eingetreten ist?), und
> - $`P(B)`$ ist ein Normierungsfaktor (Wie wahrscheinlich ist $`B`$ an
>   sich?).
>
> </details>

> [!TIP]
>
> <details open>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Wahrscheinlichkeiten](https://youtu.be/p_Yy5rkl4CA)
>
> </details>

## Ereignisse und Wahrscheinlichkeit

**Hinweis**: Die folgende Darstellung zur Einführung in die
Wahrscheinlichkeitstheorie dient dem Verständnis des Naive Bayes
Klassifikationsalgorithmus und ist teilweise eher oberflächlich
gehalten. Sie kann und soll keine entsprechende mathematische Einführung
ersetzen!

### Ereignisse

- **Ereignisse**
  $`\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace`$:
  endliche Menge der Ausgänge eines Zufallsexperiments

- **Elementarereignis**: Die $`\omega_i \in \Omega`$

  - decken *alle* möglichen Versuchsergebnisse ab, und
  - schließen sich gegenseitig aus

### Regeln

- Wenn $`A`$ und $`B`$ Ereignisse sind, dann auch $`A \cup B`$
- $`\Omega`$ wird als **sicheres Ereignis** bezeichnet: Enthält
  definitionsgemäß **alle** Versuchsausgänge, d.h. *ein* in der Menge
  enthaltenes Ereignis *muss* auftreten
- Die leere Menge $`\emptyset`$ wird als **unmögliches Ereignis**
  bezeichnet
- Die Variablen $`A`$ und $`B`$ heißen auch **Zufallsvariablen**

Im Rahmen dieser Veranstaltung betrachten wir nur diskrete
Zufallsvariablen mit endlichem Wertebereich!

### Wahrscheinlichkeit

- **Wahrscheinlichkeit**:

  Sei $`\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace`$
  endlich. Die Wahrscheinlichkeit $`P(A)`$ für ein Ereignis $`A`$ ist
  dann definiert als

  Man könnte auch schreiben: $`P(A) = \sum_{\omega \in A} P(\omega)`$

  *Hinweis*: Diese Definition von Wahrscheinlichkeit geht von gleich
  wahrscheinlichen Elementarereignissen aus! Die allgemeine Definition
  geht über einen entsprechenden Grenzwert.

``` math
P(A) = \frac{\lvert A \rvert}{\lvert \Omega \rvert} =
\frac{\text{Anzahl der für A günstigen Fälle}}{\text{Anzahl der möglichen Fälle}}
```

### Verteilung

Den Vektor mit den Wahrscheinlichkeiten aller Elementarereignisse nennt
man auch *Verteilung*.

Beispiel:
$`\mathbf{P}(A) = (P(A=1), P(A=2), \ldots, P(A=6)) = (1/6, 1/6, \ldots, 1/6)`$

*Hinweis*: Wir betrachten hier nur diskrete Zufallsvariablen. Für
kontinuierliche Variablen wird die Verteilung mit Hilfe einer
**Dichtefunktion** dargestellt, beispielsweise der Gauss’schen Funktion.

### Beispiel

- Einmaliges Würfeln mit einem Spielwürfel:
  $`\Omega = \lbrace 1,2,3,4,5,6 \rbrace`$

- Elementarereignisse: $`\lbrace 1,2,3,4,5,6 \rbrace`$

- Das Würfeln einer geraden Zahl ($`A = \lbrace 2,4,6 \rbrace`$) ist
  *kein* Elementarereignis, ebenso wie das Würfeln einer Zahl kleiner 5
  ($`B = \lbrace 1,2,3,4 \rbrace`$), da
  $`A \cap B = \lbrace 2,4 \rbrace \ne \emptyset`$

- Wahrscheinlichkeit, eine 1 zu würfeln:
  $`P(A \in \lbrace 1 \rbrace) = P(A=1) = \frac{1}{6}`$.

  *Anmerkung*: Man schreibt statt $`P(A \in \lbrace 1 \rbrace)`$ oft
  einfach $`P(1)`$.

- Wahrscheinlichkeit, eine gerade Zahl zu würfeln:
  $`P(A \in \lbrace 2,4,6 \rbrace) = P(A=2 \vee A=4 \vee A=6) = \frac{\lvert \lbrace 2,4,6 \rbrace \rvert}{\lvert \lbrace 1,2,3,4,5,6 \rbrace \rvert} = \frac{3}{6} = 0.5`$

## Rechenregeln: Kolmogorov Axiome

Sei $`A`$ ein Ereignis, also $`A \subseteq \Omega`$:

- $`0 \le P(A) \le 1`$

- $`\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace`$:
  $`\sum_{i} P(\omega_i) = 1`$ (Normierungsbedingung: Summe über die
  Wahrscheinlichkeiten aller Elementarereignisse ist immer 1)

- $`P(A \cup B) = P(A) + P(B) - P(A \cap B)`$

Daraus folgt (u.a.):

- $`P(\Omega) = 1`$
- $`P(\emptyset) = 0`$
- $`P(A) = 1- P(\neg A)`$

<!-- -->

- $`A`$ und $`B`$ *unabhängig*: $`P(A \cup B) = P(A) + P(B)`$
- $`P(A \cap B)`$ ist leer, wenn $`A`$ und $`B`$ sich nicht überlappen
- $`A \subseteq B`$: $`P(A) \le P(B)`$

## Verbundwahrscheinlichkeiten

``` math
P(A,B) = P(B,A) = \text{ Wahrscheinlichkeit, dass A und B gleichzeitig auftreten }
```

|                    | Halsschmerzen | $`\neg`$ Halsschmerzen |
|--------------------|---------------|------------------------|
| Schnupfen          | 0.04          | 0.06                   |
| $`\neg`$ Schnupfen | 0.01          | 0.89                   |

- $`P(S,H) = 0.04`$

Die Tabelle kann man so lesen: In 4 von 100 Fällen tritt das Ereignis
“Schnupfen” gleichzeitig mit dem Ereignis “Halsschmerzen” auf, in 6 von
100 Fällen tritt “Schupfen” ohne Halsschmerzen auf. … In Summe kommt man
wieder auf 100 Fälle (100 Prozent).

Nach diesen Zahlen liegt also die Verbundwahrscheinlichkeit für die
Ereignisse “Schnupfen” und “Husten”, d.h. $`P(S,H)`$, bei 4 Prozent.

**Hinweis**: Die gezeigten Zahlen und Zusammenhänge sind **fiktiv** und
dienen lediglich zur Verdeutlichung der Wahrscheinlichkeitsbegriffe!

## Bedingte Wahrscheinlichkeit

**Definition**: Bedingte Wahrscheinlichkeit für $`A`$ gegeben $`B`$:

``` math
P(A \mid B) = \frac{P(A,B)}{P(B)}
```

|                    | Halsschmerzen | $`\neg`$ Halsschmerzen |
|--------------------|---------------|------------------------|
| Schnupfen          | 0.04          | 0.06                   |
| $`\neg`$ Schnupfen | 0.01          | 0.89                   |

- $`P(\text{Schnupfen }  \mid  \text{ Halsschmerzen}) = \frac{P(S,H)}{P(H)} = \frac{0.04}{0.04+0.01} = 0.8`$
- $`P(\text{Halsschmerzen }  \mid  \text{ Schnupfen}) = \frac{P(H,S)}{P(S)} = \frac{0.04}{0.04+0.06} = 0.4`$

Wegen $`P(A \mid B) = \dfrac{P(A,B)}{P(B)}`$ ist
$`P(A,B) = P(A \mid B)P(B) = P(B \mid A)P(A)`$ (**Produkt-Regel**)!

## Marginalisierung

|                    | Halsschmerzen | $`\neg`$ Halsschmerzen | $`\sum`$ |
|--------------------|---------------|------------------------|----------|
| Schnupfen          | 0.04          | 0.06                   | *0.1*    |
| $`\neg`$ Schnupfen | 0.01          | 0.89                   | *0.9*    |
| $`\sum`$           | *0.05*        | *0.95*                 | *1*      |

$`P(S) = P(S,H) + P(S, \neg H)`$

Allgemein: Seien $`B_1, \ldots, B_n`$ Elementarereignisse mit
$`\bigcup_i B_i = \Omega`$. Dann ist
``` math
P(A) = \sum_i P(A,B_i) = \sum_i P(A \mid B_i)P(B_i)
```

Diesen Vorgang nennt man **Marginalisierung**. Die resultierende
Verteilung $`P(A)`$ nennt man auch *“Randverteilung”*, da sie mit einer
Projektion eines Quaders auf eine Seitenfläche vergleichbar ist.

## Kettenregel

- **Produktregel**: Wegen $`P(A \mid B) = \dfrac{P(A,B)}{P(B)}`$ gilt
  $`P(A,B) = P(A \mid B)P(B)`$

<!-- -->

- Verallgemeinerung (**Kettenregel**):

``` math
\begin{eqnarray}
P(A_1,A_2,\ldots,A_n) &=& P(A_n,\ldots,A_2,A_1)\\
    & = & P(A_n \mid A_{n-1},\ldots,A_1)P(A_{n-1},\ldots,A_1)\\
    & = & P(A_n \mid A_{n-1},\ldots,A_1)P(A_{n-1} \mid A_{n-2},\ldots,A_1)P(A_{n-2},\ldots,A_1)\\
    & = & \ldots\\
    & = & P(A_n \mid A_{n-1},\ldots,A_1) \ldots P(A_2 \mid A_1)P(A_1)\\
    & = & \prod_i P(A_i \mid A_1,\ldots,A_{i-1})
\end{eqnarray}
```

## Bayes-Regel

Bedingte Wahrscheinlichkeit:
$`P(A,B) = P(A \mid B)P(B) = P(B \mid A)P(A)`$

``` math
P(A \mid B) = \frac{P(B \mid A)P(A)}{P(B)}
```

- $`P(A)`$ nennt man **“Prior”** oder **“A-priori-Wahrscheinlichkeit”**
  (Das ist die Wahrscheinlichkeit für $`A`$ ohne weiteres Wissen)
- $`P(B \mid A)`$ nennt man **“Likelihood”** (Wie wahrscheinlich ist das
  Auftreten von $`B`$, gegeben $`A`$?)
- $`P(A \mid B)`$ nennt man **“Posterior”** oder
  **“A-posteriori-Wahrscheinlichkeit”** (Wie wahrscheinlich ist $`A`$,
  wenn $`B`$ eingetreten ist?)
- $`P(B)`$ ist ein Normierungsfaktor

Wenn man (siehe später: Naive Bayes Klassifikator) $`A`$ als Klasse und
$`B`$ als Daten betrachtet:

- $`P(A)`$: Wie wahrscheinlich ist eine bestimmte Klasse an sich
  (A-priori-Wahrscheinlichkeit der Klassen)?
- $`P(B \mid A)`$: Wie wahrscheinlich sind bestimmte Daten, gegeben die
  Klasse $`A`$? (Likelihood der Daten)
- $`P(A \mid B)`$: Gegeben die Daten $`B`$, wie wahrscheinlich ist die
  Klasse $`A`$? (Posterior)

In der Medizin hat sucht man i.d.R. die Ursache für beobachtete
Symptome:
``` math
P(\text{Ursache} \mid \text{Symptome}) = \frac{P(\text{Symptome} \mid \text{Ursache})P(\text{Ursache})}{P(\text{Symptome})}
```

Aus der A-priori-Wahrscheinlichkeit für bestimmte Krankheiten und der
Likelihood der Symptome (wie wahrscheinlich sind Symptome, gegeben eine
Krankheit) kann man die Wahrscheinlichkeit für das Vorliegen einer
Erkrankung gegeben bestimmte Symptome berechnen.

## Beispiel Bayes

- Bei Arthrose wird in 80 Prozent der Fälle ein steifes Gelenk
  beobachtet
- Eine von 10.000 Personen hat Arthrose
- Eine von 10 Personen hat ein steifes Gelenk

=\> Ich habe ein steifes Gelenk. Habe ich Arthrose?

- Gegeben: $`P(A) = 0.0001,   P(S) = 0.1,   P(S \mid A) = 0.8`$
- Gesucht: $`P(A \mid S)`$

``` math
P(A \mid S) = \frac{P(S \mid A)P(A)}{P(S)} = \frac{0.8 \times 0.0001}{0.1} = 0.0008 = 0.08\%
```

Wenn ein steifes Gelenk vorliegt, ist die Wahrscheinlichkeit, dann an
Arthrose erkrankt zu sein, bei nur 0.08%. Kein Grund zur Sorge in diesem
Fall :-)

=\> Wie wahrscheinlich ist ein steifes Gelenk ohne Arthrose, also
$`P(S \mid \neg A`$)?

Mit Marginalisierung:
$`P(S) = P(S \mid A)P(A) + P(S \mid \neg A)P(\neg A)`$, d.h.
$`0.1 = 0.8 \times 0.0001 + P(S \mid \neg A) \times (1-0.0001)`$, d.h.
$`P(S \mid \neg A) = 0.0999`$

In knapp 10 Prozent der Fälle würde man im obigen Beispiel bei der
Diagnose “keine Arthrose” ein steifes Gelenk beobachten.

**Hinweis**: Die genannten Zahlen und Zusammenhänge sind rein fiktional
und sollen lediglich zur Veranschaulichung der Bayes-Regel dienen!

Schauen Sie sich auch das Beispiel 7.9 in ([Ertel 2025](#ref-Ertel2025),
Ex. 7.9, S. 135) an!

## Unabhängige Ereignisse

- $`P(\text{Halsschmerzen},\text{ Regen}) = P(\text{Regen } \mid \text{ Halsschmerzen})P(\text{Halsschmerzen})`$
- $`P(\text{Regen } \mid \text{ Halsschmerzen}) = \text{ ?? }`$
  $`= P(\text{Regen})`$

<!-- -->

- Zwei Ereignisse $`A`$ und $`B`$ sind **unabhängig**, wenn

  =\> $`P(A,B) = P(A \mid B)P(B) = P(A)P(B)`$

``` math
P(A \mid B) = P(A)
```

Dies kann man verallgemeinern (**bedingte Unabhängigkeit**):

> $`X`$ und $`Y`$ sind *bedingt unabhängig* (gegeben $`Z`$), wenn
> $`P(X \mid Y,Z) = P(X \mid Z)`$ bzw. $`P(Y \mid X,Z) = P(Y \mid Z)`$

Daraus folgt:

``` math
P(X,Y \mid Z) = P(X \mid Y,Z)P(Y \mid Z) = P(X \mid Z)P(Y \mid Z)
```

## Wrap-Up

- Grundlagen der Wahrscheinlichkeitstheorie
  - Elementarereignisse und Wahrscheinlichkeit
  - Rechenregeln
  - Bedingte Wahrscheinlichkeit und Verbundwahrscheinlichkeit
  - Marginalisierung
  - (Bedingte) Unabhängigkeit
  - Bayes’sche Regel

## 📖 Zum Nachlesen

Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte die
Abschnitte 12.2 bis (einschließlich) 12.5. Darüber hinaus ist Abschnitt
“7.1 Rechnen mit Wahrscheinlichkeiten” ([Ertel 2025](#ref-Ertel2025))
sehr empfehlenswert.

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Ich kann die Begriffe Elementarereignisse und Wahrscheinlichkeit
>   erklären
> - k2: Ich kann bedingte Wahrscheinlichkeit und
>   Verbundwahrscheinlichkeit erklären
> - k2: Ich kann (bedingte) Unabhängigkeit erklären
> - k3: Ich kann die Rechenregeln für Wahrscheinlichkeit anwenden
> - k3: Ich kann Marginalisierung an einem Beispiel anwenden
> - k3: Ich verstehe die Bayes’sche Regel und kann sie an einem Beispiel
>   demonstrieren
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Wahrscheinlichkeiten
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106587&client_id=FH-Bielefeld)
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

<blockquote><p><sup><sub><strong>Last modified:</strong> e5c1685 (lecture: reformat NB, 2026-01-12)<br></sub></sup></p></blockquote>
