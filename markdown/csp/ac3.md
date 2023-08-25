---
archetype: lecture-cg
title: "Kantenkonsistenz und AC-3"
menuTitle: "AC-3"
author: "Carsten Gips (HSBI)"
weight: 4
readings:
  - key: "Russell2020"
    comment: "CSP, AC-3: Abschnitt 5.2"
  - key: "Kumar1992"
  - key: "Bartak2001"
tldr: |
  Bei der Backtracking-Suche werden schrittweise Variablen belegt. Dabei kann eine Belegung eine Lösung
  im weiteren Verlauf der Suche unmöglich machen, so dass (viel) Backtracking notwendig wird.

  Beim **Forward Checking** entfernt man nach der Belegung einer Variablen in allen Nachbarvariablen
  die durch die aktuelle Belegung inkonsistent gewordenen Werte. Wenn dabei ein Wertebereich leer wird,
  führt die aktuelle Belegung nicht zu einer Lösung und kann sofort zurückgenommen werden. Allerdings
  findet man mit Forward Checking nicht alle Inkonsistenzen.

  Bei der **Kantenkonsistenz** prüft man, ob zu jedem Wert aus dem Wertebereich einer Variablen in den
  Nachbarvariablen mindestens ein passender (konsistenter) Wert existiert. Dabei werden die Constraints
  nacheinander betrachtet (nicht gleichzeitig). Wenn dies nicht der Fall ist, wird der Wert aus dem
  Wertebereich der betrachteten Variablen entfernt. Der AC-3-Algorithmus erzeugt schrittweise Kantenkonsistenz
  für ein CSP.

  Man kann den AC-3 als Vorverarbeitung nutzen und die Wertemengen *vor* der BT-Suche reduzieren. Eventuell
  findet man dabei bereits eine Lösung oder kann eine Lösung ausschließen. Man kann den AC-3 auch als
  Inferenzschritt in die BT-Suche einbetten ("MAC").
outcomes:
  - k2: "Forward Checking (*FC*)"
  - k2: "Erweiterung von *FC* auf alle Kanten: *Kantenkonsistenz*"
  - k2: "Kantenkonsistenz bedeutet nicht globale Konsistenz"
  - k3: "AC-3 Algorithmus"
quizzes:
  - link: "https://www.hsbi.de/elearning/goto.php?target=tst_1106574&client_id=FH-Bielefeld"
    name: "Selbsttest CSP, AC-3 (ILIAS)"
assignments:
  - topic: sheet03
youtube:
  - link: "https://youtu.be/TvF78iVDwKM"
    name: "VL CSP, AC-3"
fhmedia:
  - link: "https://www.hsbi.de/medienportal/m/8fa264520ed3ce80f71936e084254d14c579ff19e2c724e914a6df761d12c3c7d22d62ebf625cc9181f29e288922785522e7cc60f9e7ce6cb369a3148b115ca7"
    name: "VL CSP, AC-3"
challenges: |
    **Fingerübungen**

    Ist die Kante zwischen a und b konsistent?

    ![](images/csp_challenge_a.png)


    Wann ist der Graph lokal konsistent?

    ![](images/csp_challenge_b.png)

    - a {1,2}; b {2,3}; c {1,2,3}; d {1,2,3}
    - a {1,2}; b {2,3}; c {3}; d {1,2}
    - a {1,3}; b {2,3}; c {1,3}; d {1,2,3}
    - a {1,2}; b {2,3}; c {1,3}; d {1,2,3}


    Wie sieht die Queue im nächsten Schritt mit AC3 aus?

    ![](images/csp_challenge_c.png)

    Aktuelle Queue: [ab, ac, ba, bc, ca, cb]

    - [bc, ba, ca, cb, ab, ac]
    - [ab, ac, ba, bc, ca, cb]
    - [ac, ba, bc, ca, cb]
    - [ac, ba, bc, ca, cb, ba]


    **Kantenkonsistenz mit AC-3**

    Sei $D=\lbrace 0, \ldots, 5 \rbrace$, und ein Constraintproblem definiert durch

    $$\langle
        \lbrace v_1, v_2, v_3, v_4 \rbrace,
        \lbrace D_{v_1} = D_{v_2} = D_{v_3} = D_{v_4} = D \rbrace,
        \lbrace c_1, c_2, c_3, c_4 \rbrace
    \rangle$$

    mit

    *   $c_1=\left((v_1,v_2), \lbrace (x,y) \in D^2 | x+y = 3 \rbrace\right)$,
    *   $c_2=\left((v_2,v_3), \lbrace (x,y) \in D^2 | x+y \le 3 \rbrace\right)$,
    *   $c_3=\left((v_1,v_3), \lbrace (x,y) \in D^2 | x \le y \rbrace\right)$ und
    *   $c_4=\left((v_3,v_4), \lbrace (x,y) \in D^2 | x \ne y \rbrace\right)$.


    Wenden Sie den AC-3-Algorithmus auf das CSP an. Geben Sie den Zustand der Queue und das Ergebnis von `ARC_Reduce`, d.h. den Ergebniszustand des aktuellen $D_i$, für jede Iteration des Algorithmus an.

    _Hinweis_: Da es hier vor allem um das Verständnis des Ablaufs von AC-3 geht, reichen die ersten 5 Schritte aus :)


    **Forward Checking und Kantenkonsistenz**

    Sei $D=\lbrace 0, \ldots, 5 \rbrace$, und ein Constraintproblem definiert durch

    $$\langle
        \lbrace v_1, v_2, v_3, v_4 \rbrace,
        \lbrace D_{v_1} = D_{v_2} = D_{v_3} = D_{v_4} = D \rbrace,
        \lbrace c_1, c_2, c_3, c_4 \rbrace
    \rangle$$

    mit

    *   $c_1=\left((v_1,v_2), \lbrace (x,y) \in D^2 | x+y = 3 \rbrace\right)$,
    *   $c_2=\left((v_2,v_3), \lbrace (x,y) \in D^2 | x+y \le 3 \rbrace\right)$,
    *   $c_3=\left((v_1,v_3), \lbrace (x,y) \in D^2 | x \le y \rbrace\right)$ und
    *   $c_4=\left((v_3,v_4), \lbrace (x,y) \in D^2 | x \ne y \rbrace\right)$.

    Betrachten Sie die Zuweisung $\alpha = \lbrace v_1 \to  2 \rbrace$.

    1.  Erzeugen Sie Kantenkonsistenz in $\alpha$. Geben Sie hierzu die Wertebereiche der Variablen vor und nach dem Erzeugen der Kantenkonsistenz an.

        _Hinweis_: Sie dürfen annehmen, dass der Wertebereich von Variablen mit bereits zugewiesenen Werten nur aus dem zugewiesenen Wert besteht, während unbelegte Variablen den vollen Wertebereich haben.

        _Hinweis_: Sie müssen zur Lösung dieser Teilaufgabe nicht den AC-3 handsimulieren.

    2.  Führen Sie Forward-Checking in $\alpha$ aus. Vergleichen Sie das Ergebnis mit (1).
---


## Problem bei BT-Suche

Zuweisung eines Wertes an Variable $X$:

*   Passt zu aktueller Belegung
*   Berücksichtigt aber nicht **restliche** Constraints \newline
    => macht weitere Suche u.U. unmöglich/schwerer

\bigskip

**Lösung**: Nach Zuweisung alle *nicht zugewiesenen Nachbarvariablen* prüfen


## INFERENCE: Vorab-Prüfung (Forward Checking)

::: center
![](images/bt_search_inference.png){width="65%"}
:::

\bigskip

::: notes
[**Inference**]{.alert}: Frühzeitiges Erkennen von Fehlschlägen! (vgl. [@Russell2020, S. 178])
:::

Nach Zuweisung eines Wertes an Variable $X$:

*   Betrachte alle nicht zugewiesenen Variablen $Y$:
    *   Falls Constraints zw. $X$ und $Y$, dann ...
    *   ... entferne alle inkonsistenten Werte aus dem Wertebereich von $Y$.

[[Tafelbeispiel:  Forward Checking (A=red, D=green)]{.bsp}]{.slides}

::: notes
Beispiel:
1.  Sei A auf rot gesetzt => entferne rot in B und C
2.  Sei D auf grün gesetzt => entferne grün in B und C und E

Problem: Für B und C bleibt nur noch blau; sind aber benachbart!
:::


## Forward Checking findet nicht alle Inkonsistenzen!

::: center
![](images/forward_checking.png){width="55%"}
:::

\bigskip
\bigskip

*   Nach $\lbrace A=red, D=green \rbrace$ bleibt für B und C nur noch blue
*   B und C sind aber benachbart


## Übergang von Forward Checking zu Kantenkonsistenz

*   Forward Checking erzeugt Konsistenz für alle Constraints der \newline
    **gerade betrachteten (belegten) Variablen**.

\bigskip

*   Idee: Ausdehnen auf alle Kanten ... => Einschränken der Wertemengen


## Definition Kantenkonsistenz (Arc Consistency)

> Eine Kante von $X$ nach $Y$ ist "[konsistent]{.alert}", wenn für jeden Wert
> $x \in D_X$ und für alle Constraints zwischen $X$ und $Y$ jeweils ein Wert
> $y \in D_Y$ existiert, so dass der betrachtete Constraint durch $(x,y)$
> erfüllt ist.

\bigskip
Ein CSP ist kanten-konsistent, wenn für alle Kanten des CSP Konsistenz herrscht.


## Beispiel Kantenkonsistenz

$V = \lbrace a,b,c,d,e \rbrace$

$\mathrm{C} = \lbrace ((a,b), \ne), ((b,c), \ne), ((a,c), \ne), ((c,d), =), ((b,e), <) \rbrace$

$D_a=D_b=D_c=\lbrace 1,2,3 \rbrace$, $D_d=\lbrace 1,2 \rbrace$, $D_e=\lbrace 1,2,3 \rbrace$

[[Tafelbeispiel Kantenkonsistenz]{.bsp}]{.slides}

\pause
\bigskip
Einschränkung der Ausgangswertemengen (kanten-konsistent)

$D_a=\lbrace 1,2,3 \rbrace$, $D_b=\lbrace 1,2 \rbrace$, $D_c=\lbrace 1,2 \rbrace$, $D_d=\lbrace 1,2 \rbrace$, $D_e=\lbrace 2,3 \rbrace$

::: cbox
=> Kantenkonsistenz ist nur **lokale** Konsistenz!
:::

\bigskip
\pause

*Anmerkung*: $((a,b), \ne)$ ist Kurzform für
$\left((a,b), \lbrace (x,y) \in D_a \times D_b | x \ne y \rbrace\right)$


## AC-3 Algorithmus: Herstellen von Kantenkonsistenz

``` python
def AC3(csp):
    queue = Queue(csp.arcs)
    while not queue.isEmpty():
        (x,y) = queue.dequeue()
        if ARC_Reduce(csp,x,y):
            if D_x.isEmpty(): return false
            for z in x.neighbors(): queue.enqueue(z,x)
    return true

def ARC_Reduce(csp, x, y):
    change = false
    for v in D_x:
        if not (any w in D_y and csp.C_xy(v,w)):
            D_x.remove(v);  change = true
    return change
```

[Quelle: Eigener Code basierend auf einer Idee nach [@Russell2020, p. 171, fig. 5.3]]{.origin}

::: notes
*Anmerkung*: Die Queue in AC-3 ist wie eine (mathematische) Menge zu betrachten: Jedes Element
kann nur genau einmal in einer Menge enthalten sein. D.h. wenn man bei `queue.enqueue(z,x)` die
Rückkanten von den Nachbarn in die Queue aufnimmt, sorgt die Queue eigenständig dafür, dass es
keine doppelten Vorkommen einer Kante in der Queue gibt. (Falls die verwendete Queue in einer
Programmiersprache das nicht unterstützt, müsste man bei `queue.enqueue(z,x)` stets abfragen, ob
die Kante `(z,x)` bereits in der Queue ist und diese dann nicht erneut hinzufügen.)
AC-3 hat eine Laufzeit von $O(d^3n^2)$ ($n$ Knoten, maximal $d$ Elemente pro Domäne). Leider findet
auch AC-3 nicht alle Inkonsistenzen ... (NP-hartes Problem).

*Hinweis*: In gewisser Weise kann man Forward Checking als ersten Schritt bei der
Herstellung von Kantenkonsistenz interpretieren.
:::


## Einsatz des AC-3 Algorithmus

1.  Vorverarbeitung: Reduktion der Wertemengen *vor* BT-Suche
    *   Nach AC-3 evtl. bereits Lösung gefunden (oder ausgeschlossen)

\bigskip

2.  Propagation: Einbetten von AC-3 als Inferenzschritt in BT-Suche \newline
    (**MAC** -- Maintaining Arc Consistency)
    *   Nach jeder Zuweisung an $X_i$ Aufruf von AC-3-Variante:
        *   Initial nur Kanten von $X_i$ zu allen noch nicht zugewiesenen Nachbarvariablen
    *   Anschließend rekursiver Aufruf von BT-Suche


## Wrap-Up

*   Anwendung von Forward Checking und ...
*   ... die Erweiterung auf alle Kanten: AC-3, Kantenkonsistenz







<!-- DO NOT REMOVE - THIS IS A LAST SLIDE TO INDICATE THE LICENSE AND POSSIBLE EXCEPTIONS (IMAGES, ...). -->
::: slides
## LICENSE
![](https://licensebuttons.net/l/by-sa/4.0/88x31.png)

Unless otherwise noted, this work is licensed under CC BY-SA 4.0.
:::
