# NN01: Das Perzeptron

> [!TIP]
>
> <details>
>
> <summary><strong>🎦 Videos</strong></summary>
>
> - [NN1.1 - Einführung](https://youtu.be/IJdiwITTC9Y)
> - [NN1.2 - Fallstudie und
>   Formalisierung](https://youtu.be/oWcvFyLgqYc)
> - [NN1.3 - Das Perzeptron Modell](https://youtu.be/ZvWpI0Doocc)
> - [NN1.4 - Perzeptron Beispiel](https://youtu.be/8Rdw2NBCCJk)
> - [NN1.5 - Der Perzeptron
>   Lernalgorithmus](https://youtu.be/JD8Qsg8_kQI)
>
> </details>

> [!NOTE]
>
> <details>
>
> <summary><strong>🖇 Weitere Unterlagen</strong></summary>
>
> - [NN01-Das_Perzeptron.pdf](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/nn/files/NN01-Das_Perzeptron.pdf)
>
> </details>

## Kurze Übersicht

### Definition “Maschinelles Lernen”

Fähigkeit zu lernen, ohne explizit programmiert zu werden. (Arthur
Samuel, 1959)

### Arten des Lernens

- Überwachtes Lernen (e.g. Klassifizierung, Regression)
- Unüberwachtes Lernen (e.g. Clustering, Dimensionsreduktion)
- Bestärkendes Lernen (e.g. Schach spielen)

### Formalisierung

- Zielfunktion $`f`$
- Merkmalraum (input space)
- Ausgaberaum (output space)
- Datensatz $`\mathcal{D}`$
- Hypothesenmenge $`\mathcal{H}`$
- Lernalgorithmus $`\mathcal{A}`$

### Das Perzeptron

Ein einfaches Modell für die **binäre Klassifizierung**

- Bilde gewichtete Summe (Linearkombination) der Merkmale
- Vergleiche das Ergebnis mit einem Schwellenwert
  - Positiv, falls über dem Schwellenwert
  - Negativ, falls unter dem Schwellenwert
- Gewichte und Schwellenwert sind unbekannte Parameter des Modells, die
  es zu lernen gilt \> siehe **Perzeptron Lernalgorithmus**

> [!NOTE]
>
> <details>
>
> <summary><strong>✅ Lernziele</strong></summary>
>
> - k2: Ich kann verschiedene Arten des maschinellen Lernens erklären
> - k2: Ich kann die Formalisierung eines ML-Problems, insbesondere der
>   Klassifizierung erklären und dabei insbesondere die Begriffe
>   Datensatz, Merkmalraum, Hyphotesenfunktion und Zielfunktion an einem
>   Beispiel erläutern
> - k2: Ich kann das Perzeptron als linearen Klassifizierer verstehen
>   und erklären
> - k2: Ich kann den Begriff der Entscheidungsgrenze erklären
> - k3: Ich kann die Entscheidungsgrenze für ein konkretes Beispiel
>   berechnen
> - k3: Ich kann den Perzeptron Lernalgorithmus implementieren und
>   anwenden
>
> </details>

> [!TIP]
>
> <details>
>
> <summary><strong>🧩 Quizzes</strong></summary>
>
> - [Selbsttest Intro ML
>   (ILIAS)](https://www.hsbi.de/elearning/goto.php?target=tst_1106589&client_id=FH-Bielefeld)
>
> </details>

------------------------------------------------------------------------

<img src="https://licensebuttons.net/l/by-sa/4.0/88x31.png" width="10%">

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.

<blockquote><p><sup><sub><strong>Last modified:</strong> 9a4d8be (lecture: add NN to title (NN), 2025-08-29)<br></sub></sup></p></blockquote>
