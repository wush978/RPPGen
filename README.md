Page on RPubs: <http://rpubs.com/wush978/RPPGen>

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
##  [1]  1.910  4.083  4.392  5.957  6.437  6.649  7.364  7.746  7.775  8.703
## [11]  8.949  9.093  9.601 12.292 12.297 13.771 14.159 14.316 14.524 14.980
## [21] 14.981 15.338 16.401 16.506 17.288 18.637 19.133 20.229 21.034 23.952
## [31] 26.308 26.967 28.138 29.218 31.674 32.902 32.948 34.466 34.722 34.934
## [41] 36.411 37.063 37.159 37.991 38.664 39.116 39.520 39.678 39.876 39.943
```


