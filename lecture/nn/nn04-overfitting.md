# NN04 - Overfitting und Regularisierung

> [!NOTE]
> <details>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [NN4.1 - Nichtlineare Modelle](https://youtu.be/KJLT-h_ChRo)
> - [NN4.2 - Overfitting und
>   Regularisierung](https://youtu.be/BW91MYPUH_k)
>
> </details>
> <details>
> <summary><strong>🖇 Unterlagen</strong></summary>
>
> - [NN04-Nichtlineare_Modelle_und_Overfitting.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN04-Nichtlineare_Modelle_und_Overfitting.pdf)
>
> </details>

## Kurze Übersicht

### Nichtlineare Modelle

- Einführung von neuen Merkmalen in Form von nichtlienaren Kombinationen
  der ursprünglichen Merkmale
- Erhöhung der Komplexität des Modells ermöglicht das Erfassen von
  nichtlinearen Beziehungen
- **Bemerkung**: Die Hypothesenfunktion bleibt linear in den Gewichten,
  es wird weiterhin logistische Regression in einem **erweiterten**
  Merkmalraum durchgeführt.

### Überanpassung und Regularisierung

- Die **Überanpassung** (engl. Overfitting) ist eines der häufigsten und
  wichtigsten Probleme in ML und DL
- "Was im Bereich des maschinellen Lernens Professionelle von Amateuren
  unterscheidet, ist ihre Fähigkeit mit Überanpassung umzugehen."
  ([Abu-Mostafa, Magdon-Ismail, und Lin 2012, 119](#ref-AbuMostafa2012))
- Anzeichen von Überanpassung sind geringe Trainingskosten und hohe
  **Testkosten** (Kosten auf nicht-gesehenen Daten).
- Regularisierung ist eine Maßnahme gegen Überanpassung. Man kann es
  sich als eine Reduktion in der Komplexität des Modells vorstellen.
- Der Regularisierungsparameter $\lambda$ ist ein Hyperparameter. Je
  größer der $\lambda$-Wert, desto größer der Regularisierungseffekt.
- Die **Kostentenfunktion** bei regulariserter logistischer Regression:
  $$J = \frac{1}{m} \left\lbrack \sum_{i=1}^m \left( -y^{[i]}log(a^{[i]})-(1-y^{[i]})log(1-a^{[i]}) \right) + \frac{\lambda}{2} \sum_{j=1}^n (w^2_j)  \right\rbrack \tag{1}$$
- Die **Gewichtsaktualisierung** mit Regularisierungsterm:
  $$w_j := w_j - \frac{\alpha}{m} \left\lbrack \sum_{i=1}^m \left( ( a^{[i]} - y^{[i]} )x_j^{[i]} \right) + \lambda w_j  \right\rbrack \tag{2}$$

## 📖 Zum Nachlesen

- Abu-Mostafa, Magdon-Ismail, und Lin ([2012](#ref-AbuMostafa2012)):
  Kapitel 4

------------------------------------------------------------------------

> [!TIP]
> <details>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Erhöhung der Modell-Komplexität durch Einführung von Merkmalen höherer Ordnung
> - k2: Unter- und Überanpassung
> - k2: Regularisierung (Auswirkung auf Gewichte und Modell)
> - k3: Gradientenabstieg für regularisierte logistische Regression
>
> </details>
> <details>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Overfitting
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106595&client_id=FH-Bielefeld)
>
> </details>

------------------------------------------------------------------------

> [!NOTE]
> <details>
> <summary><strong>👀 Quellen</strong></summary>
>
> <div id="refs" class="references csl-bib-body hanging-indent"
> entry-spacing="0">
>
> <div id="ref-AbuMostafa2012" class="csl-entry">
>
> Abu-Mostafa, Y. S., M. Magdon-Ismail, und H. Lin. 2012. *Learning From
> Data*. AMLBook. <https://work.caltech.edu/telecourse>.
>
> </div>
>
> </div>
>
> </details>

------------------------------------------------------------------------

<div style="width:10%;">

![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

</div>

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 2fdb622 (lecture: fix minor formatting issues, 2025-07-17)<br></sub></sup></p></blockquote>
