# Notation

- $T_0$: The upper bound of time.
- $N(t)$: The number of observation during time interval $[0, t]$. A random varialbe. 

# Homogeneous Poisson Process

## Definition

$$P[N(t) = k] = \frac{e^{-\lambda \tau} (\lambda \tau)^k}{k!}$$

$\lambda$ is called *intensity*.

## Generator

- `lambda` stands for $\lambda$

The following r code generates the homogeneous poisson process with intensity `lambda`.


```r
library(RPPGen)
```

```
## Loading required package: Rcpp
```

```r
gen_homo_poisson(1, 40)
```

```
##  [1]  0.6837  2.3891  3.2842  5.2949  5.5208  6.8310  7.5126  7.7053
##  [9]  7.9635  8.6613  9.7070 10.2990 10.3358 10.9405 11.6466 11.6948
## [17] 12.2489 14.3095 14.3881 15.2558 16.5433 16.7789 18.3798 19.2325
## [25] 20.0463 21.1410 21.4871 23.8556 24.9652 25.2998 25.8185 27.1775
## [33] 29.1720 29.3836 29.8317 30.8054 30.8054 32.6671 32.8205 34.7470
## [41] 34.8941 37.4270 37.9144
```


