# NN05: Multilayer Perzeptron

> [!TIP]
>
> <details>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [NN5.1 - MLP Forward Propagation](https://youtu.be/7ltwa5WWuKI)
>
> </details>

> [!NOTE]
>
> <details>
>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> - [NN05-MLP.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN05-MLP.pdf)
>
> </details>

## Kurze Übersicht

### Multilayer Perzeptron (MLP)

- Das Perzeptron kann nur linear separable Daten korrekt klassifizieren.
- Durch das Zusammenschließen von mehreren Perzeptronen kann man ein
  mehrschichtiges Perzeptron (engl. Multilayer Perceptron) aufstellen,
  das komplexere Funktionen modellieren kann.
- Ein MLP wird oft auch als **Feed Forward Neural Network** oder als
  **Fully Connected Neural Network** bezeichnet.
- Die “inneren” Schichten eines solchen Netzwerkes sind sogenannte
  **versteckte Schichten** (engl. hidden layer). Das sind alle Schichten
  ausgenommen die Eingangs- und Ausgangsschicht.

### Graphische Übersicht und Vorwärtslauf

- Ein Multi-Layer Perzeptron

  <img src="images/mlp.png" width="65%">

  Ein Vorwärtslauf (forward pass):

``` math
a^{[1]} = ReLU \left( W^{[1]} \cdot \mathbb{x} + b^{[1]} \right) \tag{1}
```

``` math
\hat{y} := a^{[2]} = \sigma \left( W^{[2]} \cdot a^{[1]} + b^{[2]} \right) \tag{2}
```

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Ich kann das Multi-Layer Perzeptron (MLP) erläutern und dabei
>   auf die graphische Darstellung eingehen und den Vorwärtslauf
>   erklären
> - k2: Ich kann verschiedene Aktivierungsfunktionen (insbesondere ReLU)
>   erklären
> - k3: Ich kann den Vorwärtslauf (forward pass) für ein gegebenes MLP
>   anwenden
> - k3: Ich kann die Berechnung der einzelnen Aktivierungen durchführen
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Multilayer Perzeptron
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106592&client_id=FH-Bielefeld)
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🏅 Challenges</strong></summary>
>
> **Lineares MLP**
>
> Gegeben sei ein MLP mit linearen Aktivierungsfunktionen, d.h. für
> jedes Neuron berechnet sich der Output durch die gewichtete Summe der
> Inputs: $`y = g(w^T x)`$, wobei $`g(z) = z`$ gilt, also $`y = w^T x`$.
> Zeigen Sie, dass dieses Netz durch eine einzige Schicht mit linearen
> Neuronen ersetzt werden kann.
>
> Betrachten Sie dazu ein zwei-schichtiges Netz (i.e. bestehend aus
> Eingabe-Schicht, Ausgabe-Schicht und einer versteckten Schicht) und
> schreiben Sie die Gleichung auf, die die Ausgabe als Funktion der
> Eingabe darstellt.
>
> Als Beispiel sei das zwei-schichtige MLP mit den folgenden Gewichten
> und Bias-Werten gegeben:
>
> Schicht 1: $`W_1 = [[2, 2],[3, -2]]`$, $`b_1 = [[1],[-1]]`$
>
> Schicht 2: $`W_2 = [[-2, 2]]`$, $`b_2 = [[-1]]`$
>
> - Stellen Sie dieses Netzwerk graphisch dar. Was ist die Anzahl der
>   Zellen in den einzelnen Schichten?
> - Berechnen Sie die Ausgabe für eine Beispiel-Eingabe Ihrer Wahl.
> - Stellen Sie ein ein-schichtiges Netz auf, das für jede Eingabe die
>   gleiche Ausgabe wie das obige Netzwerk berechnet und es somit
>   ersetzen könnte.
>
> </details>

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 9a4d8be (lecture: add 'NN' to title (NN), 2025-08-29)<br></sub></sup></p></blockquote>
