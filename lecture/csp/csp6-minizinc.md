---
author: Carsten Gips (HSBI)
title: "CSP: Mini-Zinc als DSL für Constraints"
---

::: tldr
TODO
:::

::: youtube
-   [VL CSP, Mini-Zinc](https://youtu.be/TvF78iVDwKM)
:::

# Einführung

TODO

# TODO

TODO

# TODO

TODO

# Beispiel

TODO

Australien?

# Wrap-Up

-   TODO

::: readings
TODO
-   @Russell2020: CSP, AC-3: Abschnitt 5.2
:::

::: outcomes
TODO
-   k2: Ich kann "Forward Checking" (FC) erklären
-   k2: Ich kann die Erweiterung von FC auf alle Kanten erklären (Kantenkonsistenz)
-   k2: Ich kann an einem Beispiel erklären, dass Kantenkonsistenz nicht globale Konsistenz bedeutet
-   k3: Ich kann den AC-3 Algorithmus anwenden
:::

::: challenges
TODO
**Fingerübungen**

1.  Ist die Kante zwischen a und b konsistent?

    ![](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/csp/images/csp_challenge_a.png?raw=true){web_width="20%"}

2.  Wann ist der Graph lokal konsistent?

    ![](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/csp/images/csp_challenge_b.png?raw=true){web_width="15%"}

    -   a {1,2}; b {2,3}; c {1,2,3}; d {1,2,3}
    -   a {1,2}; b {2,3}; c {3}; d {1,2}
    -   a {1,3}; b {2,3}; c {1,3}; d {1,2,3}
    -   a {1,2}; b {2,3}; c {1,3}; d {1,2,3}

3.  Wie sieht die Queue im nächsten Schritt mit AC3 aus?

    ![](https://github.com/Artificial-Intelligence-HSBI-TDU/KI-Vorlesung/blob/master/lecture/csp/images/csp_challenge_c.png?raw=true){web_width="25%"}

    Aktuelle Queue: \[ab, ac, ba, bc, ca, cb\]

    -   \[bc, ba, ca, cb, ab, ac\]
    -   \[ab, ac, ba, bc, ca, cb\]
    -   \[ac, ba, bc, ca, cb\]
    -   \[ac, ba, bc, ca, cb, ba\]
:::
