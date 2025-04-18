/* Initial beliefs and rules */

/* Initial goals */

!start(5).
!start(10).

/* Plans */

+!start(N) <- 
    .print("hello world ", N);
    .wait(1000);
    !start(N + 1).