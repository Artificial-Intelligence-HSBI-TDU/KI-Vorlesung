---
author: Carsten Gips (HSBI)
title: "DTL: Random Forest"
---

::: tldr
Ein Random Forest ist ein Ensemble vieler Entscheidungsbäume, die auf zufälligen
Teilmengen der Trainingsdaten und Merkmale trainiert werden. Jeder Baum liefert eine
eigene Vorhersage, und für neue Objekte entsteht die Gesamtvorhersage durch
Mehrheitsentscheidung (Klassifikation) oder Mittelwertbildung (Regression). Durch
das Bootstrapping der Daten und die zufällige Merkmalsauswahl entstehen bewusst
unterschiedliche Bäume, deren Fehler sich teilweise gegenseitig ausgleichen.
Insgesamt reduziert der Random Forest im Vergleich zu einem einzelnen Baum die
Varianz und führt oft zu stabileren und genaueren Vorhersagen, ist aber weniger gut
interpretierbar.
:::

::: youtube
-   [VL Random Forest](https://youtu.be/TODO)
:::

# Vom einzelnen Baum zum Wald

::: notes
-   Entscheidungsbaum:
    -   verständlich, interpretierbar
    -   kann aber "sehr speziell" auf den Trainingsdatensatz passen
    -   kleine Änderungen in den Daten $\to$ oft ganz anderer Baum
:::

\smallskip

-   Idee:
    -   Statt **einem** Baum viele **verschiedene** Bäume trainieren
    -   Jeder Baum trifft eine eigene Vorhersage
    -   Am Ende: **Mehrheitsentscheidung** [(Klassifikation)]{.notes} bzw.
        **Mittelwert** [(Regression)]{.notes}

\bigskip

-   Intuition:
    -   "Viele verschiedene Meinungen" kombinieren $\to$ robustere Entscheidung
    -   Fehler einzelner Bäume können sich gegenseitig ausgleichen

:::: notes
Ein einzelner Entscheidungsbaum ist sehr anfällig dafür, die Trainingsdaten zu
"überlernen" und reagiert empfindlich auf kleine Datenänderungen.

Der Random-Forest-Ansatz sagt: Wir verlassen uns nicht auf einen *einzelnen* Baum,
sondern lassen ein *Gremium* aus mehreren Bäumen abstimmen (*Ensemble*). Jeder Baum
sieht die Daten ein wenig anders und trifft eigene Entscheidungen; am Ende zählt die
Mehrheit (oder der Mittelwert).

::: important
Statt *einem einzigen* **starken** Klassifikator (*strong learner*) mit hoher
Klassifikationsgüte (kleinem Fehler) setzen wir *viele* **schwache** Klassifikatoren
(*weak learner*) (die oft nur wenig genauer als ein Münzwurf sind) als *Ensemble*
ein.
:::
::::

# Wie funktioniert ein Random Forest?

1.  **Datenbasis**: Trainingsdatensatz $D$

\smallskip

2.  **Viele (Teil-) Trainingsdatensätze durch Zufall (Bootstrapping/Bagging)**
    -   Für jeden Baum $B_1, B_2, \dots, B_k$:
        -   Zufälliges Ziehen (mit Zurücklegen) der Trainingsbeispiele aus $D$
            `\newline`{=tex} $\to$ jeder Baum erhält eine leicht andere Stichprobe
            $D_k$

\smallskip

3.  **Zufällige Merkmalsauswahl pro Split (Feature-Subsampling)**
    -   Beim Training eines Baums:
        -   an jedem Knoten nur zufällige Teilmenge der Attribute für den Split
            betrachten
        -   daraus das "beste" Attribut wählen (Entropie)
    -   Alternativ: Anzahl der Splits begrenzen

\smallskip

4.  **Vorhersage**
    -   Klassifikation: Mehrheitsentscheid der Vorhersagen der Bäume
    -   Regression: Mittelwert der Vorhersagen der Bäume

:::: notes
Zwei Arten von Zufall:

1.  Jeder Baum sieht eine andere Zufallsstichprobe der Daten.
2.  Jeder Baum betrachtet an jedem Split nur eine zufällige Auswahl von Merkmalen.

Dadurch entstehen bewusst unterschiedliche Bäume. Wenn wir dann über viele solcher
Bäume abstimmen lassen, ist die Gesamtsicht deutlich stabiler als die eines
einzelnen Baums.

Das Ziehen mit Zurücklegen nennt man in der Literatur auch *bagging* (von "bootstrap
aggregating"). Es gibt auch eine Variante ohne Zurücklegen (d.h. einmal gezogene
Datenvektoren stehen nicht mehr für andere Bäume zur Verfügung), die dann *pasting*
genannt wird.

In vielen Implementierungen von Random Forests wird statt der Entropie auch der
Gini-Index (als Maß für die Unreinheit) genutzt. Für die Grundidee spielt das aber
keine Rolle - es geht immer darum, an jedem Knoten "gute" Splits zu finden.

::: tip
Im klassischen Random Forest nach @breiman2001 werden das Bootstrapping und die
zufällige Merkmalsauswahl pro Split eingesetzt und dann auf den Teildaten normal
trainiert, d.h. die Splits werden wie üblich berechnet. Damit erhält man einzelne,
relativ starke Entscheidungsbäume, die sich durch die zufällige Datenstichprobe und
die zufällige Merkmalsauswahl voneinander unterscheiden. Die gewünschte "Weakness"
im Ensemble entsteht hier nicht durch besonders flache Bäume, sondern durch diese
beiden Zufallskomponenten, die die Bäume diverser machen. Viele Implementierungen
(beispielsweise der `RandomForestClassifier` aus Scikit-Learn) folgen diesem Schema.

Beim verwandten *Boosting* erzeugt man oft "Decision Stumps" bzw. "Stubs", d.h. man
beschränkt die Tiefe des Baumes künstlich und erzeugt Bäume mit nur ein oder zwei
Ebenen. Dadurch geht das Training sehr schnell. Solche flachen Bäume werden
traditionell vor allem im Boosting eingesetzt; in einem Random Forest kann man die
Baumtiefe über Hyperparameter aber ebenfalls begrenzen und so kleinere Bäume
erzwingen. Der `RandomForestClassifier` hat u.a. auch einen Hyperparameter, mit dem
man die Tiefe der Bäume steuern kann.

Bei Entscheidungsbäumen wird das Verfahren "Random Forest" genannt, aber das
generelle Vorgehen (Trainieren von *weak learners* auf Teilen der Daten und
Gruppierung als *Ensemble*) lässt sich auch auf andere ML-Verfahren anwenden.
:::
::::

# Beispiel: Random Forest in Aktion (Klassifikation)

::: notes
Wir betrachten eine einfache binäre Klassifikation mit zwei Merkmalen:

-   Merkmal 1: "Größe" (klein / groß)
-   Merkmal 2: "Farbe" (hell / dunkel)
-   Klassen: "Klasse A" oder "Klasse B"
:::

**Bäume**:

          Größe                    Farbe                      Größe
          /g  \k                   /d  \h                     /g  \k
         A     B                  A     B                  Farbe   B
                                                           /d  \h
                                                          B     A

\smallskip

**Testobjekt**: (Größe = groß, Farbe = hell)

\smallskip

**Vorhersage**:

            A                        B                          A

\bigskip

**Mehrheitsentscheidung**: 2x A, 1x B $\to$ **A**

::: notes
Jeder einzelne Baum kann "falsch liegen" oder stark vereinfacht sein.

Im Beispiel sehen wir, dass Baum 2 sich anders entscheidet als die beiden anderen.

Der Random Forest kombiniert diese unterschiedlichen Sichtweisen sehr einfach: per
Mehrheitsvotum. In der Praxis nutzt man oft Dutzende oder Hunderte Bäume. Die Stärke
kommt also aus der Kombination vieler relativ einfacher Modelle, nicht aus einem
extrem komplexen Einzelbaum.
:::

# Pseudocode: Random Forest

**Training:**

    Input: Trainingsdaten D, Anzahl Bäume K,
           Anzahl Zufallsattribute pro Split m

    For k = 1 .. K:
        Ziehe Zufallsstichprobe D_k aus D (mit Zurücklegen)   // bagging
        Trainiere Entscheidungsbaum T_k auf D_k:
            An jedem Knoten:
                Wähle zufällig m Attribute aus allen Attributen
                Finde unter diesen m Attributen den besten Split (Entropie)
    Output: Ensemble {T_1, T_2, ..., T_K}

\bigskip

**Vorhersage für ein neues Objekt $x$:**

-   Klassifikation:
    $\hat{y}_{\text{class}}(x) = \mathop{\text{argmax}}_{c \in C} \sum_{k=1}^{K} \mathbf{1}\big[ T_k(x) = c \big]$

-   Regression: $\hat{y}_{\text{reg}}(x) = \frac{1}{K} \sum_{k=1}^{K} T_k(x)$

:::: notes
Wichtig ist: Keine Änderungen am Baum-Algorithmus selbst (z.B. C4.5/ID3). Die
"Magie" kommt aus den zwei Zufallsquellen: zufällige Datenstichproben und zufällige
Attributauswahl.

Bei der Klassifikation erhält man die **Klassenwahrscheinlichkeiten**, indem man die
Häufigkeiten der Klassen über alle Bäume ermittelt:

$$
p(C = c \mid x) \approx \frac{1}{K} \sum_{k=1}^{K} \mathbf{1}\big[ T_k(x) = c \big]
$$

Dabei ist $\mathbf{1}(A)$ wieder die Indikatorfunktion:

$$
\mathbf{1}[A] =
\begin{cases}
1, & \text{wenn } A \text{ wahr ist} \\
0, & \text{sonst}
\end{cases}
$$

::: tip
Typische Hyperparameter (z.B. bei Scikit-Learn mit `RandomForestClassifier`):

-   Anzahl der Bäume $K$
-   Anzahl der zufälligen Attribute pro Split $m$ (etwa $\sqrt{d}$ bei $d$
    Gesamtattributen)
-   Maximale Tiefe oder Blattanzahl pro Baum
:::
::::

::: notes
# Bias und Varianz und Grenzen von Entscheidungsbäumen / Random Forest

-   **Bias** (Verzerrung): Fehler, der dadurch entsteht, dass das Modell zu
    *einfach* ist und die wahren Zusammenhänge systematisch nicht trifft.

    Beispiel: Ein sehr flacher Baum (oder nur ein Stub) kann nur sehr grobe Regeln
    ausdrücken. Das führt zu vielen systematischen Fehlentscheidungen bzw. einem
    hohen Bias. Dafür ist der Baum stabiler gegenüber Datenänderungen.

-   **Varianz**: Empfindlichkeit gegenüber Zufallsschwankungen in den
    Trainingsdaten.

    Beispiel: Ein sehr tiefer Baum kann die Trainingsdaten nahezu perfekt erklären,
    d.h. hier sprechen wir von "auswendig lernen" (Overfitting). Bereits kleine
    Änderungen im Datensatz (ein paar Punkte dazu/weg) können dann zu einem ganz
    anderen Baum führen (hohe Varianz).

Entscheidungsbäume zeigen typischerweise:

-   Tiefer Baum: niedriger Bias, hohe Varianz (Overfitting-Risiko, instabil bei
    Datenänderungen)
-   Flacher Baum: höherer Bias, geringere Varianz (stark vereinfachtes Modell der
    Daten, kann wichtige Muster verpassen)

Ein Random Forest hält den (relativ) niedrigen Bias tiefer Bäume, reduziert aber die
Varianz, indem viele leicht unterschiedliche Bäume konstruiert und über einen
Mehrheitsentscheid kombiniert werden. Beim Einsatz von Stubs nutzt man Bäume mit
eher hohem Bias und gleichzeitig reduzierter Varianz.

**Grenzen**

-   Interpretierbarkeit
    -   Ein einzelner Baum ist leicht zu visualisieren und zu erklären
    -   Ein Random Forest mit 100 oder mehr Bäumen ist für Menschen praktisch nicht
        mehr "durchschaubar"
-   Datenarten
    -   Für tabellarische, strukturierte Daten sind Entscheidungsbäume und Random
        Forests sehr gut geeignet
    -   Für extrem hochdimensionale Eingaben (z.B. Text, Bilder) sind spezialisierte
        Modelle (lineare Modelle mit guter Regularisierung, CNNs, Transformer usw.)
        oft im Vorteil
-   Ressourcen
    -   Viele und tiefe Bäume lassen Speicherbedarf und Rechenzeit (Training,
        "Inferenz") steigen
    -   Praxis: Kompromiss durch Einsatz von Stubs (extrem flachen Bäumen)
:::

# Wrap-Up

-   **Random Forest**:
    -   Kombiniert viele (kleine) Entscheidungsbäume
    -   Training auf zufälligen Teilmengen der Daten und Merkmalen (Bagging +
        Feature-Subsampling)

\smallskip

-   Gesamtvorhersage: **Mehrheitsvotum** der Bäume [bei Klassifikation]{.notes} bzw.
    Mittelwertbildung [bei Regression]{.notes}

\smallskip

-   Ensemble **reduziert** [im Vergleich zu einem einzelnen Entscheidungsbaum
    die]{.notes} **Varianz** [und wird damit robuster gegenüber Rauschen und kleinen
    Datenänderungen]{.notes}

\bigskip

-   Wichtige Hyperparameter:
    -   Anzahl der Bäume
    -   Anzahl der Merkmale pro Split
    -   Maximale Baumtiefe

::: readings
Lesen Sie zu Random Forest im Kapitel 7 "Ensemble Learning and Random Forests" im
@Geron2023 nach.

Die Original-Arbeit zu "Random Forest" ist [@breiman2001].
:::

::: outcomes
-   k1: Ich kann kann den Begriff "Random Forest" definieren und die beiden
    zentralen Zufallskomponenten (Bootstrapping der Daten und zufällige
    Merkmalsauswahl pro Split) an einem selbst gewählten Beispiel benennen.
-   k2: Ich kann erklären, warum ein Ensemble aus vielen Entscheidungsbäumen im
    Random Forest typischerweise stabilere Vorhersagen liefert als ein einzelner
    Entscheidungsbaum, und dies an einem einfachen Beispieldatensatz erläutern.
-   k3: Ich kann für einen gegebenen kleinen Datensatz skizzieren, wie
    unterschiedliche Bootstrap‑Stichproben zu verschiedenen Bäumen führen und wie
    daraus per Mehrheitsentscheidung eine Random‑Forest‑Vorhersage entsteht.
-   k4: Ich kann die wichtigsten Hyperparameter eines Random Forest (z.B. Anzahl der
    Bäume, maximale Tiefe, Anzahl Merkmale pro Split) benennen und qualitativ
    erklären, wie sich deren Variation auf Overfitting, Rechenaufwand und
    Vorhersagegüte auswirkt.
:::

::: challenges
**Mini-Beispiel**

| Beispiel | Wetter     | Laune    | Joggen? |
|----------|------------|----------|---------|
| 1        | sonnig     | gut      | ja      |
| 2        | sonnig     | schlecht | nein    |
| 3        | regnerisch | gut      | nein    |
| 4        | regnerisch | schlecht | nein    |

Wir trainieren 3 Entscheidungsbäume (jeweils **nur ein Split**, also Stubs) mit
**Bootstrap-Stichproben** aus diesen 4 Beispielen. Als Kriterium nehmen wir (wie bei
ID3) die Maximierung des **Informationsgewinns** (Entropie).

-   Baum 1: Beispiele 1, 2, 3
-   Baum 2: Beispiele 1, 1, 4
-   Baum 3: Beispiele 2, 3, 4

Vorhersage für ein neues Objekt:

-   Wetter = sonnig
-   Laune = gut

<!--
**Baum 1** -- Trainingsstichprobe $D_1$

Angenommen, wir ziehen (mit Zurücklegen) folgende Beispiele: 1, 2, 3.

Häufigkeiten:

-   Wetter:
    -   sonnig: Beispiele 1, 2 (Labels: ja, nein → gemischt)
    -   regnerisch: Beispiel 3 (Label: nein → homogen)
-   Laune:
    -   gut: Beispiele 1, 3 (Labels: ja, nein → gemischt)
    -   schlecht: Beispiel 2 (Label: nein → homogen)

Beide Attribute haben hier einen ähnlichen Informationsgewinn (jeweils eine homogene
und eine gemischte Gruppe). Wir entscheiden uns beispielhaft für den Split nach
**Wetter**:

Baum 1:

-   Wurzelknoten: Attribut **Wetter**
-   Kante "sonnig":
    -   Trainingsbeispiele: 1 (ja), 2 (nein)
    -   Mehrheit (z.B. über eine feste Tie-Break-Regel): **nein**
    -   Blatt: $C = \text{nein}$
-   Kante "regnerisch":
    -   Trainingsbeispiel: 3 (nein)
    -   homogen
    -   Blatt: $C = \text{nein}$

**Kurzform Baum 1:**

-   Wenn Wetter = sonnig → $C = \text{nein}$
-   Wenn Wetter = regnerisch → $C = \text{nein}$




**Baum 2** -- Trainingsstichprobe $D_2$

Angenommen, wir ziehen: 1, 1, 4.

Häufigkeiten:

-   Wetter:
    -   sonnig: Beispiele 1, 1 (beide ja → homogen)
    -   regnerisch: Beispiel 4 (nein → homogen)
-   Laune:
    -   gut: Beispiele 1, 1 (beide ja → homogen)
    -   schlecht: Beispiel 4 (nein → homogen)

Beide Attribute trennen **perfekt**, wir wählen hier z. B. **Laune**:

Baum 2:

-   Wurzelknoten: Attribut **Laune**
-   Kante "gut":
    -   Beispiele: 1, 1 (ja)
    -   Blatt: $C = \text{ja}$
-   Kante "schlecht":
    -   Beispiel: 4 (nein)
    -   Blatt: $C = \text{nein}$

**Kurzform Baum 2:**

-   Wenn Laune = gut → $C = \text{ja}$
-   Wenn Laune = schlecht → $C = \text{nein}$




**Baum 3** -- Trainingsstichprobe $D_3$

Angenommen, wir ziehen: 2, 3, 4.

Häufigkeiten:

-   Wetter:
    -   sonnig: Beispiel 2 (nein → homogen)
    -   regnerisch: Beispiele 3, 4 (beide nein → homogen)
-   Laune:
    -   gut: Beispiel 3 (nein → homogen)
    -   schlecht: Beispiele 2, 4 (beide nein → homogen)

Hier ist alles homogen (alle Labels "nein"). Egal welches Attribut wir wählen: alle
Blätter sind "nein".

ID3 würde hier als Baum direkt die Klasse zurückliefern.

Baum 3:

-   Wurzelknoten: $C = \text{nein}$




**Vorhersage für ein neues Objekt**

Neues Objekt:

-   Wetter = sonnig
-   Laune = gut

**Vorhersagen der einzelnen Bäume:**

-   Baum 1:
    -   Wetter = sonnig → $C = \text{nein}$
-   Baum 2:
    -   Laune = gut → $C = \text{ja}$
-   Baum 3:
    -   Wetter = sonnig → $C = \text{nein}$

**Mehrheitsentscheidung im Random Forest:**

-   2× "nein" (Baum 1, Baum 3)
-   1× "ja" (Baum 2)

$C(\text{Wetter = sonnig}, \text{Laune = gut})=\text{nein}$

In diesem Beispiel sieht man:

-   Jeder Baum basiert auf einer **anderen** Bootstrap-Stichprobe der Daten.
-   Manche Bäume sind sich "sicher" (alle Beispiele in einem Blatt gleich), andere
    haben Konflikte und nutzen z.B. eine Mehrheitsentscheidung im Blatt.
-   Der Random Forest kombiniert diese unterschiedlichen Sichtweisen durch
    **Mehrheitsvotum**.
-   Schon mit 3 sehr einfachen Bäumen kann die Entscheidung robuster sein als mit
    nur einem einzelnen Baum, der vielleicht aus einer unglücklichen Stichprobe
    gelernt hat.
-->
:::
