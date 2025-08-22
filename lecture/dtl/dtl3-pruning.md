# Pruning

> [!IMPORTANT]
>
> <details open>
>
> <summary><strong>🎯 TL;DR</strong></summary>
>
> Pruning ist das Entfernen redundanter und irrelevanter Tests
> (Merkmale).
>
> Irrelevante Merkmale spielen keine Rolle bei der Klassifikation, an
> jedem Ausgang eines irrelevanten Merkmals findet sich exakt der selbe
> Baum. Diese Tests kann man einfach entfernen und durch einen ihrer
> Teilbäume ersetzen; dadurch ändert sich nicht die Klassifikation des
> Baumes.
>
> Bei redundanten Tests sind alle Ausgänge bis auf einen noch mit
> “Nichtwissen” (“\*”) markiert. Hier kann man den Test durch den einen
> bekannten Ausgang ersetzen, wodurch sich die Klassifikation ändert.
> Allerdings wird der Klassifikationsfehler nicht größer, da man ja
> vorher nur für eine Ausprägung des redundanten Merkmals einen Baum
> hatte und für die anderen jeweils mit “\*” antworten musste (d.h. hier
> stets einen Fehler gemacht hatte).
>
> Über die Transformationsregel kann man einfach die Reihenfolge von
> Tests im Baum ändern.
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [VL Pruning](https://youtu.be/LKt9F2kGYdk)
>
> </details>

## Pruning: Bedingt irrelevante Attribute

**Baum**: $`\alpha = x_1(x_2(A, B),  x_2(A, B),  x_2(A, B))`$

$`x_1`$ ist bedingt irrelevant =\> Vereinfachung: $`\alpha = x_2(A, B)`$

**Allgemein**:

- Sei $`\tilde{x}`$ Weg zu Nichtendknoten $`x_t`$
- Baum dort $`\alpha/\tilde{x} = x_t(\alpha_1, \ldots, \alpha_{m_t})`$
- $`x_t`$ ist **bedingt irrelevant** unter der Bedingung $`\tilde{x}`$,
  wenn $`\alpha_1 = \alpha_2 = \ldots = \alpha_{m_t}`$
- **Vereinfachung**: Ersetze in $`\alpha/\tilde{x}`$ den Test $`x_t`$
  durch $`\alpha_1`$

*Anmerkung*: Der durch das Entfernen von bedingt irrelevanten Attributen
entstandene Baum hat **exakt** die selbe Aussage (Klassifikation) wie
der Baum vor dem Pruning.

**Anmerkung**: $`x_1`$ im obigen Beispiel ist sogar **global**
irrelevant, da es sich hier um die Wurzel des Baumes handelt. Der Weg
$`\tilde{x}`$ ist in diesem Fall der leere Weg …

## Pruning: Bedingt redundante Attribute

**Baum**: $`\alpha = x_1(\ast,  \ast,  x_2(A, B))`$

$`x_1`$ ist bedingt redundant =\> Vereinfachung: $`\alpha = x_2(A, B)`$

**Allgemein**:

- Sei $`\tilde{x}`$ Weg zu Nichtendknoten $`x_t`$
- Baum dort
  $`\alpha/\tilde{x} = x_t(\ast, \ldots, \ast, \alpha_i, \ast, \ldots, \ast)`$
  (mit $`\alpha_i \neq \ast`$)
- $`x_t`$ ist **bedingt redundant** unter der Bedingung $`\tilde{x}`$
- **Vereinfachung**: Ersetze in $`\alpha/\tilde{x}`$ den Test $`x_t`$
  durch $`\alpha_i`$

*Anmerkung*: Der durch das Entfernen von bedingt redundanten Attributen
entstandene Baum hat eine etwas andere Klassifikation als der Baum vor
dem Pruning. Wo vorher ein `*` ausgegeben wurde, wird nach dem Pruning
u.U. ein Klassensymbol ausgegeben. Der Klassifikationsfehler erhöht sich
aber **nicht**, da hier ein `*` wie ein falsches Klassensymbol zu werten
ist.

**Anmerkung**: $`x_1`$ im obigen Beispiel ist sogar **global**
redundant, da es sich hier um die Wurzel des Baumes handelt. Der Weg
$`\tilde{x}`$ ist in diesem Fall der leere Weg …

## Allgemeine Transformationsregel

``` math
x_1(x_2(a, b),  x_2(c, d))  \Leftrightarrow  x_2(x_1(a, c),  x_1(b, d))
```

## Wrap-Up

- Pruning: Entfernen bedingt redundanter und irrelevanter Tests
- Transformationsregel zum Umbauen von Entscheidungsbäumen

## 📖 Zum Nachlesen

- Ertel ([2017](#ref-Ertel2017)): Entscheidungsbäume: Abschnitt 8.4
- Russell und Norvig ([2020](#ref-Russell2020)): Entscheidungsbäume:
  Abschnitt 19.3

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k3: Ich kann Pruning anwenden und bedingt irrelevante Tests
>   entfernen
> - k3: Ich kann Pruning anwenden und bedingt redundante Tests entfernen
> - k3: Ich kann Entscheidungsbäume mit Hilfe der Transformationsregel
>   umformen
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Pruning
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106577&client_id=FH-Bielefeld)
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
> <div id="ref-Ertel2017" class="csl-entry">
>
> Ertel, W. 2017. *Introduction to Artificial Intelligence*. 2nd
> edition. Springer. <https://doi.org/10.1007/978-3-319-58487-4>.
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

<blockquote><p><sup><sub><strong>Last modified:</strong> b5983e1 (lecture: rework outcomes (DTL3), 2025-08-18)<br></sub></sup></p></blockquote>
