# NB: Klassifikation mit Naive Bayes

> [!IMPORTANT]
>
> <details open>
>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Mit Hilfe der (verallgemeinerten) Bayes-Regel kann man Klassifikation
> durchführen. Dazu werden beim “Training” die bedingten
> Wahrscheinlichkeiten aus den Trainingsdaten geschätzt. Die Anwendung
> (Klassifikation) erfolgt dann durch die Nutzung der beim “Training”
> berechneten bedingten Wahrscheinlichkeiten:
>
> $`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h|D_1,  \ldots, D_n) =
> \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i|h)`$
>
> Für jede Hypothese $`h`$, d.h. für jede Klasse, wird der Posterior
> $`P(h|D_1,  \ldots, D_n)`$ ausgerechnet. Die Klasse, deren Wert dabei
> am höchsten ist, “gewinnt”, d.h. die Klasse mit dem größten Posterior
> wird ausgegeben. (Deshalb wird das Verfahren oft auch “MAP” – *Maximum
> a Posteriori* – genannt.)
>
> Bei der Berechnung wird angenommen, dass die betrachteten Merkmale
> (bedingt) unabhängig sind (dies geht in die obige Formel ein). Diese
> Annahme trifft aber oft nicht zu, deshalb auch der Name “*Naive* Bayes
> Klassifikation”. Man berechnet in diesem Fall falsche Werte. Dennoch
> zeigt der Algorithmus in der Praxis sehr gute Ergebnisse.
>
> Durch den Einsatz der bedingten Wahrscheinlichkeiten in der
> Produktformel ergeben sich einige Schwierigkeiten:
>
> 1.  Wenn beim “Training” Ausprägungen fehlen, ist die bedingte
>     Wahrscheinlichkeit Null. Dadurch wird das gesamte Produkt Null.
>     Zur Abhilfe kann man den **Laplace-Schätzer** nutzen, der
>     (gesteuert über einen Parameter) gewissermaßen virtuelle
>     Trainingsbeispiele beisteuert.
> 2.  Durch das Produkt vieler kleiner Werte kann es schnell zu
>     *Floating Point*-Underflows kommen. Hier kann man einen Trick
>     nutzen: Man berechnet den Logarithmus der Produktformel. Dadurch
>     ändern sich zwar die absoluten Werte, die Reihenfolge der
>     Hypothesen bleibt aber erhalten. Da wir nur nach der Hypothese
>     suchen, die einen höheren Wert als die anderen hat, und nicht den
>     absoluten Wert an sich benötigen, kann man so vorgehen. Durch den
>     Logarithmus wird aus dem Produkt eine Summe, wo die kleinen Werte
>     der bedingten Wahrscheinlichkeiten nicht so starke Auswirkungen
>     haben wie im Produkt.
>
> Oft nimmt man zusätzlich an, dass für alle Hypothesen (Klassen) $`h`$
> der Prior $`P(h)`$ gleich ist. Dann kann man diesen Faktor ebenfalls
> aus der Berechnung entfernen. Dieses Verfahren nennt man auch
> “**Maximum Likelihood**”.
>
> Der NB-Klassifikator wird gern für die Textklassifikation eingesetzt.
> Hier muss man einem Text ein Label zuordnen. In einer Vorverarbeitung
> wird zunächst eine Menge der relevanten Wörter über alle
> Trainingstexte gebildet (*Bag-of-Words*). Der Bag-of-Words entspricht
> einem Merkmalsvektor, wobei die Merkmale die einzelnen Wörter sind.
> Dann kann jeder Text der Trainingsmenge über so einen Merkmalsvektor
> dargestellt werden: Entweder man gibt pro Merkmal an, ob es da (1)
> oder nicht da (0) ist oder man zählt die Häufigkeit des Auftretens.
> Dann kann man mit dem NB-Klassifikator die bedingten
> Wahrscheinlichkeiten schätzen und einen neuen Text klassifizieren.
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Naive Bayes Klassifikation](https://youtu.be/qfX4zp1i-Co)
>
> </details>

## Medizinische Diagnostik mit NB

- Bei Arthrose wird in 80 Prozent der Fälle ein steifes Gelenk
  beobachtet: $`P(S|A) = 0.8`$
- Eine von 10.000 Personen hat Arthrose: $`P(A) = 0.0001`$
- Eine von 10 Personen hat ein steifes Gelenk: $`P(S) = 0.1`$

=\> Ich habe ein steifes Gelenk. Habe ich Arthrose?

## Textklassifikation mit NB

- Mails, manuell markiert:
  - D1: (“Sieben Zwerge fraßen sieben Ziegen”, OK)
  - D2: (“Sieben Ziegen traten sieben Wölfe”, SPAM)
  - D3: (“Sieben Wölfe fraßen sieben Böcke”, OK)
  - D4: (“Sieben Böcke traten sieben Zwerge”, SPAM)

<!-- -->

- Neue Mails:
  - T1: (“Sieben Zwerge fraßen sieben Wölfe”)
  - T2: (“Sieben Zwerge traten sieben Ziegen”)

Lernen Sie mit Hilfe der Trainingsmenge einen Naive-Bayes-Klassifikator
und wenden Sie diesen auf die beiden Test-Dokumente an.

## Naive Bayes

- Verallgemeinerte Bayes Regel

``` math
P(H|D_1, \ldots, D_n) = \frac{P(D_1, \ldots, D_n | H)P(H)}{P(D_1, \ldots, D_n)}
```

- Annahme: $`D_i`$ sind bedingt unabhängig

``` math
P(D_1, \ldots, D_n | H) = P(D_1 | H) \cdot \ldots \cdot P(D_n | H) = \prod_i P(D_i | H)
```

- Beobachtung: $`P(D_1, \ldots, D_n)`$ für alle Hypothesen $`h \in H`$
  gleich

<!-- -->

- **Naive Bayes Klassifikator** bzw. **MAP** (“Maximum a Posteriori”)

  Naive Bayes: Wähle die plausibelste Hypothese, die von den Daten
  unterstützt wird.

``` math
h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h | D_1, \ldots, D_n)
= \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i | h)
```

## Bayes’sches Lernen

``` math
h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h | D_1, \ldots, D_n)
= \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i | h)
```

**Training**: Bestimme die Wahrscheinlichkeiten aus Trainingsdaten
$`\mathbf{S}`$

- Für jede Klasse $`h`$:
  - Schätze $`P(h) = \dfrac{|S(h)|}{|S|}`$
  - Für jedes Attribut $`D_i`$ und jede Ausprägung $`x \in D_i`$:
    Schätze $`P(D_i=x | h) = \dfrac{|S_{D_i}(x) \cap S(h)|}{|S(h)|}`$

**Klassifikation**: Wähle wahrscheinlichste Klasse $`h_{MAP}`$ für
Vektor $`\mathbf{x}`$

- $`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{x \in \mathbf{x}} P(x | h)`$

## Beispiel Klassifikation mit NB

| Nase läuft | Husten | Gerötete Haut | Fieber | Klasse |
|------------|--------|---------------|--------|--------|
| 1          | 1      | 1             | 0      | krank  |
| 1          | 1      | 0             | 0      | krank  |
| 0          | 0      | 1             | 1      | krank  |
| 1          | 0      | 0             | 0      | gesund |
| 0          | 0      | 0             | 0      | gesund |

- Eingabe: Person mit Husten und Fieber

Gesucht: $`P(\text{krank})`$, $`P(\text{gesund})`$,
$`P(\text{Nase=0}|\text{krank})`$, $`P(\text{Nase=0}|\text{gesund})`$, …

Wähle Klasse
``` math
\begin{eqnarray}
h_{MAP} = \mathop{\text{argmax}}_{h \in \lbrace \text{gesund, krank} \rbrace} & P(h) \cdot P(\text{Nase=0}|h) \cdot P(\text{Husten=1}|h) \\
    & \cdot P(\text{Haut=0}|h) \cdot P(\text{Fieber=1}|h)
\end{eqnarray}
```

**Ergebnis**: (nur die für den zu klassifizierenden Beispiel-Vektor
nötigen Werte, die restlichen müssten aber auch beim “Training”
berechnet werden!)

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

=\> Klasse “krank” gewinnt (Wert für $`P(\text{krank})`$ ist der höchste
der beiden Hypothesen) …

## Textklassifikation mit NB

- Texte als Trainingsmenge:
  - Text zerlegen in Terme (Wörter, sonstige relevante Token)
  - ggf. Entfernen von Stoppwörtern (beispielsweise Artikel u.ä.)
  - ggf. Stemming und Lemmatisierung für restliche Terme
  - ggf. weitere Vorverarbeitungsschritte (Groß-Klein-Schreibung, …)
  - Terme zusammenfassen als Menge: *“Bag of Words”* (mit Häufigkeit)

<!-- -->

- Naive Bayes “trainieren”:
  - A-priori-Wahrscheinlichkeit der Klassen:
    $`P(c) = \dfrac{N_c}{N} = \dfrac{\text{Anzahl Dokumente in Klasse c}}{\text{Anzahl Dokumente}}`$

  <!-- -->

  - Likelihood der Daten (Terme):
    - $`P(t|c) = \dfrac{\mathop{\text{count}}(t,c)}{\sum_{v \in V} \mathop{\text{count}}(v,c)}`$
      mit $`\mathop{\text{count}}(t,c)`$ Anzahl der Vorkommen von Term
      $`t`$ in allen Dokumenten der Klasse $`c`$ und $`V`$ die
      Vereinigung aller Terme aller Dokumente (als Menge)

    <!-- -->

    - Variante mit Laplace-Glättung (s.u.):
      $`P(t|c) = \dfrac{\mathop{\text{count}}(t,c) + 1}{\sum_{v \in V} \mathop{\text{count}}(v,c) + |V|}`$

## Naivität im Naive Bayes

- Unabhängigkeit der Attribute oft nicht gegeben

  =\> $`P(D_1, \ldots, D_n | H) \ne \prod_i P(D_i | H)`$

- A-posteriori-Wahrscheinlichkeiten oft unrealistisch nah an 1 oder 0

<!-- -->

- Praxis: Dennoch häufig sehr gute Ergebnisse

  Wichtig: Solange die **Maximierung** über alle Hypothesen die selben
  Ergebnisse liefert, müssen die konkreten Schätzungen/Werte nicht exakt
  stimmen …

Wenn Attribute nicht (bedingt) unabhängig sind, kann sich der NB
verschätzen, d.h. es kommt dann u.U. zu einer höheren Fehlerrate, da
bestimmte Eigenschaften in der Trainingsmenge zu hoch gewichtet werden.

> [!TIP]
>
> ### Beispiel
>
> #### Gegebene Daten
>
> Seien die beiden Merkmale $`x_1`$ und $`x_2`$ mit den folgenden
> Verteilungen gegeben:
>
> - Klassen: $`H \in \lbrace 0, 1 \rbrace`$,
>   $`P(H = 0) = P(H = 1) = 0.5`$
> - Bedingte Verteilungen $`P(x_1, x_2 | H)`$:
>   - Für $`H = 0`$:
>     - $`P(x_1=0, x_2=0 | 0) = 0.30`$
>     - $`P(x_1=0, x_2=1 | 0) = 0.35`$
>     - $`P(x_1=1, x_2=0 | 0) = 0.15`$
>     - $`P(x_1=1, x_2=1 | 0) = 0.20`$
>   - Für $`H = 1`$:
>     - $`P(x_1=0, x_2=0 | 1) = 0.00`$
>     - $`P(x_1=0, x_2=1 | 1) = 0.30`$
>     - $`P(x_1=1, x_2=0 | 1) = 0.65`$
>     - $`P(x_1=1, x_2=1 | 1) = 0.05`$
>
> #### Analyse der gegebenen Daten
>
> Die Merkmale $`x_1`$ und $`x_2`$ sind *nicht* bedingt abhängig gegeben
> $`H`$.
>
> Erinnerung: Zwei Ereignisse $`X`$ und $`Y`$ sind bedingt unabhängig
> gegeben $`Z`$, wenn gilt $`P(X,Y|Z) = P(X|Y,Z)P(Y|Z) = P(X|Z)P(Y|Z)`$.
>
> Wir haben aber im Fall von $`H=1`$:
>
> - $`P(x_1=0, x_2=0 | 1) = 0.00`$
>   vs. $`P(x_1=0 | 1) P(x_2=0 | 1) = (0.00+0.30) * (0.00+0.65) = 0.30 * 0.65 = 0.195`$
> - $`P(x_1=0, x_2=1 | 1) = 0.30`$
>   vs. $`P(x_1=0 | 1) P(x_2=1 | 1) = (0.00+0.30) * (0.30+0.05) = 0.30 * 0.35 = 0.105`$
> - $`P(x_1=1, x_2=0 | 1) = 0.65`$
>   vs. $`P(x_1=1 | 1) P(x_2=0 | 1) = (0.65+0.05) * (0.00+0.65) = 0.70 * 0.65 = 0.455`$
> - $`P(x_1=1, x_2=1 | 1) = 0.05`$
>   vs. $`P(x_1=1 | 1) P(x_2=1 | 1) = (0.65+0.05) * (0.30+0.05) = 0.70 * 0.35 = 0.245`$
>
> (analog für $`H=0`$)
>
> Damit bekommen wir im Naive Bayes Klassifikator ein Problem. Dort wird
> von bedingt unabhängigen Merkmalen ausgegangen und deshalb die
> Vereinfachung von $`P(x_1, x_2 | H)`$ zu $`P(x_1 | H) P(x_2 | H)`$
> vorgenommen. Da die Annahme nicht stimmt, werden die Merkmale falsch
> gewichtet und es kann zu Fehlklassifikationen kommen.
>
> #### Klassifikation einer Beobachtung
>
> Wir machen nun die folgende Beobachtung: $`X = (x_1=1, x_2=1)`$.
>
> Die nötigen Marginalisierungen aus den Trainingsdaten für diese
> Beobachtung sind:
>
> - Für $`H = 0`$: $`P(x_1=1|0) = 0.15 + 0.20 = 0.35`$,
>   $`P(x_2=1|0) = 0.35 + 0.20 = 0.55`$
> - Für $`H = 1`$: $`P(x_1=1|1) = 0.65 + 0.05 = 0.70`$,
>   $`P(x_2=1|1) = 0.30 + 0.05 = 0.35`$
>
> Anwendung der Naive Bayes Klassifikation (mit Annahme bedingt
> unabhängige Merkmale): Wir nutzen
> $`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h | D_1, \ldots, D_n)
> = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i | h)`$ und
> setzen unsere beiden Merkmale ein:
> $`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h | x_1, x_2)
> = \mathop{\text{argmax}}_{h \in H} \: P(h) P(x_1 | h) P(x_2 | h)`$.
>
> Damit bekommen wir folgende Entscheidung:
>
> - $`H=0: 0.5 * 0.35 * 0.55 = 0.09625`$
> - $`H=1: 0.5 * 0.70 * 0.35 = 0.1225`$
> - Entscheidung für Klasse $`H=1`$
>
> Da die Merkmale nicht unabhängig sind, darf die Produktannahme nicht
> verwendet werden, sondern wir müssten eigentlich den Term
> $`P(x_1, x_2 | h)`$ nutzen:
> $`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h | x_1, x_2)
> = \mathop{\text{argmax}}_{h \in H} \: P(h) P(x_1, x_2 | h)`$.
>
> Aus den gegebenen Daten haben wir (einfach oben ablesen):
>
> - $`P(x_1=1, x_2=1 | 0) = 0.20`$
> - $`P(x_1=1, x_2=1 | 1) = 0.05`$
>
> Eingesetzt in die Formel
> $`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h | x_1, x_2)
> = \mathop{\text{argmax}}_{h \in H} \: P(h) P(x_1, x_2 | h)`$:
>
> - $`H=0: 0.5 * 0.20 = 0.10`$
> - $`H=1: 0.5 * 0.05 = 0.025`$
> - Entscheidung für Klasse $`H=0`$
>
> D.h. der Naive Bayes Klassifikator würde hier $`H=1`$ vorschlagen,
> während der korrekte Posterior für $`H=0`$ spricht.
>
> #### Interpretation
>
> In diesem konstruierten Beispiel führt die Abhängigkeit der Merkmale
> zu einer Fehlkalibrierung der Posterior-Wahrscheinlichkeiten durch NB
> und damit zu einer falschen Klassifikation. In der Realität erweist
> sich der NB trotzdem relativ robust gegenüber der Abhängigkeit von
> Merkmalen: Durch die Korrelation kommen häufig
> A-posteriori-Wahrscheinlichkeiten nahe 0 oder nahe 1 heraus, aber da
> es nur auf das Maximum und nicht auf den konkreten Wert ankommt,
> erhält man häufig trotzdem noch eine korrekte Klassifikation.

## Laplace-Schätzer

- Problem: Attribut-Ausprägung für bestimmte Klasse nicht in
  Trainingsmenge:
  - =\> Bedingte Wahrscheinlichkeit ist 0
  - =\> Produkt gleich 0

<!-- -->

- Lösung: “Laplace-Schätzer” (auch “Laplace-Glättung”)

  Statt $`P(D_i=x | h) = \dfrac{|S_{D_i}(x) \cap S(h)|}{|S(h)|}`$

  nutze
  $`P(D_i=x|h) = \dfrac{|S_{D_i}(x) \cap S(h)| + m \cdot p_i}{|S(h)| + m}`$

  - mit $`m`$: frei wählbarer Faktor, und

  - $`p_i`$: A-priori-Wahrscheinlichkeit für $`P(D_i=x|h)`$

    Hintergrundwissen oder einfach *uniforme Verteilung der
    Attributwerte*: $`p_i = 1/|D_i|`$ (Wahrscheinlichkeit für eine
    Attributausprägung ist 1/(Anzahl der Ausprägungen des Attributs))

  =\> “virtuelle” Trainingsbeispiele ($`m`$ ist die Zahl der virtuellen
  Trainingsbeispiele)

## Probleme mit Floating Point Underflow

- MAP berechnet Produkt mit vielen Termen
- Problem: Bei kleinen Zahlen kann **Floating Point Underflow**
  auftreten!

<!-- -->

- Lösung: Logarithmus maximieren (Produkt geht in Summe über)

  Erinnerung: $`\log(x \cdot y) = \log(x) + \log(y)`$ und Logarithmus
  streng monoton

``` math
\begin{eqnarray}
h_{MAP} &=& \mathop{\text{argmax}}_{h \in H} \: P(h|D_1, \ldots, D_n) \\[5pt]
        &=& \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i | h) \\[5pt]
        &=& \mathop{\text{argmax}}_{h \in H} \: [\log(P(h)) + \sum_i \log(P(D_i | h))]
\end{eqnarray}
```

## Maximum Likelihood

- **Maximum a Posteriori**

``` math
h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h | D_1, \ldots, D_n)
= \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_i P(D_i | h)
```

- Annahme: Klassen uniform verteilt =\> $`P(h_i) = P(h_j)`$

  **Maximum Likelihood**

  =\> Maximiere die Likelihood der Daten

``` math
h_{ML} = \mathop{\text{argmax}}_{h \in H} \: \prod_i P(D_i | h)
```

## Ausblick: Kontinuierliche Attribute

Bisher sind wir von diskreten Attributen ausgegangen. Bei
kontinuierlichen Attributen hat man zwei Möglichkeiten:

- Diskretisierung der Attribute: Aufteilung in Intervalle und
  Bezeichnung der Intervalle mit einem Namen
- Einsatz einer Verteilungsannahme und deren Dichtefunktion,
  beispielsweise Annahme von **normalverteilten** Daten mit der
  Dichtefunktion wobei $`\mu`$ der Mittelwert und $`\sigma^2`$ die
  Varianz der Daten sind.

``` math
f(x) = \frac{1}{\sqrt{2 \pi \sigma}} e^{- \frac{(x - \mu)^2}{2 \sigma^2}}
```

## Hinweis zum Sprachgebrauch

In Abhängigkeit von der Verteilung der $`P(D_i | h)`$ spricht man von

- “multinominalem” NB: Attribute umfassen mehrere Kategorien
  (verschiedene Ausprägungen, wie im “Wahlkampf”-Beispiel: Attribut
  “Bildung” hat die Ausprägungen “Abitur”, “Bachelor” und “Master”)
- Bernoulli NB: Attribute sind binär (Ausprägung 0 oder 1),
  typischerweise bei der Textklassifikation
- Gauss’sches NB: Annahme einer Normalverteilung der
  Attribut-Ausprägungen

## Wrap-Up

- Klassifikation mit Naive Bayes
  - Annahme von Unabhängigkeit =\> “Naive” Bayes Klassifikation
  - Schätzen der bedingten Wahrscheinlichkeiten aus den Trainingsdaten
  - Klassifikation durch Nutzung der geschätzten Wahrscheinlichkeiten
  - Hinweis auf Naivität der Annahme, dennoch sehr gute Erfolge in
    Praxis
  - Hinweis auf Probleme mit niedrigen Wahrscheinlichkeiten

## 📖 Zum Nachlesen

Lesen Sie in ([Russell und Norvig 2021](#ref-Russell2021)) bitte den
Abschnitt 12.6 “Naive Bayes Models”. Darüber hinaus ist Abschnitt “8.10
Der Naive Bayes Klassifikator” ([Ertel 2025](#ref-Ertel2025)) sehr
empfehlenswert.

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Ich kann die Unabhängigkeits-Annahme in der ‘Naive’ Bayes
>   Klassifikation erklären
> - k2: Ich kann die Probleme mit niedrigen Wahrscheinlichkeiten
>   erklären
> - k3: Ich kann die bedingten Wahrscheinlichkeiten aus konkreten
>   Trainingsdaten schätzen
> - k3: Ich kann die Klassifikation mit Naive Bayes durch Nutzung der
>   geschätzten Wahrscheinlichkeiten durchführen
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Naive Bayes Klassifikation
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106588&client_id=FH-Bielefeld)
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Spam-Mails**
>
> Stellen Sie sich vor, Sie haben eine Sammlung von 100 E-Mails (60
> Spam, 40 Nicht-Spam). Sie wissen, dass das Wort “Gewinn” in 45
> Spam-E-Mails und in 5 Nicht-Spam-E-Mails vorkommt.
>
> 1.  Berechnen Sie die Wahrscheinlichkeit, dass es eine E-Mail Spam
>     ist, wenn das Wort “Gewinn” darin vorkommt.
>
> 2.  Wie würde die E-Mail mit dem Wort “Gewinn” durch einen Naive Bayes
>     Klassifikator bewertet?
>
> **Textklassifikation**
>
> Betrachten Sie die folgenden Aussagen:
>
> > - Patient A hat weder Husten noch Fieber und ist gesund.
> > - Patient B hat Husten, aber kein Fieber und ist gesund.
> > - Patient C hat keinen Husten, aber Fieber. Er ist krank.
> > - Patient D hat Husten und kein Fieber und ist krank.
> > - Patient E hat Husten und Fieber. Er ist krank.
>
> Aufgaben:
>
> 1.  Trainieren Sie auf diesem Datensatz einen Klassifikator mit NB.
> 2.  Ist Patient F krank? Er hat Husten, aber kein Fieber.
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

<blockquote><p><sup><sub><strong>Last modified:</strong> cac4843 (lecture: improve challenge (NB2), 2025-10-01)<br></sub></sup></p></blockquote>
