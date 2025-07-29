# NN06 - Backpropagation

> [!NOTE]
>
> <details>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [NN6.1 - MLP Backpropagation 1](https://youtu.be/G9x75THjueQ)
> - [NN6.2 - MLP Backpropagation 2](https://youtu.be/9Ku0dJ8pGrU)
> - [NN6.3 - MLP Zusammenfassung](https://youtu.be/uvT4WPIIkwQ)
>
> </details>
>
> <details>
>
> <summary><strong>🖇 Unterlagen</strong></summary>
>
> - [NN06-MLP_Backpropagation.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN06-MLP_Backpropagation.pdf)
> - [NN06.2-MLP_Backpropagation_Beispiel.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN06.2-MLP_Backpropagation_Beispiel.pdf)
>
> </details>

## Kurze Übersicht

### Forwärts- und Rückwärtslauf

- Im Forwärtslauf (engl. forward pass oder forward propagation) wird ein
  einzelner **Forwärtsschritt** von Schicht $`[l-1]`$ auf Schicht
  $`[l]`$ wie folgt berechnet: Dabei bezeichnet $`g`$ die
  Aktivierungsfunktion (z.B. Sigmoid oder ReLU).

``` math
Z^{[l]} = W^{[l]}A^{[l-1]} + b^{[l]} \tag{1}
```

``` math
A^{[l]} = g(Z^{[l]}) \tag{2}
```

- Im Rückwärtslauf (engl. *backpropagation*) werden in einem einzelnen
  **Rückwärtsschritt** von Schicht $`[l]`$ auf Schicht $`[l-1]`$ die
  folgenden Gradienten berechnet:

  Dabei steht “$`*`$” für die elementweise Multiplikation.

``` math
dZ^{[l]} := \frac{\partial J }{\partial Z^{[l]}} = dA^{[l]} * g'(Z^{[l]}) \tag{3}
```

``` math
dW^{[l]} := \frac{\partial J }{\partial W^{[l]}} = \frac{1}{m} dZ^{[l]} A^{[l-1] T} \tag{4}
```

``` math
db^{[l]} := \frac{\partial J }{\partial b^{[l]}} = \frac{1}{m} \sum_{i = 1}^{m} dZ^{[l](i)}\tag{5}
```

``` math
dA^{[l-1]} := \frac{\partial J }{\partial A^{[l-1]}} = W^{[l] T} dZ^{[l]} \tag{6}
```

- Beachten Sie:

  - Der Forwärtsschirtt übernimmt $`A^{[l-1]}`$ von dem vorherigen
    Schritt und gibt $`A^{[l]}`$ an den nächsten Schritt weiter.
  - Der Rückwärtschritt übernimmt $`dA^{[l]}`$ von dem vorherigen
    Schritt und gibt $`dA^{[l-1]}`$ an den nächsten Rückwärtsschritt
    weiter.

### Parameteraktualisierung

- Die Aktualisierung der Parameter in Schicht $`l`$ erfolgt wie gewohnt
  durch: Dabei bezeichnet $`\alpha`$ die Lernrate.

``` math
W^{[l]} = W^{[l]} - \alpha \text{ } dW^{[l]} \tag{7}
```

``` math
b^{[l]} = b^{[l]} - \alpha \text{ } db^{[l]} \tag{8}
```

------------------------------------------------------------------------

> [!TIP]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Forwärts- und Rückwärtslauf in Matrix Notation mit mehreren Datenpunkten als Eingabe
> - k2: Ableitung der Aktivierungsfunktionen
> - k3: Berechnung der partiellen Ableitungen
> - k3: Rückwärtslauf (backpropagation) für ein gegebenes MLP
>
> </details>
>
> <details>
>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Backpropagation
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106593&client_id=FH-Bielefeld)
>
> </details>

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 969421b (lecture: do not emit beamer slides for nn lectures at this time, 2025-07-17)<br></sub></sup></p></blockquote>
