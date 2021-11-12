---
type: lecture-cg
title: "Klassifikation mit Naive Bayes"
menuTitle: "Naive Bayes"
author: "Carsten Gips (FH Bielefeld)"
weight: 2
readings:
  - key: "Russell2020"
    comment: "Kapitel 12"
  - key: "Ertel2017"
    comment: "Abschnitt 8.7"
quizzes:
  - link: TODO
    name: "Selbsttest Naive Bayes Klassifikation (Kahoot)"
youtube:
  - id: qfX4zp1i-Co
fhmedia:
  - link: "https://www.fh-bielefeld.de/medienportal/m/d84605cc9bccc5d1d8d589c2968726d32539aa629bff06e28096a834730bfd8c1bef1604fd09ee1aab906d30272c5fd1f31b11418fa2bdb2e2710a23dd382d1c"
    name: "Direktlink FH-Medienportal: KI Naive Bayes Klassifikation"
---


## Medizinische Diagnostik mit NB

*   Bei Arthrose wird in 80 Prozent der Fälle ein steifes Gelenk beobachtet: $P(S|A) = 0.8$
*   Eine von 10.000 Personen hat Arthrose: $P(A) = 0.0001$
*   Eine von 10 Personen hat ein steifes Gelenk: $P(S) = 0.1$

\bigskip

=> Ich habe ein steifes Gelenk. Habe ich Arthrose?


## Textklassifikation mit NB

*   Mails, manuell markiert:
    *   D1: ("Sieben Zwerge fraßen sieben Ziegen", OK)
    *   D2: ("Sieben Ziegen traten sieben Wölfe", SPAM)
    *   D3: ("Sieben Wölfe fraßen sieben Böcke", OK)
    *   D4: ("Sieben Böcke traten sieben Zwerge", SPAM)

\bigskip

*   Neue Mails:
    *   T1: ("Sieben Zwerge fraßen sieben Wölfe")
    *   T2: ("Sieben Zwerge traten sieben Ziegen")

::: notes
Lernen Sie mit Hilfe der Trainingsmenge einen Naive-Bayes-Klassifikator und
wenden Sie diesen auf die beiden Test-Dokumente an.
:::


## Naive Bayes

*   Verallgemeinerte Bayes Regel
    $$
    P(H|D_1, \ldots, D_n) = \frac{P(D_1, \ldots, D_n | H)P(H)}{P(D_1, \ldots, D_n)}
    $$

*   Annahme: $D_i$ sind bedingt unabhängig
    $$
    P(D_1, \ldots, D_n | H) = P(D_1 | H) \cdot \ldots \cdot P(D_n | H) = \prod_i P(D_i | H)
    $$

*   Beobachtung: $P(D_1, \ldots, D_n)$ für alle Hypothesen $h \in H$ gleich

\bigskip
\bigskip

*   **Naive Bayes Klassifikator** bzw. **MAP**  [("Maximum a Posteriori")]{.notes}
    $$
    h_{MAP} = \operatorname{argmax}_{h \in H} P(h | D_1, \ldots, D_n)
    = \operatorname{argmax}_{h \in H} P(h) \prod_i P(D_i | h)
    $$

    ::: notes
    Naive Bayes: Wähle die plausibelste Hypothese, die von den Daten
    unterstützt wird.
    :::


## Bayes'sches Lernen

$$
h_{MAP} = \operatorname{argmax}_{h \in H} P(h | D_1, \ldots, D_n)
= \operatorname{argmax}_{h \in H} P(h) \prod_i P(D_i | h)
$$

\bigskip

**Training**: Bestimme die Wahrscheinlichkeiten aus Trainingsdaten $\mathbf{S}$

*   Für jede Klasse $h$:
    *   Schätze $P(h) = \dfrac{|S(h)|}{|S|}$
    *   Für jedes Attribut $D_i$ und jede Ausprägung $x \in D_i$: \newline
        Schätze $P(D_i=x | h) = \dfrac{|S_{D_i}(x) \cap S(h)|}{|S(h)|}$

\bigskip

**Klassifikation**: Wähle wahrscheinlichste Klasse $h_{MAP}$ für Vektor $\mathbf{x}$

*   $h_{MAP} = \operatorname{argmax}_{h \in H} P(h) \prod_{x \in \mathbf{x}} P(x | h)$


## Beispiel Klassifikation mit NB

\bigskip

| Nase läuft | Husten | Gerötete Haut | Fieber | Klasse |
|------------|--------|---------------|--------|--------|
| 1          | 1      | 1             | 0      | krank  |
| 1          | 1      | 0             | 0      | krank  |
| 0          | 0      | 1             | 1      | krank  |
| 1          | 0      | 0             | 0      | gesund |
| 0          | 0      | 0             | 0      | gesund |

*   Eingabe: Person mit Husten und Fieber

\pause
\bigskip

Gesucht: $P(\text{krank})$, $P(\text{gesund})$, $P(\text{Nase=0}|\text{krank})$,
$P(\text{Nase=0}|\text{gesund})$, ...

Wähle Klasse
$$
\begin{array}{rl}
h_{MAP} = \operatorname{argmax}_{h \in \lbrace \text{gesund, krank} \rbrace} & P(h) \cdot P(\text{Nase=0}|h) \cdot P(\text{Husten=1}|h) \\
    & \cdot P(\text{Haut=0}|h) \cdot P(\text{Fieber=1}|h)
\end{array}
$$

::: notes
**Ergebnis**: (nur die für den zu klassifizierenden Beispiel-Vektor nötigen
Werte, die restlichen müssten aber auch beim "Training" berechnet werden!)

```
P(gesund) = 2/5 = 0.4
P(krank)  = 3/5 = 0.6

P(Nase=0 | gesund) = 1/2 = 0.5
P(Nase=0 | krank)  = 1/3 = 0.333

P(Husten=1 | gesund) = 0/2 = 0
P(Husten=1 | krank)  = 2/3 = 0.667

P(Haut=0 | gesund) = 2/2 = 1
P(Haut=0 | krank)  = 1/3 = 0.333

P(Fieber=1 | gesund) = 0/2 = 0
P(Fieber=1 | krank)  = 1/3 = 0.333

h = gesund: P(gesund) * P(Nase=0 | gesund) * P(Husten=1 | gesund) * P(Haut=0 | gesund) * P(Fieber=1 | gesund) = 0.4*0.5*0*1*0              = 0
h = krank:  P(krank)  * P(Nase=0 | krank)  * P(Husten=1 | krank)  * P(Haut=0 | krank)  * P(Fieber=1 | krank)  = 0.6*0.333*0.667*0.33*0.333 = 0.015
```

=> Klasse "krank" gewinnt ...
:::

[Tafelbeispiel]{.bsp}


## Textklassifikation mit NB

*   Texte als Trainingsmenge:
    *   Text zerlegen in Terme (Wörter, sonstige relevante Token)
    *   ggf. Entfernen von Stoppwörtern (beispielsweise Artikel u.ä.)
    *   ggf. Stemming und Lemmatisierung für restliche Terme
    *   ggf. weitere Vorverarbeitungsschritte (Groß-Klein-Schreibung, ...)
    *   Terme zusammenfassen als Menge: *"Bag of Words"* (mit Häufigkeit)

\bigskip

*   Naive Bayes "trainieren":
    *   A-priori-Wahrscheinlichkeit der Klassen:
        $P(c) = \dfrac{N_c}{N} = \dfrac{\text{Anzahl Dokumente in Klasse c}}{\text{Anzahl Dokumente}}$

    \smallskip

    *   Likelihood der Daten (Terme):
        *   $P(t|c) = \dfrac{\operatorname{count}(t,c)}{\sum_{v \in V} \operatorname{count}(v,c)}$ \newline
            mit $\operatorname{count}(t,c)$ Anzahl der Vorkommen von Term $t$ in allen Dokumenten
            der Klasse $c$ und $V$ die Vereinigung aller Terme aller Dokumente
            (als Menge)

        \smallskip

        ::: notes
        *   Variante mit Laplace-Glättung (s.u.):
            $P(t|c) = \dfrac{\operatorname{count}(t,c) + 1}{\sum_{v \in V} \operatorname{count}(v,c) + |V|}$
        :::

::: slides
[Hinweise: Naivität, Laplace, Floating Point Underflow, Maximum Likelihood]{.bsp}
:::


::: notes
## Naivität im Naive Bayes

*   Unabhängigkeit der Attribute oft nicht gegeben

    => $P(D_1, \ldots, D_n | H) \ne \prod_i P(D_i | H)$

*   A-posteriori-Wahrscheinlichkeiten oft unrealistisch nah an 1 oder 0

\bigskip

*   Praxis: Dennoch häufig sehr gute Ergebnisse

    Wichtig: Solange die **Maximierung** über alle Hypothesen die selben Ergebnisse
    liefert, müssen die konkreten Schätzungen/Werte nicht exakt stimmen ...

Wenn Attribute nicht (bedingt) unabhängig sind, kann sich der NB verschätzen,
d.h. es kommt dann u.U. zu einer höheren Fehlerrate, da bestimmte Eigenschaften
in der Trainingsmenge zu hoch gewichtet werden.
:::


::: notes
## Laplace-Schätzer

*   Problem: Attribut-Ausprägung  für bestimmte Klasse nicht in Trainingsmenge:
    *   => Bedingte Wahrscheinlichkeit ist 0
    *   => Produkt gleich 0

\bigskip

*   Lösung: "Laplace-Schätzer" (auch "Laplace-Glättung")

    Statt $P(D_i=x | h) = \dfrac{|S_{D_i}(x) \cap S(h)|}{|S(h)|}$

    \smallskip

    nutze $P(D_i=x|h) = \dfrac{|S_{D_i}(x) \cap S(h)| + m \cdot p_i}{|S(h)| + m}$

    \smallskip

    *   mit $m$: frei wählbarer Faktor, und
    *   $p_i$: A-priori-Wahrscheinlichkeit für $P(D_i=x|h)$

        Hintergrundwissen oder einfach *uniforme Verteilung der Attributwerte*:
        $p_i = 1/|D_i|$ (Wahrscheinlichkeit für eine Attributausprägung
        ist 1/(Anzahl der Ausprägungen des Attributs))

    => "virtuelle" Trainingsbeispiele ($m$ ist die Zahl der virtuellen Trainingsbeispiele)
:::


::: notes
## Probleme mit Floating Point Underflow

*   MAP berechnet Produkt mit vielen Termen
*   Problem: Bei kleinen Zahlen kann **Floating Point Underflow** auftreten!

\bigskip

*   Lösung: Logarithmus maximieren (Produkt geht in Summe über)

    Erinnerung: $\log(x \cdot y) = \log(x) + \log(y)$ und Logarithmus streng monoton

    $$
    \begin{array}{rcl}
    h_{MAP} &=& \operatorname{argmax}_{h \in H} P(h|D_1, \ldots, D_n) \\[5pt]
            &=& \operatorname{argmax}_{h \in H} P(h) \prod_i P(D_i | h) \\[5pt]
            &=& \operatorname{argmax}_{h \in H} [\log(P(h)) + \sum_i \log(P(D_i | h))]
    \end{array}
    $$
:::


::: notes
## Maximum Likelihood

*   **Maximum a Posteriori**
    $$
    h_{MAP} = \operatorname{argmax}_{h \in H} P(h | D_1, \ldots, D_n)
    = \operatorname{argmax}_{h \in H} P(h) \prod_i P(D_i | h)
    $$

\bigskip

*   Annahme: Klassen uniform verteilt => $P(h_i) = P(h_j)$

    **Maximum Likelihood**
    $$
    h_{ML} = \operatorname{argmax}_{h \in H} \prod_i P(D_i | h)
    $$

    => Maximiere die Likelihood der Daten
:::


::: notes
## Ausblick: Kontinuierliche Attribute

Bisher sind wir von diskreten Attributen ausgegangen. Bei kontinuierlichen
Attributen hat man zwei Möglichkeiten:

*   Diskretisierung der Attribute: Aufteilung in Intervalle und Bezeichnung
    der Intervalle mit einem Namen
*   Einsatz einer Verteilungsannahme und deren Dichtefunktion, beispielsweise
    Annahme von **normalverteilten** Daten mit der Dichtefunktion
    $$
    f(x) = \frac{1}{\sqrt{2 \pi \sigma}} e^{- \frac{(x - \mu)^2}{2 \sigma^2}}
    $$
    wobei $\mu$ der Mittelwert und $\sigma^2$ die Varianz der Daten sind.
:::


::: notes
## Hinweis zum Sprachgebrauch

In Abhängigkeit von der Verteilung der $P(D_i | h)$ spricht man von

*   "multinominalem" NB: Attribute umfassen mehrere Kategorien (verschiedene
    Ausprägungen, wie im "Soll ich schwimmen gehen"-Beispiel oben)
*   Bernoulli NB: Attribute sind binär (Ausprägung 0 oder 1), typischerweise
    bei der Textklassifikation
*   Gauss'sches NB: Annahme einer Normalverteilung der Attribut-Ausprägungen
:::


## Wrap-Up

*   Klassifikation mit Naive Bayes
    *   Annahme von Unabhängigkeit => "Naive" Bayes Klassifikation
    *   Schätzen der bedingten Wahrscheinlichkeiten aus den Trainingsdaten
    *   Klassifikation durch Nutzung der geschätzten Wahrscheinlichkeiten
    *   Hinweis auf Naivität der Annahme, dennoch sehr gute Erfolge in Praxis
    *   Hinweis auf Probleme mit niedrigen Wahrscheinlichkeiten







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
