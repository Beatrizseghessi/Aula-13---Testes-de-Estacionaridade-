> remove.packages("forecast")
Removing package from 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
> install.packages("forecast", dependencies = TRUE)
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/forecast_8.4.zip'
Content type 'application/zip' length 1997561 bytes (1.9 MB)
downloaded 1.9 MB

package 'forecast' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpU5ghlv\downloaded_packages
> install.packages(urca)
Error in install.packages : object 'urca' not found
> install.packages("urca")
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/urca_1.3-0.zip'
Content type 'application/zip' length 1060263 bytes (1.0 MB)
downloaded 1.0 MB

package 'urca' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpU5ghlv\downloaded_packages
> install.packages(readxl)
Error in install.packages : object 'readxl' not found
> install.packages("readxl")
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/readxl_1.1.0.zip'
Content type 'application/zip' length 1499887 bytes (1.4 MB)
downloaded 1.4 MB

package 'readxl' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpU5ghlv\downloaded_packages
> remove.packages("pwt8")
Removing package from 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
> install.packages("pwt8", dependencies = TRUE)
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/pwt8_8.1-1.zip'
Content type 'application/zip' length 2083253 bytes (2.0 MB)
downloaded 2.0 MB

package 'pwt8' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpU5ghlv\downloaded_packages
> install.packages("plyr", dependencies = TRUE)
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/plyr_1.8.4.zip'
Content type 'application/zip' length 1298467 bytes (1.2 MB)
downloaded 1.2 MB

package 'plyr' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpU5ghlv\downloaded_packages
> library("plyr")
> library(forecast)
> library(tseries)

'tseries' version: 0.10-45

'tseries' is a package for time series
analysis and computational finance.

See 'library(help="tseries")' for
details.

> library("urca")                                #Carrega Pacote URCA
> library(readxl)                                #Carrega Pacote readxl
> library(pwt8)
> data("pwt8.0")
> View(pwt8.0)
> br <- subset(pwt8.0, country=="Brazil", 
               +              select = c("rgdpna","emp","xr"))
> colnames(br) <-  c("PIB","Emprego","CÃ¢mbio")
> PIB <- br$PIB[45:62]
> EMPREGO <- br$Emprego[45:62]
> CAMBIO <- br$CAMBIO[45:62]
> Anos <- seq(from=1994, to=2011, by=1)
> plot(PIB, type = "l")
> pib <- ts(PIB, start = 1994, frequency = 1)
> plot(CAMBIO, main="Produto Interno Bruto", 
       +      ylab="Milhoes de reais", 
       +      xlab="Ano")
Error in plot.window(...) : valores finitos são necessários para 'xlim'
In addition: Warning messages:
  1: In min(x) : no non-missing arguments to min; returning Inf
2: In max(x) : no non-missing arguments to max; returning -Inf
3: In min(x) : no non-missing arguments to min; returning Inf
4: In max(x) : no non-missing arguments to max; returning -Inf
> plot(CAMBIO, main ="Produto Interno Bruto", 
       +      ylab ="Milhoes de reais", 
       +      xlab ="Ano")
Error in plot.window(...) : valores finitos são necessários para 'xlim'
In addition: Warning messages:
  1: In min(x) : no non-missing arguments to min; returning Inf
2: In max(x) : no non-missing arguments to max; returning -Inf
3: In min(x) : no non-missing arguments to min; returning Inf
4: In max(x) : no non-missing arguments to max; returning -Inf
> plot(CAMBIO, main ="Produto Interno Bruto", 
       +      ylab="Milhoes de reais", 
       +      xlab="Ano")
Error in plot.window(...) : valores finitos são necessários para 'xlim'
In addition: Warning messages:
  1: In min(x) : no non-missing arguments to min; returning Inf
2: In max(x) : no non-missing arguments to max; returning -Inf
3: In min(x) : no non-missing arguments to min; returning Inf
4: In max(x) : no non-missing arguments to max; returning -Inf
> acf(pib)                                          #FunÃ§Ã£o de AutocorrelaÃ§Ã£o
> pacf(pib)
> reglinPIB <- lm(PIB ~ Anos)
> reglinPIB

Call:
  lm(formula = PIB ~ Anos)

Coefficients:
  (Intercept)         Anos  
-79644478        40434  

> summary(reglinPIB)

Call:
  lm(formula = PIB ~ Anos)

Residuals:
  Min     1Q Median     3Q    Max 
-86938 -49418   -405  44076  83693 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept) -79644478    5053034  -15.76 3.63e-11
Anos            40434       2523   16.02 2.83e-11

(Intercept) ***
  Anos        ***
  ---
  Signif. codes:  
  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 55540 on 16 degrees of freedom
Multiple R-squared:  0.9413,	Adjusted R-squared:  0.9377 
F-statistic: 256.8 on 1 and 16 DF,  p-value: 2.827e-11

> plot(pib)
> abline(reglinPIB, col="Blue")
> TesteADF_PIB_trend <- ur.df(pib, "trend", lags = 1)
> summary(TesteADF_PIB_trend)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression trend 


Call:
  lm(formula = z.diff ~ z.lag.1 + 1 + tt + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-58714 -12757   3226  22072  32907 

Coefficients:
  Estimate Std. Error t value
(Intercept)  3.824e+04  1.603e+05   0.238
z.lag.1     -3.099e-02  1.711e-01  -0.181
tt           6.662e+03  6.536e+03   1.019
z.diff.lag  -4.531e-01  2.869e-01  -1.580
Pr(>|t|)
(Intercept)    0.816
z.lag.1        0.859
tt             0.328
z.diff.lag     0.140

Residual standard error: 28710 on 12 degrees of freedom
Multiple R-squared:  0.4465,	Adjusted R-squared:  0.3081 
F-statistic: 3.226 on 3 and 12 DF,  p-value: 0.06102


Value of test-statistic is: -0.1812 8.4963 4.7357 

Critical values for test statistics: 
  1pct  5pct 10pct
tau3 -4.38 -3.60 -3.24
phi2  8.21  5.68  4.67
phi3 10.61  7.24  5.91

> TesteADF_PIB_drift <- ur.df(pib, "drif", lags = 1)
> summary(TesteADF_PIB_drift)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression drift 


Call:
  lm(formula = z.diff ~ z.lag.1 + 1 + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-64360 -12494   6997  14714  37034 

Coefficients:
  Estimate Std. Error t value
(Intercept) -1.147e+05  5.658e+04  -2.027
z.lag.1      1.366e-01  4.713e-02   2.899
z.diff.lag  -5.594e-01  2.676e-01  -2.090
Pr(>|t|)  
(Intercept)   0.0637 .
z.lag.1       0.0124 *
  z.diff.lag    0.0568 .
---
  Signif. codes:  
  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 28750 on 13 degrees of freedom
Multiple R-squared:  0.3986,	Adjusted R-squared:  0.306 
F-statistic: 4.307 on 2 and 13 DF,  p-value: 0.03671


Value of test-statistic is: 2.8995 12.1882 

Critical values for test statistics: 
  1pct  5pct 10pct
tau2 -3.75 -3.00 -2.63
phi1  7.88  5.18  4.12

> TesteADF_PIB_none <- ur.df(pib, "none", lags = 1)
> summary(TesteADF_PIB_none)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression none 


Call:
  lm(formula = z.diff ~ z.lag.1 - 1 + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-49445 -22629  -1100  13372  49484 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
z.lag.1     0.04310    0.01058   4.072  0.00114
z.diff.lag -0.31270    0.26353  -1.187  0.25515

z.lag.1    **
  z.diff.lag   
---
  Signif. codes:  
  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 31790 on 14 degrees of freedom
Multiple R-squared:  0.6918,	Adjusted R-squared:  0.6477 
F-statistic: 15.71 on 2 and 14 DF,  p-value: 0.0002643


Value of test-statistic is: 4.0723 

Critical values for test statistics: 
  1pct  5pct 10pct
tau1 -2.66 -1.95  -1.6

> pp.test(pib)

Phillips-Perron Unit Root Test

data:  pib
Dickey-Fuller Z(alpha) = -0.72766,
Truncation lag parameter = 2, p-value =
  0.9859
alternative hypothesis: stationary

> kpss.test(pib)

KPSS Test for Level Stationarity

data:  pib
KPSS Level = 1.7145, Truncation lag
parameter = 0, p-value = 0.01

Warning message:
  In kpss.test(pib) : p-value smaller than printed p-value
> residuosPIB <- reglinPIB$residuals
> reglinPIBres <- lm(residuosPIB ~ Anos)
> plot(residuosPIB,type="l")
> abline(reglinPIBres, col="Blue")
> TesteADF_residuosPIB_trend <- ur.df(residuosPIB, "trend", lags = 1)
> summary(TesteADF_residuosPIB_trend)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression trend 


Call:
  lm(formula = z.diff ~ z.lag.1 + 1 + tt + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-58714 -12757   3226  22072  32907 

Coefficients:
  Estimate Std. Error t value
(Intercept) -4.968e+04  1.889e+04  -2.630
z.lag.1     -3.099e-02  1.711e-01  -0.181
tt           5.409e+03  1.906e+03   2.838
z.diff.lag  -4.531e-01  2.869e-01  -1.580
Pr(>|t|)  
(Intercept)    0.022 *
  z.lag.1        0.859  
tt             0.015 *
  z.diff.lag     0.140  
---
  Signif. codes:  
  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 28710 on 12 degrees of freedom
Multiple R-squared:  0.4465,	Adjusted R-squared:  0.3081 
F-statistic: 3.226 on 3 and 12 DF,  p-value: 0.06102


Value of test-statistic is: -0.1812 3.1724 4.7357 

Critical values for test statistics: 
  1pct  5pct 10pct
tau3 -4.38 -3.60 -3.24
phi2  8.21  5.68  4.67
phi3 10.61  7.24  5.91

> TesteADF_residuosPIB_drift <- ur.df(residuosPIB, "drift", lags = 1)
> summary(TesteADF_residuosPIB_drift)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression drift 


Call:
  lm(formula = z.diff ~ z.lag.1 + 1 + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-37475 -30391  -1218  16620  79742 

Coefficients:
  Estimate Std. Error t value
(Intercept) -299.23199 9124.00766  -0.033
z.lag.1       -0.19222    0.20039  -0.959
z.diff.lag     0.01463    0.29157   0.050
Pr(>|t|)
(Intercept)    0.974
z.lag.1        0.355
z.diff.lag     0.961

Residual standard error: 35660 on 13 degrees of freedom
Multiple R-squared:  0.07506,	Adjusted R-squared:  -0.06724 
F-statistic: 0.5275 on 2 and 13 DF,  p-value: 0.6022


Value of test-statistic is: -0.9592 0.4749 

Critical values for test statistics: 
  1pct  5pct 10pct
tau2 -3.75 -3.00 -2.63
phi1  7.88  5.18  4.12

> TesteADF_residuosPIB_none <- ur.df(residuosPIB, "none", lags = 1)
> summary(TesteADF_residuosPIB_none)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression none 


Call:
  lm(formula = z.diff ~ z.lag.1 - 1 + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-37792 -30669  -1554  16384  79393 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
z.lag.1     -0.1908     0.1888  -1.011    0.329
z.diff.lag   0.0135     0.2790   0.048    0.962

Residual standard error: 34360 on 14 degrees of freedom
Multiple R-squared:  0.07664,	Adjusted R-squared:  -0.05526 
F-statistic: 0.581 on 2 and 14 DF,  p-value: 0.5722


Value of test-statistic is: -1.0108 

Critical values for test statistics: 
  1pct  5pct 10pct
tau1 -2.66 -1.95  -1.6

> pp.test(residuosPIB)

Phillips-Perron Unit Root Test

data:  residuosPIB
Dickey-Fuller Z(alpha) = -0.72766,
Truncation lag parameter = 2, p-value =
  0.9859
alternative hypothesis: stationary

> kpss.test(residuosPIB)

KPSS Test for Level Stationarity

data:  residuosPIB
KPSS Level = 0.41958, Truncation lag
parameter = 0, p-value = 0.06871

> pdPIB <- diff(PIB)
> diferenca1PIB <- (data.frame(PIB[2:18],pdPIB))
> DIFERENCAPIB <- ts(diferenca1PIB, start = 1994, frequency = 1)
> plot(DIFERENCAPIB, plot.type="single", col=c("Black","Green"))
> plot(pdePIB, type="l")
Error in plot(pdePIB, type = "l") : object 'pdePIB' not found
> plot(pdPIB, type="l")
> TesteADF_pdPIB_trend <- ur.df(pdPIB, "trend", lags = 1)
> summary(TesteADF_pdPIB_trend)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression trend 


Call:
  lm(formula = z.diff ~ z.lag.1 + 1 + tt + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-50955  -8636   3316  10788  38358 

Coefficients:
  Estimate Std. Error t value
(Intercept) 11026.0534 17666.4960   0.624
z.lag.1        -1.8576     0.5047  -3.680
tt           7397.8497  2374.3771   3.116
z.diff.lag      0.2178     0.3122   0.698
Pr(>|t|)   
(Intercept)  0.54527   
z.lag.1      0.00362 **
  tt           0.00983 **
  z.diff.lag   0.49994   
---
  Signif. codes:  
  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 28160 on 11 degrees of freedom
Multiple R-squared:  0.7749,	Adjusted R-squared:  0.7135 
F-statistic: 12.62 on 3 and 11 DF,  p-value: 0.0006957


Value of test-statistic is: -3.6802 4.9054 7.0925 

Critical values for test statistics: 
  1pct  5pct 10pct
tau3 -4.38 -3.60 -3.24
phi2  8.21  5.68  4.67
phi3 10.61  7.24  5.91

> TesteADF_pdPIB_drift <- ur.df(pdPIB, "drift", lags = 1)
> summary(TesteADF_pdPIB_drift)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression drift 


Call:
  lm(formula = z.diff ~ z.lag.1 + 1 + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-60590 -20346   1089  24318  61612 

Coefficients:
  Estimate Std. Error t value
(Intercept) 35154.0162 20858.8981   1.685
z.lag.1        -0.7741     0.4806  -1.611
z.diff.lag     -0.2870     0.3506  -0.818
Pr(>|t|)
(Intercept)    0.118
z.lag.1        0.133
z.diff.lag     0.429

Residual standard error: 36990 on 12 degrees of freedom
Multiple R-squared:  0.5763,	Adjusted R-squared:  0.5057 
F-statistic: 8.161 on 2 and 12 DF,  p-value: 0.005786


Value of test-statistic is: -1.6108 1.4512 

Critical values for test statistics: 
  1pct  5pct 10pct
tau2 -3.75 -3.00 -2.63
phi1  7.88  5.18  4.12

> TesteADF_pdPIB_none <- ur.df(pdPIB, "none", lags = 1)
> summary(TesteADF_pdPIB_none)

############################################### 
# Augmented Dickey-Fuller Test Unit Root Test # 
############################################### 

Test regression none 


Call:
  lm(formula = z.diff ~ z.lag.1 - 1 + z.diff.lag)

Residuals:
  Min     1Q Median     3Q    Max 
-85222  -6222   1538  32551  66188 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)  
z.lag.1    -0.05519    0.23647  -0.233   0.8191  
z.diff.lag -0.69902    0.26852  -2.603   0.0219 *
  ---
  Signif. codes:  
  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 39530 on 13 degrees of freedom
Multiple R-squared:  0.4765,	Adjusted R-squared:  0.396 
F-statistic: 5.916 on 2 and 13 DF,  p-value: 0.01489


Value of test-statistic is: -0.2334 

Critical values for test statistics: 
  1pct  5pct 10pct
tau1 -2.66 -1.95  -1.6

> pp.test(pdPIB)

Phillips-Perron Unit Root Test

data:  pdPIB
Dickey-Fuller Z(alpha) = -21.477, Truncation
lag parameter = 2, p-value = 0.0159
alternative hypothesis: stationary

> kpss.test(pdPIB)

KPSS Test for Level Stationarity

data:  pdPIB
KPSS Level = 0.46177, Truncation lag
parameter = 0, p-value = 0.05053

> arima113 <- arima(pib, c(1,1,3))
> arima110 <- arima(pib, c(1,1,0))
> arima111 <- arima(pib, c(1,1,1))
> arima112 <- arima(pib, c(1,1,2))
> arima011 <-  arima(pib, c(0,1,1))
> arima012 <-  arima(pib, c(0,1,2))
> arima013 <-  arima(pib, c(0,1,3))
> estimacoes <- list(arima113,arima110,arima111,
                     +                    arima112,arima011,arima011, 
                     +                    arima012,arima013)
> AIC <- sapply(estimacoes, AIC)
> BIC <- sapply(estimacoes, BIC)
> Modelo <-c("arima113","arima110","arima111",
             +             "arima112","arima011","arima011", 
             +             "arima012","arima013")
> Resultados <- data.frame(Modelo,AIC,BIC)
> View(Resultados)
> melhor_modelo <- arima112
> predict(melhor_modelo,6)
$`pred`
Time Series:
  Start = 2012 
End = 2017 
Frequency = 1 
[1] 1795039 1842067 1886300 1927904 1967037
[6] 2003844

$se
Time Series:
  Start = 2012 
End = 2017 
Frequency = 1 
[1]  26762.84  31702.15  44971.57  64263.02
[5]  87292.78 112817.35

> forecast(melhor_modelo,6)
Point Forecast   Lo 80   Hi 80   Lo 95
2012        1795039 1760741 1829337 1742585
2013        1842067 1801439 1882695 1779932
2014        1886300 1828666 1943933 1798157
2015        1927904 1845548 2010261 1801951
2016        1967037 1855167 2078907 1795946
2017        2003844 1859262 2148425 1782726
Hi 95
2012 1847493
2013 1904202
2014 1974442
2015 2053858
2016 2138127
2017 2224962
> previsao01 <- forecast(melhor_modelo,6)
> previsao02 <- predict(melhor_modelo,6)
> PIB1 <- as.data.frame(PIB)
> modelo011 <- data.frame(PIB1,previsao01$fitted)
> modelo01 <- ts(modelo011,start = 1994, frequency = 1)
> plot(modelo01, main="Previsto e Observado - Best Model", 
       +      plot.type="single",
       +      xlab="Data", 
       +      ylab="PIB", 
       +      col=c("Green","Black"))
> plot(previsao01, main ="Previsao do PIB - Melhor Modelo")