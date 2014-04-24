# Code Book for tinyavg.txt

## Study Design 

* Information about dataset from the documentation
* This information is copied from the description of the data supplied on the source web site
* R code to produce the code book appears after the code book

The experiments have been carried out with a group of 30 volunteers within 
an age bracket of 19-48 years. Individuals are are numbered 1 through 30
in the "subject" variable.

Each person performed six activities, wearing a smartphone (Samsung Galaxy S II) on the waist. 
The activity is indicated in the "activity" variable. The activities are:
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING. 

The embedded accelerometer and gyroscope captured 3-axial 
linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The dataset was originally partitioned into two sets, training and test,
however, for the purposes of this exercise the data have been combined again. 

The sensor signals (accelerometer and gyroscope) were pre-processed by 
applying noise filters and then sampled in fixed-width sliding windows 
of 2.56 sec and 50% overlap (128 readings/window).
 
The sensor acceleration signal, which has gravitational and body motion 
components, was separated using a Butterworth low-pass filter into body 
acceleration and gravity. The gravitational force is assumed to have only 
low frequency components, therefore a filter with 0.3 Hz cutoff frequency 
was used. From each window, a vector of features was obtained by calculating 
variables from the time and frequency domain. 

## Construction of variable names

Variables beginning with "t" are in the time domain and those staring with
"f" are in the frequency domain.  The measurements are obtained from either
the accelorator or the gyroscope, indicated by either "acc" or "gyro" in
the variable name.  Acceloration signals were separated into body or 
gravitation, indicated by "body" and "gravity" in the variable name. Only
means ("mean") and standard deviations ("std") were used. Three directions
("x", "y", "z") were used taken. Body linear acceleration and angular velocity 
were derived in time to obtain jerk ("jerk") signals. The magnitude of these 
three-dimensional signals were calculated using the Euclidean norm ("mag").

So the variable "tbodyaccmeanx" is interpreted as being in the time domain,
measuring the mean acceleration in the x direction derived from the body.
"fbodygyrostdz" is in the frequency domain, measure the standard deviation
of the gyroscope measurement in the z direction derived from the body.

Features are normalized and bounded within [-1,1]. For this exercise, basic
variables were not used, only the calculated means and standard deviations
of the variables. For the final dataset, the mean of the means and standard
deviations are reported, not the original variables. The processing for the
features makes them unitless.

## Notes on variables

* Units - numeric variables are unitless
* subject is 1 through 30, indicating 30 individuals
* activity has six values indicating different physical activities.
* blank indicates the information is not applicable to that variable

values for activity are:

* WALKING 
* WALKING_UPSTAIRS 
* WALKING_DOWNSTAIRS 
* SITTING 
* STANDING 
* LAYING 

## Column names for code book:

* variables - name of each variable
* class     - numeric or character.
* min.value - minimum value for numeric variables
* max.value - maximum value for numeric variables
* measure   - variable is a measure of the mean or standard deviation
* domain    - time or frequency domain for numeric variables
* accgyro   - measure is from accelerator or gyroscope in the phone
* signal    - the signal comes from a body or gravity measurement
* jerk      - derived variable for jerking movement or not
* magnitude - the variable measures the magnitude of the movement or not
* direction - the variable measures movement in the x, y, or z direction

Codebook for tidyavg dataset


     **variables**              **class**   **min.value**   **max.value**   **measure**   **domain**   **accgyro**   **signal**   **jerk**   **magnitude**   **direction**  
---- -------------------------- ----------- --------------- --------------- ------------- ------------ ------------- ------------ ---------- --------------- ---------------
1    subject                    numeric     1.00            30.00                                                                                                           
2    activity                   character   0.00            0.00                                                                                                            
3    tbodyaccmeanx              numeric     0.22            0.30            Mean          Time         Accelorator   Body                                    X              
4    tbodyaccmeany              numeric     -0.04           -0.00           Mean          Time         Accelorator   Body                                    Y              
5    tbodyaccmeanz              numeric     -0.15           -0.08           Mean          Time         Accelorator   Body                                    Z              
6    tbodyaccstdx               numeric     -1.00           0.63            S Deviation   Time         Accelorator   Body                                    X              
7    tbodyaccstdy               numeric     -0.99           0.62            S Deviation   Time         Accelorator   Body                                    Y              
8    tbodyaccstdz               numeric     -0.99           0.61            S Deviation   Time         Accelorator   Body                                    Z              
9    tgravityaccmeanx           numeric     -0.68           0.97            Mean          Time         Accelorator   Gravity                                 X              
10   tgravityaccmeany           numeric     -0.48           0.96            Mean          Time         Accelorator   Gravity                                 Y              
11   tgravityaccmeanz           numeric     -0.50           0.96            Mean          Time         Accelorator   Gravity                                 Z              
12   tgravityaccstdx            numeric     -1.00           -0.83           S Deviation   Time         Accelorator   Gravity                                 X              
13   tgravityaccstdy            numeric     -0.99           -0.64           S Deviation   Time         Accelorator   Gravity                                 Y              
14   tgravityaccstdz            numeric     -0.99           -0.61           S Deviation   Time         Accelorator   Gravity                                 Z              
15   tbodyaccjerkmeanx          numeric     0.04            0.13            Mean          Time         Accelorator   Body         Jerk                       X              
16   tbodyaccjerkmeany          numeric     -0.04           0.06            Mean          Time         Accelorator   Body         Jerk                       Y              
17   tbodyaccjerkmeanz          numeric     -0.07           0.04            Mean          Time         Accelorator   Body         Jerk                       Z              
18   tbodyaccjerkstdx           numeric     -0.99           0.54            S Deviation   Time         Accelorator   Body         Jerk                       X              
19   tbodyaccjerkstdy           numeric     -0.99           0.36            S Deviation   Time         Accelorator   Body         Jerk                       Y              
20   tbodyaccjerkstdz           numeric     -0.99           0.03            S Deviation   Time         Accelorator   Body         Jerk                       Z              
21   tbodygyromeanx             numeric     -0.21           0.19            Mean          Time         Gyroscope     Body                                    X              
22   tbodygyromeany             numeric     -0.20           0.03            Mean          Time         Gyroscope     Body                                    Y              
23   tbodygyromeanz             numeric     -0.07           0.18            Mean          Time         Gyroscope     Body                                    Z              
24   tbodygyrostdx              numeric     -0.99           0.27            S Deviation   Time         Gyroscope     Body                                    X              
25   tbodygyrostdy              numeric     -0.99           0.48            S Deviation   Time         Gyroscope     Body                                    Y              
26   tbodygyrostdz              numeric     -0.99           0.56            S Deviation   Time         Gyroscope     Body                                    Z              
27   tbodygyrojerkmeanx         numeric     -0.16           -0.02           Mean          Time         Gyroscope     Body         Jerk                       X              
28   tbodygyrojerkmeany         numeric     -0.08           -0.01           Mean          Time         Gyroscope     Body         Jerk                       Y              
29   tbodygyrojerkmeanz         numeric     -0.09           -0.01           Mean          Time         Gyroscope     Body         Jerk                       Z              
30   tbodygyrojerkstdx          numeric     -1.00           0.18            S Deviation   Time         Gyroscope     Body         Jerk                       X              
31   tbodygyrojerkstdy          numeric     -1.00           0.30            S Deviation   Time         Gyroscope     Body         Jerk                       Y              
32   tbodygyrojerkstdz          numeric     -1.00           0.19            S Deviation   Time         Gyroscope     Body         Jerk                       Z              
33   tbodyaccmagmean            numeric     -0.99           0.64            Mean          Time         Accelorator   Body                    Magnitude                      
34   tbodyaccmagstd             numeric     -0.99           0.43            S Deviation   Time         Accelorator   Body                    Magnitude                      
35   tgravityaccmagmean         numeric     -0.99           0.64            Mean          Time         Accelorator   Gravity                 Magnitude                      
36   tgravityaccmagstd          numeric     -0.99           0.43            S Deviation   Time         Accelorator   Gravity                 Magnitude                      
37   tbodyaccjerkmagmean        numeric     -0.99           0.43            Mean          Time         Accelorator   Body         Jerk       Magnitude                      
38   tbodyaccjerkmagstd         numeric     -0.99           0.45            S Deviation   Time         Accelorator   Body         Jerk       Magnitude                      
39   tbodygyromagmean           numeric     -0.98           0.42            Mean          Time         Gyroscope     Body                    Magnitude                      
40   tbodygyromagstd            numeric     -0.98           0.30            S Deviation   Time         Gyroscope     Body                    Magnitude                      
41   tbodygyrojerkmagmean       numeric     -1.00           0.09            Mean          Time         Gyroscope     Body         Jerk       Magnitude                      
42   tbodygyrojerkmagstd        numeric     -1.00           0.25            S Deviation   Time         Gyroscope     Body         Jerk       Magnitude                      
43   fbodyaccmeanx              numeric     -1.00           0.54            Mean          Freq         Accelorator   Body                                    X              
44   fbodyaccmeany              numeric     -0.99           0.52            Mean          Freq         Accelorator   Body                                    Y              
45   fbodyaccmeanz              numeric     -0.99           0.28            Mean          Freq         Accelorator   Body                                    Z              
46   fbodyaccstdx               numeric     -1.00           0.66            S Deviation   Freq         Accelorator   Body                                    X              
47   fbodyaccstdy               numeric     -0.99           0.56            S Deviation   Freq         Accelorator   Body                                    Y              
48   fbodyaccstdz               numeric     -0.99           0.69            S Deviation   Freq         Accelorator   Body                                    Z              
49   fbodyaccjerkmeanx          numeric     -0.99           0.47            Mean          Freq         Accelorator   Body         Jerk                       X              
50   fbodyaccjerkmeany          numeric     -0.99           0.28            Mean          Freq         Accelorator   Body         Jerk                       Y              
51   fbodyaccjerkmeanz          numeric     -0.99           0.16            Mean          Freq         Accelorator   Body         Jerk                       Z              
52   fbodyaccjerkstdx           numeric     -1.00           0.48            S Deviation   Freq         Accelorator   Body         Jerk                       X              
53   fbodyaccjerkstdy           numeric     -0.99           0.35            S Deviation   Freq         Accelorator   Body         Jerk                       Y              
54   fbodyaccjerkstdz           numeric     -0.99           -0.01           S Deviation   Freq         Accelorator   Body         Jerk                       Z              
55   fbodygyromeanx             numeric     -0.99           0.47            Mean          Freq         Gyroscope     Body                                    X              
56   fbodygyromeany             numeric     -0.99           0.33            Mean          Freq         Gyroscope     Body                                    Y              
57   fbodygyromeanz             numeric     -0.99           0.49            Mean          Freq         Gyroscope     Body                                    Z              
58   fbodygyrostdx              numeric     -0.99           0.20            S Deviation   Freq         Gyroscope     Body                                    X              
59   fbodygyrostdy              numeric     -0.99           0.65            S Deviation   Freq         Gyroscope     Body                                    Y              
60   fbodygyrostdz              numeric     -0.99           0.52            S Deviation   Freq         Gyroscope     Body                                    Z              
61   fbodyaccmagmean            numeric     -0.99           0.59            Mean          Freq         Accelorator   Body                    Magnitude                      
62   fbodyaccmagstd             numeric     -0.99           0.18            S Deviation   Freq         Accelorator   Body                    Magnitude                      
63   fbodybodyaccjerkmagmean    numeric     -0.99           0.54            Mean          Freq         Accelorator   Body         Jerk       Magnitude                      
64   fbodybodyaccjerkmagstd     numeric     -0.99           0.32            S Deviation   Freq         Accelorator   Body         Jerk       Magnitude                      
65   fbodybodygyromagmean       numeric     -0.99           0.20            Mean          Freq         Gyroscope     Body                    Magnitude                      
66   fbodybodygyromagstd        numeric     -0.98           0.24            S Deviation   Freq         Gyroscope     Body                    Magnitude                      
67   fbodybodygyrojerkmagmean   numeric     -1.00           0.15            Mean          Freq         Gyroscope     Body         Jerk       Magnitude                      
68   fbodybodygyrojerkmagstd    numeric     -1.00           0.29            S Deviation   Freq         Gyroscope     Body         Jerk       Magnitude                      
---- -------------------------- ----------- --------------- --------------- ------------- ------------ ------------- ------------ ---------- --------------- ---------------

## Code to produce the code book
nm  <- names(z) # first column is names
cl1 <- as.vector(apply(z[,1:2],2,class)) # class for each variable
cl2 <- as.vector(apply(z[,3:length(names(z))],2,class)) # class for each variable
cl  <- c(cl1,cl2) # class for all variables
rg1 <- apply(z[,3:length(names(z))],2,min) # minimum value
rg2 <- apply(z[,3:length(names(z))],2,max) # maximum value
rg1 <- as.vector(c(0,0,rg1)) # create space for the character variables
rg2 <- as.vector(c(0,0,rg2))
cb  <- data.frame(variables=nm, class=cl, min.value=rg1, max.value=rg2,stringsAsFactors=FALSE)
comment:  need to manually overwrite min and max values for subject and activity
cb[1,2] <- "numeric"
cb[1,3] <- 1
cb[1,4] <- 30
comment:  extract information from variable names
domain <- grepl("^t",cb$variables)      # time or frequency domain
domain <- ifelse(domain,"Time","Freq")
domain[1:2] <- NA
accgyro <- grepl("acc",cb$variables)
accgyro <- ifelse(accgyro,"Accelorator","Gyroscope")
accgyro[1:2] <- NA
signal <- grepl("body",cb$variables)
signal <- ifelse(signal,"Body","Gravity")
signal[1:2] <- NA
jerk <- grepl("jerk",cb$variables)
jerk <- ifelse(jerk,"Jerk",NA)
magnitude <- grepl("mag",cb$variables)
magnitude <- ifelse(magnitude,"Magnitude",NA)
xd <- grepl("x$",cb$variables)
yd <- grepl("y$",cb$variables)
zd <- grepl("z$",cb$variables)
direction <- ifelse(xd,"X",ifelse(yd,"Y",ifelse(zd,"Z",NA)))
direction[2] <- NA
measure <- grepl("mean",cb$variables)
measure <- ifelse(measure,"Mean","S Deviation")
measure[1:2] <- NA
comment:  add the variable information to the code book
cb[,5:11] <-c(measure,domain,accgyro,signal, jerk, magnitude,direction)
colnames(cb)[5:11] <- c("measure","domain","accgyro","signal", "jerk",
                      "magnitude","direction")
library(ascii)
print(ascii(cb), type = 'pandoc')

