---
type: lecture-cg
title: "Wiederholung Wahrscheinlichkeitstheorie"
menuTitle: "Wahrscheinlichkeiten"
author: "Carsten Gips (FH Bielefeld)"
weight: 1
readings:
  - key: "Russell2020"
    comment: "Kapitel 12"
  - key: "Ertel2017"
    comment: "Abschnitt 7.1"
quizzes:
  - link: TODO
    name: "Selbsttest Wahrscheinlichkeiten (Kahoot)"
youtube:
  - id: TODO
fhmedia:
  - link: TODO
    name: "Direktlink FH-Medienportal: KI Wahrscheinlichkeiten"
---


## Ereignisse und Wahrscheinlichkeit

::: notes
**Hinweis**: Die folgende Darstellung zur Einführung in die
Wahrscheinlichkeitstheorie dient dem Verständnis des Naive Bayes
Klassifikationsalgorithmus und ist teilweise eher oberflächlich gehalten.
Sie kann und soll keine entsprechende mathematische Einführung ersetzen!
:::

::: notes
### Ereignisse
:::

*   **Ereignisse** $\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace$:
    [endliche Menge der]{.notes}  Ausgänge eines Zufallsexperiments

*   **Elementarereignis**: Die $\omega_i \in \Omega$
    *   decken *alle* möglichen Versuchsergebnisse ab, und
    *   schließen sich gegenseitig aus

::: notes
### Regeln

*   Wenn $A$ und $B$ Ereignisse sind, dann auch $A \cup B$
*   $\Omega$ wird als **sicheres Ereignis** bezeichnet: Enthält
    definitionsgemäß **alle** Versuchsausgänge, d.h. *ein* in der Menge
    enthaltenes Ereignis *muss* auftreten
*   Die leere Menge $\emptyset$ wird als **unmögliches Ereignis** bezeichnet.
*   Die Variablen $A$ und $B$ heißen auch **Zufallsvariablen**.

Im Rahmen dieser Veranstaltung betrachten wir nur diskrete Zufallsvariablen mit
endlichem Wertebereich!
:::

\bigskip

::: notes
### Wahrscheinlichkeit
:::

*   **Wahrscheinlichkeit**:

    ::: notes
    Sei $\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace$ endlich.
    Die Wahrscheinlichkeit $P(A)$ für ein Ereignis $A$ ist dann
    definiert als
    :::

    $$
    P(A) = \frac{|A|}{|\Omega|} =
    \frac{\text{Anzahl der für A günstigen Fälle}}{\text{Anzahl der möglichen Fälle}}
    $$

    ::: notes
    Man könnte auch schreiben: $P(A) = \sum_{\omega \in A} P(\omega)$

    *Hinweis*: Diese Definition von Wahrscheinlichkeit geht von gleich
    wahrscheinlichen Elementarereignissen aus! Die allgemeine Definition
    geht über einen entsprechenden Grenzwert.
    :::

::: notes
### Verteilung

Den Vektor mit den Wahrscheinlichkeiten aller Elementarereignisse
nennt man auch *Verteilung*.

Beispiel: $\mathbf{P}(A) = (P(A=1), P(A=2), \ldots, P(A=6)) = (1/6, 1/6, \ldots, 1/6)$

*Hinweis*: Wir betrachten hier nur diskrete Zufallsvariablen. Für
kontinuierliche Variablen wird die Verteilung mit Hilfe einer
**Dichtefunktion** dargestellt, beispielsweise der Gauss'schen Funktion.
:::

::: notes
### Beispiel

*   Einmaliges Würfeln mit einem Spielwürfel: $\Omega = \lbrace 1,2,3,4,5,6 \rbrace$
*   Elementarereignisse: $\lbrace 1,2,3,4,5,6 \rbrace$
*   Das Würfeln einer geraden Zahl ($A = \lbrace 2,4,6 \rbrace$) ist *kein*
    Elementarereignis, ebenso wie das Würfeln einer Zahl kleiner 5
    ($B = \lbrace 1,2,3,4 \rbrace$), da $A \cap B = \lbrace 2,4 \rbrace \ne \emptyset$
*   Wahrscheinlichkeit, eine 1 zu würfeln: $P(A \in \lbrace 1 \rbrace) = P(A=1) = \frac{1}{6}$.
    *Anmerkung*: Man schreibt statt $P(A \in \lbrace 1 \rbrace)$ oft einfach $P(1)$.
*   Wahrscheinlichkeit, eine gerade Zahl zu würfeln:
    $P(A \in \lbrace 2,4,6 \rbrace) = P(A=2 \vee A=4 \vee A=6) = \frac{|\lbrace 2,4,6 \rbrace|}{|\lbrace 1,2,3,4,5,6 \rbrace|} = \frac{3}{6} = 0.5$
:::

[[Tafel: Würfeln]{.bsp}]{.slides}


## Rechenregeln: Kolmogorov Axiome

\bigskip

::: notes
Sei $A$ ein Ereignis, also $A \subseteq \Omega$:
:::

*   $0 \le P(A) \le 1$

*   $\Omega = \lbrace \omega_1, \omega_2, \ldots, \omega_n \rbrace$: $\sum_{i} P(\omega_i) = 1$
    [(Normierungsbedingung: Summe über die Wahrscheinlichkeiten aller Elementarereignisse ist immer 1)]{.notes}

*   $P(A \cup B) = P(A) + P(B) - P(A \cap B)$

\bigskip
\bigskip

Daraus folgt (u.a.):

*   $P(\Omega) = 1$
*   $P(\emptyset) = 0$
*   $P(A) = 1- P(\neg A)$

\smallskip

::: notes
*   $A$ und $B$ *unabhängig*:  $P(A \cup B) = P(A) + P(B)$
*   $P(A \cap B)$ ist leer, wenn $A$ und $B$ sich nicht überlappen
*   $A \subseteq B$: $P(A) \le P(B)$
:::

[Tafel: Würfeln: Elementar, gerade Zahl]{.bsp}


## Verbundwahrscheinlichkeiten

$$P(A,B) = P(B,A) = \text{ Wahrscheinlichkeit, dass A und B gleichzeitig auftreten }$$

\bigskip

|                   | Halsschmerzen | $\neg$  Halsschmerzen |
|-------------------|---------------|-----------------------|
| Schnupfen         | 0.04          | 0.06                  |
| $\neg$  Schnupfen | 0.01          | 0.89                  |

*   $P(S,H) = 0.04$

::: notes
Die Tabelle kann man so lesen: In 4 von 100 Fällen tritt das Ereignis "Schnupfen"
gleichzeitig mit dem Ereignis "Halsschmerzen" auf, in 6 von 100 Fällen tritt
"Schupfen" ohne Halsschmerzen auf. ... In Summe kommt man wieder auf 100 Fälle
(100 Prozent).

Nach diesen Zahlen liegt also die Verbundwahrscheinlichkeit für die Ereignisse
"Schnupfen" und "Husten", d.h. $P(S,H)$, bei 4 Prozent.

**Hinweis**: Die gezeigten Zahlen und Zusammenhänge sind **fiktiv**
und dienen lediglich zur Verdeutlichung der Wahrscheinlichkeitsbegriffe!
:::


## Bedingte Wahrscheinlichkeit

::: notes
**Definition**:
Bedingte Wahrscheinlichkeit für $A$ gegeben $B$:
:::

$$P(A|B) = \frac{P(A,B)}{P(B)}$$

\bigskip

|                   | Halsschmerzen | $\neg$  Halsschmerzen |
|-------------------|---------------|-----------------------|
| Schnupfen         | 0.04          | 0.06                  |
| $\neg$  Schnupfen | 0.01          | 0.89                  |

*   $P(\text{ Schnupfen } | \text{ Halsschmerzen}) = \frac{P(S,H)}{P(H)} = \frac{0.04}{0.04+0.01} = 0.8$
*   $P(\text{ Halsschmerzen } | \text{ Schnupfen}) = \frac{P(H,S)}{P(S)} = \frac{0.04}{0.04+0.06} = 0.4$

::: notes
Wegen $P(A|B) = \dfrac{P(A,B)}{P(B)}$ ist $P(A,B) = P(A|B)P(B) = P(B|A)P(A)$
(**Produkt-Regel**)!
:::


## Marginalisierung

|                   | Halsschmerzen | $\neg$  Halsschmerzen | $\sum$ |
|-------------------|---------------|-----------------------|--------|
| Schnupfen         | 0.04          | 0.06                  | *0.1*  |
| $\neg$  Schnupfen | 0.01          | 0.89                  | *0.9*  |
| $\sum$            | *0.05*        | *0.95*                | *1*    |

$P(S) = P(S,H) + P(S, \neg H)$

\bigskip
\bigskip
\pause

[Allgemein:]{.notes}
Seien $B_1, \ldots, B_n$ Elementarereignisse mit $\bigcup_i B_i = \Omega$.
Dann ist $$P(A) = \sum_i P(A,B_i) = \sum_i P(A|B_i)P(B_i)$$

::: notes
Diesen Vorgang nennt man **Marginalisierung**. Die resultierende Verteilung
$P(A)$ nennt man auch *"Randverteilung"*, da sie mit einer Projektion eines
Quaders auf eine Seitenfläche vergleichbar ist.
:::


## Kettenregel

*   **Produktregel**: Wegen $P(A|B) = \dfrac{P(A,B)}{P(B)}$
    gilt $P(A,B) = P(A|B)P(B)$

\bigskip

*   Verallgemeinerung (**Kettenregel**):
    $$
    \begin{array}{rcl}
    P(A_1,A_2,\ldots,A_n) &=& P(A_n,\ldots,A_2,A_1)\\
        & = & P(A_n|A_{n-1},\ldots,A_1)P(A_{n-1},\ldots,A_1)\\
        & = & P(A_n|A_{n-1},\ldots,A_1)P(A_{n-1}|A_{n-2},\ldots,A_1)P(A_{n-2},\ldots,A_1)\\
        & = & \ldots\\
        & = & P(A_n|A_{n-1},\ldots,A_1) \ldots P(A_2|A_1)P(A_1)\\
        & = & \prod_i P(A_i|A_1,\ldots,A_{i-1})
    \end{array}
    $$


## Bayes-Regel

Bedingte Wahrscheinlichkeit: $P(A,B) = P(A|B)P(B) = P(B|A)P(A)$

\bigskip

$$
P(A|B) = \frac{P(B|A)P(A)}{P(B)}
$$

\bigskip
\bigskip

*   $P(A)$ nennt man **"Prior"** oder **"A-priori-Wahrscheinlichkeit"**
    [(Das ist die Wahrscheinlichkeit für $A$ ohne weiteres Wissen)]{.notes}
*   $P(B|A)$ nennt man **"Likelihood"**
    [(Wie wahrscheinlich ist das Auftreten von $B$, gegeben $A$?)]{.notes}
*   $P(A|B)$ nennt man **"Posterior"** oder **"A-posteriori-Wahrscheinlichkeit"**
    [(Wie wahrscheinlich ist $A$, wenn $B$ eingetreten ist?)]{.notes}
*   $P(B)$ ist ein Normierungsfaktor

::: notes
Wenn man (siehe später: Naive Bayes Klassifikator) $A$ als Klasse und $B$ als
Daten betrachtet:

*   $P(A)$: Wie wahrscheinlich ist eine bestimmte Klasse an sich
    (A-priori-Wahrscheinlichkeit der Klassen)?
*   $P(B|A)$: Wie wahrscheinlich sind bestimmte Daten, gegeben die Klasse $A$?
    (Likelihood der Daten)
*   $P(A|B)$: Gegeben die Daten $B$, wie wahrscheinlich ist die Klasse $A$?
    (Posterior)

In der Medizin hat sucht man i.d.R. die Ursache für beobachtete Symptome:
$$
P(\text{Ursache}|\text{Symptome}) = \frac{P(\text{Symptome}|\text{Ursache})P(\text{Ursache})}{P(\text{Symptome})}
$$

Aus der A-priori-Wahrscheinlichkeit für bestimmte Krankheiten und der
Likelihood der Symptome (wie wahrscheinlich sind Symptome, gegeben eine
Krankheit) kann man die Wahrscheinlichkeit für das Vorliegen einer Erkrankung
gegeben bestimmte Symptome berechnen.
:::


## Beispiel Bayes I

*   Bei Arthrose wird oft ein steifes Gelenk beobachtet: $P(S|A) = 0.8$
*   Eine von 10.000 Personen hat Arthrose: $P(A) = 0.0001$
*   Eine von 10 Personen hat ein steifes Gelenk: $P(S) = 0.1$

\bigskip

=> Ich habe ein steifes Gelenk. Habe ich Arthrose?

\pause
\bigskip

$$
P(A|S) = \frac{P(S|A)P(A)}{P(S)} = \frac{0.8 \times 0.0001}{0.1} = 0.0008 = 0.08\%
$$

::: notes
Bei einem steifen Gelenk liegt die Wahrscheinlichkeit, an Arthrose erkrankt zu
sein, bei nur 0.08\%. Kein Grund zur Sorge in diesem Fall :-)


**Hinweis**: Die genannten Zahlen und Zusammenhänge sind rein fiktional und sollen
lediglich zur Veranschaulichung der Bayes-Regel dienen!
:::


## Beispiel Bayes II

*   Alarmanlage meldet jeden Einbruch mit einer Sicherheit von 99\%
*   Wahrscheinlichkeit für Einbruch: 0.1\%
*   Wird auch von Tieren o.ä. ausgelöst, Alarm-Wahrscheinlichkeit 10\%

=> Wie wahrscheinlich ist ein Einbruch, wenn der Alarm ertönt?

[Quelle: Beispiel nach [@Ertel2017, Ex. 7.9, S. 135]]{.origin}

\pause

*   Gegeben: $P(A) = 0.1, \; P(E) = 0.001, \; P(A|E) = 0.99$
*   Gesucht: $P(E|A)$

\pause

$$
P(E|A) = \frac{P(A|E)P(E)}{P(A)} = \frac{0.99 \times 0.001}{0.1} = 0.0099 = 0.99\%
$$

::: notes
Bei Ertönen des Alarms liegt die Wahrscheinlichkeit für einen Einbruch bei nur
knapp 1 Prozent. Diese Alarmanlage ist vielleicht nicht sehr hilfreich ...
:::

\pause

=> Wie wahrscheinlich ist ein Alarm ohne Einbruch, also $P(A|\neg E$)?

\pause

Mit Marginalisierung: $P(A) = P(A|E)P(E) + P(A|\neg E)P(\neg E)$, \newline
d.h. $0.1 = 0.99 \times 0.001 + P(A|\neg E) \times (1-0.001) = 0.00099 + P(A|\neg E) \times 0.999$, \newline
d.h. $P(A|\neg E) = 0,0991$

::: notes
In knapp 10 Prozent der Fälle wird der Alarm ohne Einbruch ausgelöst ...
:::


## Unabhängige Ereignisse

*   $P(\text{ Halsschmerzen},\text{Regen}) = P(\text{Regen}|\text{ Halsschmerzen})P(\text{ Halsschmerzen})$
*   $P(\text{Regen}|\text{ Halsschmerzen}) = \text{ ? }$ \pause $= P(\text{Regen})$

\pause
\bigskip

*   Zwei Ereignisse $A$ und $B$ sind **unabhängig**, wenn
    $$ P(A|B) = P(A) $$

    \smallskip

    => $P(A,B) = P(A|B)P(B) = P(A)P(B)$

::: notes
Dies kann man verallgemeinern (**bedingte Unabhängigkeit**):

> $X$ und $Y$ sind *bedingt unabhängig* (gegeben $Z$),
> wenn $P(X|Y,Z) = P(X|Z)$ bzw. $P(Y|X,Z) = P(Y|Z)$

Daraus folgt:

$$ P(X,Y|Z) = P(X|Y,Z)P(Y|Z) = P(X|Z)P(Y|Z) $$
:::


## Wrap-Up

*   Grundlagen der Wahrscheinlichkeitstheorie
    *   Elementarereignisse und Wahrscheinlichkeit
    *   Rechenregeln
    *   Bedingte Wahrscheinlichkeit und Verbundwahrscheinlichkeit
    *   Marginalisierung
    *   (Bedingte) Unabhängigkeit
    *   Bayes'sche Regel







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

### Exceptions
*   TODO (what, where, license)
:::
