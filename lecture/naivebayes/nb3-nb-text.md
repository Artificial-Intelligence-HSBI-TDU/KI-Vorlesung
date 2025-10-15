# NB: Text-Klassifikation mit Naive Bayes

> [!IMPORTANT]
>
> <details open>
>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Der NB-Klassifikator wird gern für die Textklassifikation eingesetzt.
> Hier muss man einem Text ein Label zuordnen.
>
> In einer Vorverarbeitung wird zunächst eine Menge der relevanten
> Wörter über alle Trainingstexte gebildet (*Bag-of-Words*). Der
> Bag-of-Words entspricht einem Merkmalsvektor, wobei die Merkmale die
> einzelnen Wörter sind. Dann kann jeder Text der Trainingsmenge über so
> einen Merkmalsvektor dargestellt werden: Entweder man gibt pro Merkmal
> an, ob es da (1) oder nicht da (0) ist (Variante Bernoulli NB) oder
> man zählt die Häufigkeit des Auftretens der Merkmale (Variante
> Multinomial NB). Dann kann man mit dem NB-Klassifikator die bedingten
> Wahrscheinlichkeiten schätzen und einen neuen Text klassifizieren.
>
> Bei beiden Varianten hat man das Problem mit Termen, die für eine
> Klasse im Training nicht vorkommen (Zero-Frequency-Problem). Dabei
> werden die geschätzten Wahrscheinlichkeiten zu 0, wodurch bei der
> Verwendung in der Klassifikation entsprechend die Scores ebenfalls zu
> 0 berechnen und eine sinnvolle Klassifikation nicht möglich ist.
> Diesem Problem kann man durch die Laplace-Glättung begegnen, welche
> wie künstliche Trainingsdaten wirkt.
>
> Wenn im zu klassifizierenden Testdatensatz Wörter vorkommen, die nicht
> beim Training vorhanden waren, spricht man auch vom
> “Out-of-Vocabulary”-Problem. Am einfachsten lässt sich dieses Problem
> lösen, indem man bereits beim Training einen “UNK”-Term trainiert (UNK
> steht für “unknown”). Bei der Klassifikation werden OOV-Terme einfach
> auf den UNK-Term abgebildet und die dafür berechneten
> Wahrscheinlichkeiten genutzt.
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Text-Klassifikation mit Naive
>   Bayes](https://youtu.be/Gkg-SGnl9nY)
>
> </details>

## Textklassifikation mit NB

- Trainingsdaten: Mails, manuell markiert:
  - D1: (“Die sieben Zwerge fraßen die sieben Ziegen”, OK)
  - D2: (“Die sieben Ziegen traten die sieben Wölfe”, SPAM)
  - D3: (“Die sieben Wölfe fraßen die sieben Böcke”, OK)
  - D4: (“Die sieben Böcke traten die sieben Zwerge”, OK)

<!-- -->

- Testdaten (neue Mails):
  - T1: (“Die sieben Zwerge fraßen die sieben Wölfe”)

Lernen Sie mit Hilfe der Trainingsmenge einen Naive-Bayes-Klassifikator
und wenden Sie diesen auf die Test-Dokumente an.

## Vorverarbeitung

- Vereinheitlichung: Kleinbuchstaben

- **Tokenisierung**: Aufteilung auf einzelne Wörter

  Manchmal gar nicht so einfach: Wie viele Wörter sind “aren’t”?

- **Stop Words** entfernen: “der”, “die”, “das”, …

  Artikel und Füllwörter enthalten oft keine wirkliche Information für
  die Klassifikationsaufgabe und werden deshalb entfernt.

  Dabei am besten auch Zeichensetzung mit entfernen.

- **Lemmatisierung**: “fraßen” -\> “fressen”, “Wölfe” -\> “Wolf”, …

  Die Wörter werden auf ihre “Grundform” gebracht: gebeugte Verben durch
  den Infinitiv ersetzt oder Plurale durch den Singular ersetzt etc.
  Erfolgt häufig mit Hilfe von Wörterbüchern.

- **Synonyme, Homonyme, Akronyme** ersetzen

  Synonyme: Verschiedene Wörter mit selber/ähnlicher Bedeutung:
  “Fahrstuhl”, “Lift”

  Homonyme: Wort mit unterschiedlicher Bedeutung: “Bank”
  (Sitzgelegenheit, Geldinstitut)

  Akronyme: Abkürzungen: “SPO”

- **Stemming**

  Wörter auf ihre “Grundform” zurückbringen durch Abschneiden: Aus
  “closed” oder “closing” würde “clos” als gemeinsame Form. Eine etwas
  krude Variante der Lemmatisierung.

- **Terme**: Die erhaltenen Wörter nennen wir “Terme”.

## Merkmalsvektor: Bag of Words

Nach Vorverarbeitung:

- Trainingsdaten (**Terme**):
  - D1: (sieben, zwerg, fressen, sieben, ziege; OK)
  - D2: (sieben, ziege, treten, sieben, wolf; SPAM)
  - D3: (sieben, wolf, fressen, sieben, bock; OK)
  - D4: (sieben, bock, treten, sieben, zwerg; OK)
- Testdaten (**Terme**):
  - T1: (sieben, zwerg, fressen, sieben, wolf)

**Vokabular**: V = {sieben, zwerg, fressen, ziege, treten, wolf, bock}

**Bag of Words**: Merkmalsvektor mit fester Anordnung des Vokabulars

## Bag of Words für Trainingsdaten

|     | sieben | zwerg | fressen | ziege | treten | wolf | bock | Klasse |
|:----|:-------|:------|:--------|:------|:-------|:-----|:-----|:-------|
| D1  | 2      | 1     | 1       | 1     | 0      | 0    | 0    | OK     |
| D2  | 2      | 0     | 0       | 1     | 1      | 1    | 0    | SPAM   |
| D3  | 2      | 0     | 1       | 0     | 0      | 1    | 1    | OK     |
| D4  | 2      | 1     | 0       | 0     | 1      | 0    | 1    | OK     |

Im *Bag of Words* (BoW) bekommt jeder Term des Vokabulars einen festen
Platz. Die Trainingsdaten und die Testdaten können nun mit Hilfe dieses
Vektors dargestellt werden, indem für jeder Term im BoW die Anzahl der
Vorkommen im Trainings- oder Testvektor gezählt wird (“*Multinomial
NB*”).

Es gibt auch die einfachere Form, die lediglich das Vorkommen vermerkt,
also mit 0 und 1 arbeitet und nicht durchzählt (“*Bernoulli NB*”, s.u.).

## Naive Bayes Training (Multinomial NB)

Bei Multinomial NB zählen wir die Häufigkeiten der Vorkommen der
einzelnen Terme in den einzelnen Dokumenten der jeweiligen Klasse.

Nachfolgend sind die entsprechenden Häufigkeiten im Traingsdatensatz
zusammengefasst dargestellt.

| Klasse | sieben | zwerg | fressen | ziege | treten | wolf | bock | Anzahl Wörter | Anzahl Dokumente |
|:-------|:-------|:------|:--------|:------|:-------|:-----|:-----|:--------------|:-----------------|
| OK     | 6      | 2     | 2       | 1     | 1      | 1    | 2    | 15            | 3                |
| SPAM   | 2      | 0     | 0       | 1     | 1      | 1    | 0    | 5             | 1                |

Für die Terme ist jeweils die Gesamt-Anzahl des Vorkommens des Terms in
den Dokumenten der jeweiligen Klasse angegeben.

Naive Bayes “trainieren”

- A-priori-Wahrscheinlichkeit der Klassen:
  $`P(c) = \dfrac{N_c}{N} = \dfrac{\text{Anzahl Dokumente in Klasse c}}{\text{Anzahl Dokumente}}`$

- Likelihood der Daten (Terme):
  $`P(t|c) = \dfrac{\mathop{\text{count}}(t,c)}{\sum_{v \in V} \mathop{\text{count}}(v,c)}`$
  mit $`\mathop{\text{count}}(t,c)`$ Anzahl der Vorkommen von Term $`t`$
  in allen Dokumenten der Klasse $`c`$ und $`V`$ die Vereinigung aller
  Terme aller Dokumente (Vokabular)

<!-- -->

- A-priori-Wahrscheinlichkeit:
  - $`P(\text{OK}) = 3/4 = 0.75`$
  - $`P(\text{SPAM}) = 1/4 = 0.25`$
- Likelihood:
  - $`P(\text{sieben} | \text{OK})`$
    $`= (2+2+2)/(2+2+2+1+1+1+1+1+1+1+1+1)`$ $`= 6/15 = 0.40`$
  - $`P(\text{sieben} | \text{SPAM})`$ $`= (2)/(2+1+1+1) = 2/5 = 0.40`$
  - $`P(\text{zwerg} | \text{OK}) = 2/15 = 0.133`$
  - $`P(\text{zwerg} | \text{SPAM}) = 0/5 = 0.00`$
  - $`P(\text{fressen} | \text{OK}) = 2/15 = 0.133`$
  - $`P(\text{fressen} | \text{SPAM}) = 0/5 = 0.00`$
  - $`P(\text{ziege} | \text{OK}) = 1/15 = 0.067`$
  - $`P(\text{ziege} | \text{SPAM}) = 1/5 = 0.20`$
  - $`P(\text{treten} | \text{OK}) = 1/15 = 0.067`$
  - $`P(\text{treten} | \text{SPAM}) = 1/5 = 0.20`$
  - $`P(\text{wolf} | \text{OK}) = 1/15 = 0.067`$
  - $`P(\text{wolf} | \text{SPAM}) = 1/5 = 0.20`$
  - $`P(\text{bock} | \text{OK}) = 2/15 = 0.133`$
  - $`P(\text{bock} | \text{SPAM}) = 0/5 = 0.00`$

## Naive Bayes Klassifikation (Multinomial NB)

$`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{x \in \mathbf{x}} P(x | h)`$

Jedes Vorkommen eines Wortes im Testdatensatz ist ein $`x`$!

``` math
h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{w \in \mathbf{V}} P(w | h)^{\mathbf{\mathop{\text{count}}(w)}}
```

T1: (sieben, zwerg, fressen, sieben, wolf)

- **H = OK**:
  $`P(\text{OK}) \cdot P(\text{sieben} | \text{OK})^2 \cdot P(\text{zwerg} | \text{OK})^1 \cdot P(\text{fressen} | \text{OK})^1 \cdot P(\text{ziege} | \text{OK})^0 \cdot P(\text{treten} | \text{OK})^0 \cdot P(\text{wolf} | \text{OK})^1 \cdot P(\text{bock} | \text{OK})^0`$
  $`= 0.75*0.40*0.40*0.133*0.133*1*1*0.067*1 = 0.00014221956`$

- **H = SPAM**:
  $`P(\text{SPAM}) \cdot P(\text{sieben} | \text{SPAM})^2 \cdot P(\text{zwerg} | \text{SPAM})^1 \cdot P(\text{fressen} | \text{SPAM})^1 \cdot P(\text{ziege} | \text{SPAM})^0 \cdot P(\text{treten} | \text{SPAM})^0 \cdot P(\text{wolf} | \text{SPAM})^1 \cdot P(\text{bock} | \text{SPAM})^0`$
  $`= 0.25*0.40*0.40*0.00*0.00*1*1*0.20*1 = 0.00`$

Entscheidung: OK

**Beobachtungen**:

1.  Viele kleine Faktoren ergeben ein immer kleineres Produkt =\>
    Logarithmus nutzen und Übergang zu Summe statt Produkt!
2.  Im Trainingsdatensatz nicht vorhandene Terme bei einer Klasse führen
    zu einem Faktor 0 (Zero-Frequency-Problem), wodurch der gesamte
    Score 0 wird. =\> Laplace-Glättung einsetzen!
3.  Im Testdatensatz nicht vorhandene Terme des Vokabulars werden
    automatisch ignoriert, da der *count* 0 ist und als Exponent
    verwendet den neutralen Faktor 1 ergibt.

## Naive Bayes mit Laplace-Glättung (Multinomial NB)

``` math
P(t|c) = \dfrac{\mathop{\text{count}}(t,c) + \alpha}{\sum_{v \in V} \mathop{\text{count}}(v,c) + \alpha \cdot |V|},
\quad \text{ bei Laplace: } \alpha = 1
```

- A-priori-Wahrscheinlichkeit:
  - $`P(\text{OK}) = 3/4 = 0.75`$
  - $`P(\text{SPAM}) = 1/4 = 0.25`$
- Likelihood:
  - $`P(\text{sieben} | \text{OK})`$
    $`= (2+2+2+\mathbf{1})/(2+2+2+1+1+1+1+1+1+1+1+1+\mathbf{7})`$
    $`= 7/22 = 0.318`$ (vorher: 0.40)
  - $`P(\text{sieben} | \text{SPAM})`$
    $`= (2+\mathbf{1})/(2+1+1+1+\mathbf{7})`$ $`= 3/12 = 0.25`$ (vorher:
    0.40)
  - $`P(\text{zwerg} | \text{OK}) = (2+\mathbf{1})/(15+\mathbf{7}) = 0.136`$
    (vorher: 0.133)
  - $`P(\text{zwerg} | \text{SPAM}) = (0+\mathbf{1})/(5+\mathbf{7}) = 0.083`$
    (vorher: **0.00**)
  - $`P(\text{fressen} | \text{OK}) = (2+\mathbf{1})/(15+\mathbf{7}) = 0.136`$
    (vorher: 0.133)
  - $`P(\text{fressen} | \text{SPAM}) = (0+\mathbf{1})/(5+\mathbf{7}) = 0.083`$
    (vorher: **0.00**)
  - $`P(\text{ziege} | \text{OK}) = (1+\mathbf{1})/(15+\mathbf{7}) = 0.091`$
    (vorher: 0.067)
  - $`P(\text{ziege} | \text{SPAM}) = (1+\mathbf{1})/(5+\mathbf{7}) = 0.167`$
    (vorher: 0.20)
  - $`P(\text{treten} | \text{OK}) = (1+\mathbf{1})/(15+\mathbf{7}) = 0.091`$
    (vorher: 0.067)
  - $`P(\text{treten} | \text{SPAM}) = (1+\mathbf{1})/(5+\mathbf{7}) = 0.167`$
    (vorher: 0.20)
  - $`P(\text{wolf} | \text{OK}) = (1+\mathbf{1})/(15+\mathbf{7}) = 0.091`$
    (vorher: 0.067)
  - $`P(\text{wolf} | \text{SPAM}) = (1+\mathbf{1})/(5+\mathbf{7}) = 0.167`$
    (vorher: 0.20)
  - $`P(\text{bock} | \text{OK}) = (2+\mathbf{1})/(15+\mathbf{7}) = 0.136`$
    (vorher: 0.133)
  - $`P(\text{bock} | \text{SPAM}) = (0+\mathbf{1})/(5+\mathbf{7}) = 0.083`$
    (vorher: **0.00**)

T1: (sieben, zwerg, fressen, sieben, wolf)

- **H = OK**:
  $`P(\text{OK}) \cdot P(\text{sieben} | \text{OK})^2 \cdot P(\text{zwerg} | \text{OK})^1 \cdot P(\text{fressen} | \text{OK})^1 \cdot P(\text{ziege} | \text{OK})^0 \cdot P(\text{treten} | \text{OK})^0 \cdot P(\text{wolf} | \text{OK})^1 \cdot P(\text{bock} | \text{OK})^0`$
  $`= 0.75*0.318*0.318*0.136*0.136*1*1*0.091*1 = 0.0001276540836`$
  (vorher: 0.00014221956)

- **H = SPAM**:
  $`P(\text{SPAM}) \cdot P(\text{sieben} | \text{SPAM})^2 \cdot P(\text{zwerg} | \text{SPAM})^1 \cdot P(\text{fressen} | \text{SPAM})^1 \cdot P(\text{ziege} | \text{SPAM})^0 \cdot P(\text{treten} | \text{SPAM})^0 \cdot P(\text{wolf} | \text{SPAM})^1 \cdot P(\text{bock} | \text{SPAM})^0`$
  $`= 0.25*0.25*0.25*0.083*0.083*1*1*0.167*1 = 0,00001797598438`$
  (vorher: **0.00**)

Entscheidung: OK

**Beobachtungen**:

Laplace-Glättung führt zu leicht veränderten Schätzungen, die Berechnung
der Scores erscheint aber plausibler (keine Probleme durch
Zero-Frequency-Terme im Training mehr).

## Naive Bayes mit Out-of-Vocabulary-Termen (OOV, Multinomial NB)

Was passiert, wenn bei der Klassifikation eines Testvektors Wörter
vorkommen, die es beim Training nicht gab?

T1: (sieben, zwerg, fressen, sieben, wolf, **lecker**)

- **H = OK**:
  $`P(\text{OK}) \cdot P(\text{sieben} | \text{OK})^2 \cdot P(\text{zwerg} | \text{OK})^1 \cdot P(\text{fressen} | \text{OK})^1 \cdot P(\text{ziege} | \text{OK})^0 \cdot P(\text{treten} | \text{OK})^0 \cdot P(\text{wolf} | \text{OK})^1 \cdot P(\text{bock} | \text{OK})^0`$
  $`\cdot \mathbf{P(\text{lecker} | \text{OK})^1}`$

- **H = SPAM**:
  $`P(\text{SPAM}) \cdot P(\text{sieben} | \text{SPAM})^2 \cdot P(\text{zwerg} | \text{SPAM})^1 \cdot P(\text{fressen} | \text{SPAM})^1 \cdot P(\text{ziege} | \text{SPAM})^0 \cdot P(\text{treten} | \text{SPAM})^0 \cdot P(\text{wolf} | \text{SPAM})^1 \cdot P(\text{bock} | \text{SPAM})^0`$
  $`\cdot \mathbf{P(\text{lecker} | \text{SPAM})^1}`$

$`\mathbf{P(\text{lecker} | \text{OK})}`$ und
$`\mathbf{P(\text{lecker} | \text{SPAM})}`$ sind **unbekannt**!

**Möglichkeiten**:

1.  Da im Training nicht vorgekommen: 0 als Wert für
    $`P(\text{lecker} | c)`$ annehmen
2.  Term ignorieren
3.  Ad-hoc Laplace einführen
4.  Mit UNK-Term arbeiten im Training/Klassifikation

Wenn wir während der Klassifikation mit einem Term konfrontiert werden,
der beim Training nicht aufgetaucht ist, bekommen wir ein Problem.
Potentiell sind die vier oben dargestellten Möglichkeiten als Lösung
denkbar. Diese haben aber unterschiedliche Auswirkungen:

- Problem bei (1): Sämtliche Scores werden zu 0, d.h. wir können uns
  nicht entscheiden.
- Problem bei (2): Der Term wurde durch die Vorverarbeitung nicht
  entfernt, d.h. er trägt höchstwahrscheinliche eine Bedeutung. Ihn
  einfach zu ignorieren würde bedeuten, dass wir diese Information
  wegwerfen und möglicherweise eine Fehlklassifikation durchführen.
- Problem bei (3): In sämtlichen Likelihoods steckt die Größe des
  Vokabulars drin - wir müssten also während der Klassifikation ad hoc
  alle Likelihoods neu berechnen!
- Variante (4) ist dagegen relativ elegant …

## Naive Bayes mit UNK-Term (OOV, Multinomial NB)

**Training**

Wir führen einen zusätzlichen Termin **UNK** (“unknown”) ein und führen
das Training damit durch.

**Achtung**: Das Vokabular wird dadurch um einen Eintrag größer - alle
Likelihoods müssen entsprechend angepasst werden!

| Klasse | sieben | zwerg | fressen | ziege | treten | wolf | bock | UNK | Anzahl Wörter | Anzahl Dokumente |
|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|
| OK | 6 | 2 | 2 | 1 | 1 | 1 | 2 | 0 | 15 | 3 |
| SPAM | 2 | 0 | 0 | 1 | 1 | 1 | 0 | 0 | 5 | 1 |

- A-priori-Wahrscheinlichkeit:
  - $`P(\text{OK}) = 3/4 = 0.75`$
  - $`P(\text{SPAM}) = 1/4 = 0.25`$
- Likelihood:
  - $`P(\text{sieben} | \text{OK})`$
    $`= (2+2+2+1)/(2+2+2+1+1+1+1+1+1+1+1+1+\mathbf{8})`$
    $`= 7/23 = 0.304`$ (vorher: 0.318)
  - $`P(\text{sieben} | \text{SPAM})`$ $`= (2+1)/(2+1+1+1+\mathbf{8})`$
    $`= 3/13 = 0.231`$ (vorher: 0.25)
  - …
  - $`P(\text{UNK} | \text{OK}) = (0+1)/(15+\mathbf{8}) = 0.043`$
  - $`P(\text{UNK} | \text{SPAM}) = (0+1)/(5+\mathbf{8}) = 0.077`$

**Klassifikation**

Unbekannte Terme werden auf **UNK** gemappt. Dabei für die Exponenten
wieder die Anzahl beachten!

T1: (sieben, zwerg, fressen, sieben, wolf, **lecker**)

- **H = OK**:
  $`P(\text{OK}) \cdot P(\text{sieben} | \text{OK})^2 \cdot P(\text{zwerg} | \text{OK})^1 \cdot P(\text{fressen} | \text{OK})^1 \cdot P(\text{ziege} | \text{OK})^0 \cdot P(\text{treten} | \text{OK})^0 \cdot P(\text{wolf} | \text{OK})^1 \cdot P(\text{bock} | \text{OK})^0`$
  $`\cdot \mathbf{P(\text{lecker} | \text{OK})^1}`$

- **H = SPAM**:
  $`P(\text{SPAM}) \cdot P(\text{sieben} | \text{SPAM})^2 \cdot P(\text{zwerg} | \text{SPAM})^1 \cdot P(\text{fressen} | \text{SPAM})^1 \cdot P(\text{ziege} | \text{SPAM})^0 \cdot P(\text{treten} | \text{SPAM})^0 \cdot P(\text{wolf} | \text{SPAM})^1 \cdot P(\text{bock} | \text{SPAM})^0`$
  $`\cdot \mathbf{P(\text{lecker} | \text{SPAM})^1}`$

**Mapping**:

- $`P(\text{lecker} | \text{OK})`$ =\>
  $`P(\text{UNK} | \text{OK}) = 0.043`$
- $`P(\text{lecker} | \text{SPAM})`$ =\>
  $`P(\text{UNK} | \text{SPAM}) = 0.077`$

Mit dem UNK-Term kann man das Problem des Out-of-Vocabulary elegant
lösen. Im Training berechnet man die Likelihood für diesen Term normal
mit. In der Klassifikation werden Terme in den Daten, die nicht im
Vokabular sind, auf diesen UNK-Term gemappt und dessen Likelihood
entsprechend verwendet.

Erweiterung: Der Bag-of-Words-Ansatz führt sehr schnell zu riesigen
Vektoren, die nur dünn besetzt sind. Um diesem Problem ein wenig
entgegen zu wirken, führt man häufig bereits beim Training eine Schwelle
für die Häufigkeit der Terme der Trainingsmenge ein: Terme, die in ihrer
Häufigkeit über der Schwelle liegen, werden normal für die Schätzung
verwendet. Terme, die in ihrer Häufigkeit unter der Schwelle liegen,
werden auf den UNK-Term abgebildet und dort mitgezählt. Hier macht man
sich das [Zipf’sche Gesetz](https://en.wikipedia.org/wiki/Zipf%27s_law)
zunutze: Wenige Wörter kommen viel häufiger vor als andere, und die
anderen Wörter sind sehr selten - wobei man sich durchaus darüber
streiten kann, ob die seltenen Wörter eher eine Art Rauschen darstellen
oder vielleicht gerade durch ihre Seltenheit mit zur Trennschärfe
beitragen können.

## Naive Bayes Training (Bernoulli NB, mit Laplace)

Bei Bernoulli NB prüfen wir das Vorkommen der einzelnen Terme. Der
Merkmalsraum ist also binär - 0 oder 1.

Im Grunde haben wir hier die selben Varianten wie bei Multinomial NB -
ich zeige hier nachfolgend nur die Kombination von Bernoulli NB und
Laplace-Glättung. Für “ohne” Laplace kann man einfach das $`\alpha = 0`$
setzen. Analog zu der Multinomial NB Variante kann man auch bei
Bernoulli NB mit UNK-Termen arbeiten.

|     | sieben | zwerg | fressen | ziege | treten | wolf | bock | Klasse |
|:----|:-------|:------|:--------|:------|:-------|:-----|:-----|:-------|
| D1  | 1      | 1     | 1       | 1     | 0      | 0    | 0    | OK     |
| D2  | 1      | 0     | 0       | 1     | 1      | 1    | 0    | SPAM   |
| D3  | 1      | 0     | 1       | 0     | 0      | 1    | 1    | OK     |
| D4  | 1      | 1     | 0       | 0     | 1      | 0    | 1    | OK     |

Zusammengefasst ergibt sich damit pro Klasse:

| Klasse | sieben | zwerg | fressen | ziege | treten | wolf | bock | Anzahl Dokumente |
|:-------|:-------|:------|:--------|:------|:-------|:-----|:-----|:-----------------|
| OK     | 3      | 2     | 2       | 1     | 1      | 1    | 2    | 3                |
| SPAM   | 1      | 0     | 0       | 1     | 1      | 1    | 0    | 1                |

Für die Terme ist jeweils die Gesamt-Anzahl der Dokumente mit dem Term
und der jeweiligen Klasse angegeben.

Naive Bayes “trainieren”

- A-priori-Wahrscheinlichkeit der Klassen:
  $`P(c) = \dfrac{N_c}{N} = \dfrac{\text{Anzahl Dokumente in Klasse c}}{\text{Anzahl Dokumente}}`$

- Likelihood der Daten (Terme):

  - $`P(t=1|c) = \dfrac{\text{Anzahl Dokumente in Klasse c mit Term t} + \alpha}{\text{Anzahl Dokumente in Klasse c} + 2 \cdot \alpha}`$
  - $`P(t=0|c) = 1 - P(t=1|c)`$

<!-- -->

- A-priori-Wahrscheinlichkeit:
  - $`P(\text{OK}) = 3/4 = 0.75`$
  - $`P(\text{SPAM}) = 1/4 = 0.25`$
- Likelihood $`\alpha = 1`$:
  - $`P(\text{sieben}=1 | \text{OK}) = (3+1)/(3+2) = 4/5 = 0.80`$
  - $`P(\text{sieben}=1 | \text{SPAM}) = (1+1)/(1+2) = 2/3 = 0.667`$
  - $`P(\text{zwerg}=1 | \text{OK}) = 3/5 = 0.60`$
  - $`P(\text{zwerg}=1 | \text{SPAM}) = 1/3 = 0.333`$
  - $`P(\text{fressen}=1 | \text{OK}) = 3/5 = 0.60`$
  - $`P(\text{fressen}=1 | \text{SPAM}) = 1/3 = 0.333`$
  - $`P(\text{ziege}=1 | \text{OK}) = 2/5 = 0.40`$
  - $`P(\text{ziege}=1 | \text{SPAM}) = 2/3 = 0.667`$
  - $`P(\text{treten}=1 | \text{OK}) = 2/5 = 0.40`$
  - $`P(\text{treten}=1 | \text{SPAM}) = 2/3 = 0.667`$
  - $`P(\text{wolf}=1 | \text{OK}) = 2/5 = 0.40`$
  - $`P(\text{wolf}=1 | \text{SPAM}) = 2/3 = 0.667`$
  - $`P(\text{bock}=1 | \text{OK}) = 3/5 = 0.60`$
  - $`P(\text{bock}=1 | \text{SPAM}) = 1/3 = 0.333`$

Bei Bernoulli NB wird auch explizit die Wahrscheinlichkeit für die
Abwesenheit eines Terms berechnet, dies ist einfach
$`P(t=0|c) = 1 - P(t=1|c)`$. Der Übersichtlichkeit halber ist dies oben
nicht explizit angegeben/ausgerechnet.

## Naive Bayes Klassifikation (Bernoulli NB)

$`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{x \in \mathbf{x}} P(x | h)`$

Für jedes Wort $`w`$ im Vokabular $`V`$ gibt es die Beobachtung
(Bernoulli-Variable) $`lw \in \lbrace 0, 1 \rbrace`$. ($`lw = 1`$ wenn
Wort $`w`$ im Testdokument vorkommt, $`lw=0`$ sonst.)

``` math
h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{w \in \mathbf{V}} P(lw=1 | h)^{lw} \cdot (1 - P(lw=1 | h))^{1-lw}
```

Wenn ein Wort $`w`$ im Testdatensatz vorkommt, wird es mit
$`P(lw=1 | h)`$ berücksichtigt. Sonst mit
$`P(lw=0 | h) = (1 - P(lw=1 | h))`$.

T1: (sieben, zwerg, fressen, sieben, wolf)

- **H = OK**:
  $`P(\text{OK}) \cdot P(\text{sieben}=1 | \text{OK}) \cdot P(\text{zwerg}=1 | \text{OK}) \cdot P(\text{fressen}=1 | \text{OK}) \cdot P(\text{ziege}=0 | \text{OK}) \cdot P(\text{treten}=0 | \text{OK}) \cdot P(\text{wolf}=1 | \text{OK}) \cdot P(\text{bock}=0 | \text{OK})`$
  $`= 0.75*0.80*0.60*0.60*(1-0.40)*(1-0.40)*0.40*(1-0.60) = 0.0124416`$

- **H = SPAM**:
  $`P(\text{SPAM}) \cdot P(\text{sieben}=1 | \text{SPAM}) \cdot P(\text{zwerg}=1 | \text{SPAM}) \cdot P(\text{fressen}=1 | \text{SPAM}) \cdot P(\text{ziege}=0 | \text{SPAM}) \cdot P(\text{treten}=0 | \text{SPAM}) \cdot P(\text{wolf}=1 | \text{SPAM}) \cdot P(\text{bock}=0 | \text{SPAM})`$
  $`= 0.25*0.667*0.333*0.333*(1-0.667)*(1-0.667)*0.667*(1-0.333) = 0.0009122091926`$

Entscheidung: OK

**Beobachtungen**:

1.  Viele kleine Faktoren ergeben ein immer kleineres Produkt =\>
    Logarithmus nutzen und Übergang zu Summe statt Produkt!
2.  Im Trainingsdatensatz nicht vorhandene Terme bei einer Klasse führen
    zu einem Faktor 0 (Zero-Frequency-Problem), wodurch der gesamte
    Score 0 wird. =\> Laplace-Glättung einsetzen!
3.  Im Testdatensatz nicht vorhandene Terme des Vokabulars werden
    automatisch korrekt mit $`P(lw=0 | h)`$ bzw. $`(1 - P(lw=1 | h))`$
    berücksichtigt. (Multinomial NB würde diese Terme mit dem Faktor 1
    ignorieren.)

## Wrap-Up

- **Vorverarbeitung**: Tokenisierung, Vokabular, Bag of Words (BoW)

- **Multinomial NB**:

  - Zähle die Vorkommen eines Terms:
    $`P(t|c) = \dfrac{\mathop{\text{count}}(t,c) + \alpha}{\sum_{v \in V} \mathop{\text{count}}(v,c) + \alpha \cdot |V|}`$

  - Klassifikation mit
    $`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{w \in \mathbf{V}} P(w | h)^{\mathop{\text{count}}(w)}`$

  - Im Test nicht vorhandene Terme t aus V werden ignoriert (Faktor 1)

- **Bernoulli NB**:

  - Prüfe das Vorkommen eines Terms:
    $`P(t=1|c) = \dfrac{\text{Anzahl Dokumente in Klasse c mit Term t} + \alpha}{\text{Anzahl Dokumente in Klasse c} + 2 \cdot \alpha}`$

  - Klassifikation mit
    $`h_{MAP} = \mathop{\text{argmax}}_{h \in H} \: P(h) \prod_{w \in \mathbf{V}} P(lw=1 | h)^{lw} \cdot (1 - P(lw=1 | h))^{1-lw}`$

  - Im Test nicht vorhandene Terme t aus V werden korrekt mit
    $`P(lw=0 | h)`$ berücksichtigt

<!-- -->

- Problem mit kleinen Faktoren: **Logarithmus**, Übergang zu Summe
- **Zero-Frequency-Problem**: Laplace-Glättung mit $`\alpha=1`$
- Klassifikation von **Out-of-Vocabulary-Termen**: UNK-Term trainieren

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
> - k2: Ich kann die verschiedenen Schritte der Vorverarbeitung erklären
> - k2: Ich kann das Bag-of-Words-Modell erklären
> - k3: Ich kann einen Text in das BoW-Modell überführen
> - k3: Ich kann die bedingten Wahrscheinlichkeiten aus konkreten
>   Trainingsdaten schätzen: Multinomial NB, Bernoulli NB, mit/ohne
>   Laplace-Glättung
> - k3: Ich kann die Klassifikation von Testdaten mit Naive Bayes durch
>   Nutzung der geschätzten Wahrscheinlichkeiten durchführen:
>   Multinomial NB, Bernoulli NB
> - k3: Ich kann dem Out-of-Vocabulary-Problem durch das Arbeiten mit
>   UNK-Termen entgegenwirken
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

<blockquote><p><sup><sub><strong>Last modified:</strong> b309587 (lecture: add video (NB3), 2025-10-01)<br></sub></sup></p></blockquote>
