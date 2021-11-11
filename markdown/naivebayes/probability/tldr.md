---
title: "TL;DR"
disableToc: true
hidden: true
---


Diese Sitzung ist eine (relativ oberflächliche) Einführung/Wiederholung in die/der
Grundlagen der Wahrscheinlichkeitstheorie.

Wir schauen uns die möglichen Ausgänge eines Zufallsexperiments an ("Ereignisse").
Wenn diese Ereignisse sich gegenseitig ausschließen und alle denkbaren Ergebnisse
abdecken, dann nennt man diese Ereignisse auch **Elementarereignisse**. Die
Wahrscheinlichkeit für ein Ereignis kann man angeben als Anzahl der möglichen
Ergebnisse, die für dieses Ereignis günstig sind, geteilt durch die Anzahl aller
Ausgänge. Über die Kolmogorov Axiome bekommt man die typischen Rechenregel für
die Wahrscheinlichkeit.

Man kann eine **Verbundwahrscheinlichkeit** $P(A,B) = P(B,A)$ angeben, das ist
die Wahrscheinlichkeit, dass $A$ und $B$ gleichzeitig auftreten. Die **bedingte**
Wahrscheinlichkeit für $A$ gegeben $B$ ist $P(A|B)$ und berechnet sich
$P(A|B) = \frac{P(A,B)}{P(B)}$.

Daraus kann man die **Bayes-Regel** ableiten: $P(A|B) = \frac{P(B|A)P(A)}{P(B)}$.
Dabei nennt man

-   $P(A)$ **"Prior"** oder **"A-priori-Wahrscheinlichkeit"**

    (die Wahrscheinlichkeit für $A$ ohne weiteres Wissen),

-   $P(B|A)$ **"Likelihood"**

    (Wie wahrscheinlich ist das Auftreten von $B$, gegeben $A$?),

-   $P(A|B)$ **"Posterior"** oder **"A-posteriori-Wahrscheinlichkeit"**

    (Wie wahrscheinlich ist $A$, wenn $B$ eingetreten ist?), und

-   $P(B)$ ist ein Normierungsfaktor

    (Wie wahrscheinlich ist $B$ an sich?).
