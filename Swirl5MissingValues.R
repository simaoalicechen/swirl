# swirl5

R version 4.0.0 (2020-04-24) -- "Arbor Day"
Copyright (C) 2020 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.71 (7827) x86_64-apple-darwin17.0]

[Workspace restored from /Users/alicechen/.RData]
[History restored from /Users/alicechen/.Rapp.history]

> library(swirl)

| Hi! I see that you have some variables saved in your workspace. To keep
| things running smoothly, I recommend you clean up before starting swirl.

| Type ls() to see a list of the variables in your workspace. Then, type
| rm(list=ls()) to clear your workspace.

| Type swirl() when you are ready to begin.

Warning message:
package ‘swirl’ was built under R version 4.0.2 
> swirl()

| Welcome to swirl! Please sign in. If you've been here before, use the same
| name as you did then. If you are new, call yourself something unique.

What shall I call you? Alice

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 1

| Please choose a lesson, or type 0 to return to course menu.

 1: Basic Building Blocks      2: Workspace and Files     
 3: Sequences of Numbers       4: Vectors                 
 5: Missing Values             6: Subsetting Vectors      
 7: Matrices and Data Frames   8: Logic                   
 9: Functions                 10: lapply and sapply       
11: vapply and tapply         12: Looking at Data         
13: Simulation                14: Dates and Times         
15: Base Graphics             

Selection: 5
  |                                                                     |   0%

| Missing values play an important role in statistics and data analysis.
| Often, missing values must not be ignored, but rather they should be
| carefully studied to see if there's an underlying pattern or cause for their
| missingness.

...
  |===                                                                  |   5%
| In R, NA is used to represent any value that is 'not available' or 'missing'
| (in the statistical sense). In this lesson, we'll explore missing values
| further.

...
  |=======                                                              |  10%
| Any operation involving NA generally yields NA as the result. To illustrate,
| let's create a vector c(44, NA, 5, NA) and assign it to a variable x.

> 
> x<-c(44,NA, 5, NA)

| You are quite good my friend!
  |==========                                                           |  15%
| Now, let's multiply x by 3.

> 
> x*3
[1] 132  NA  15  NA

| Nice work!
  |==============                                                       |  20%
| Notice that the elements of the resulting vector that correspond with the NA
| values in x are also NA.

...
  |=================                                                    |  25%
| To make things a little more interesting, lets create a vector containing
| 1000 draws from a standard normal distribution with y <- rnorm(1000).

> y<-rnom(1000)
Error in rnom(1000) : could not find function "rnom"
> y<-rnorm(1000)

| You got it right!
  |=====================                                                |  30%
| Next, let's create a vector containing 1000 NAs with z <- rep(NA, 1000).

> z<-rep(NA, 1000)

| You are doing so well!
  |========================                                             |  35%
| Finally, let's select 100 elements at random from these 2000 values
| (combining y and z) such that we don't know how many NAs we'll wind up with
| or what positions they'll occupy in our final vector -- my_data <-
| sample(c(y, z), 100).

> my_data<-sample(c(y,z), 100)

| You got it!
  |============================                                         |  40%
| Let's first ask the question of where our NAs are located in our data. The
| is.na() function tells us whether each element of a vector is NA. Call
| is.na() on my_data and assign the result to my_na.

> is.na(my_data)
  [1] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE
 [13] FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE
 [25] FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
 [37] FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE
 [49] FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE
 [61] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE
 [73] FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE FALSE
 [85] FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE
 [97]  TRUE  TRUE FALSE  TRUE

| One more time. You can do it! Or, type info() for more options.

| Assign the result of is.na(my_data) to the variable my_na.

> my_na<-is.na(my_data)

| You are quite good my friend!
  |===============================                                      |  45%
| Now, print my_na to see what you came up with.

> my_na
  [1] FALSE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE
 [13] FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE  TRUE
 [25] FALSE  TRUE  TRUE  TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
 [37] FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE FALSE
 [49] FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE FALSE
 [61] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE  TRUE
 [73] FALSE  TRUE  TRUE FALSE  TRUE  TRUE FALSE  TRUE  TRUE  TRUE FALSE FALSE
 [85] FALSE  TRUE FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE  TRUE FALSE  TRUE
 [97]  TRUE  TRUE FALSE  TRUE

| Great job!
  |==================================                                   |  50%
| Everywhere you see a TRUE, you know the corresponding element of my_data is
| NA. Likewise, everywhere you see a FALSE, you know the corresponding element
| of my_data is one of our random draws from the standard normal distribution.

...
  |======================================                               |  55%
| In our previous discussion of logical operators, we introduced the `==`
| operator as a method of testing for equality between two objects. So, you
| might think the expression my_data == NA yields the same results as is.na().
| Give it a try.

> my_data==NA
  [1] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [25] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [49] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [73] NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA NA
 [97] NA NA NA NA

| All that practice is paying off!
  |=========================================                            |  60%
| The reason you got a vector of all NAs is that NA is not really a value, but
| just a placeholder for a quantity that is not available. Therefore the
| logical expression is incomplete and R has no choice but to return a vector
| of the same length as my_data that contains all NAs.

...
  |=============================================                        |  65%
| Don't worry if that's a little confusing. The key takeaway is to be cautious
| when using logical expressions anytime NAs might creep in, since a single NA
| value can derail the entire thing.

...
  |================================================                     |  70%
| So, back to the task at hand. Now that we have a vector, my_na, that has a
| TRUE for every NA and FALSE for every numeric value, we can compute the
| total number of NAs in our data.

...
  |====================================================                 |  75%
| The trick is to recognize that underneath the surface, R represents TRUE as
| the number 1 and FALSE as the number 0. Therefore, if we take the sum of a
| bunch of TRUEs and FALSEs, we get the total number of TRUEs.

...
  |=======================================================              |  80%
| Let's give that a try here. Call the sum() function on my_na to count the
| total number of TRUEs in my_na, and thus the total number of NAs in my_data.
| Don't assign the result to a new variable.

> sum(my_na)
[1] 49

| Perseverance, that's the answer.
  |===========================================================          |  85%
| Pretty cool, huh? Finally, let's take a look at the data to convince
| ourselves that everything 'adds up'. Print my_data to the console.

> 
> my_data
  [1]  0.61238101          NA  1.29763728          NA          NA -0.90428593
  [7]          NA          NA          NA  0.06064508          NA  0.45247875
 [13] -2.70768645          NA -0.54904685 -0.59351615          NA          NA
 [19]          NA  0.52090041  1.22872502 -0.83816266 -0.17955842          NA
 [25]  0.67614114          NA          NA          NA  0.39943016  1.98251142
 [31]          NA  0.57198805 -0.79424087          NA  1.46529670  0.84802585
 [37] -0.38208245 -1.43003552          NA          NA -0.43037650 -0.31907329
 [43]          NA  0.90064479          NA  0.87264127          NA  0.01920046
 [49]  0.26351184  0.82433774 -0.55917613          NA -0.86488739  1.28060150
 [55]          NA          NA          NA -0.39967199          NA  0.27799820
 [61]  0.25175915 -1.87313150  0.01853822          NA          NA  0.51275010
 [67]  1.30295868          NA  1.16120641          NA  0.24295801          NA
 [73] -0.46749515          NA          NA -1.21130851          NA          NA
 [79]  1.52841630          NA          NA          NA -0.13722726  0.44508304
 [85] -0.61539851          NA -1.10865788          NA          NA  0.16439983
 [91] -0.56732278          NA          NA          NA  0.06572938          NA
 [97]          NA          NA -0.36465354          NA

| Your dedication is inspiring!
  |==============================================================       |  90%
| Now that we've got NAs down pat, let's look at a second type of missing
| value -- NaN, which stands for 'not a number'. To generate NaN, try dividing
| (using a forward slash) 0 by 0 now.

> 
> my_data/0
  [1]  Inf   NA  Inf   NA   NA -Inf   NA   NA   NA  Inf   NA  Inf -Inf   NA
 [15] -Inf -Inf   NA   NA   NA  Inf  Inf -Inf -Inf   NA  Inf   NA   NA   NA
 [29]  Inf  Inf   NA  Inf -Inf   NA  Inf  Inf -Inf -Inf   NA   NA -Inf -Inf
 [43]   NA  Inf   NA  Inf   NA  Inf  Inf  Inf -Inf   NA -Inf  Inf   NA   NA
 [57]   NA -Inf   NA  Inf  Inf -Inf  Inf   NA   NA  Inf  Inf   NA  Inf   NA
 [71]  Inf   NA -Inf   NA   NA -Inf   NA   NA  Inf   NA   NA   NA -Inf  Inf
 [85] -Inf   NA -Inf   NA   NA  Inf -Inf   NA   NA   NA  Inf   NA   NA   NA
 [99] -Inf   NA

| Give it another try. Or, type info() for more options.

| Try 0/0.

> 0/0
[1] NaN

| Perseverance, that's the answer.
  |==================================================================   |  95%
| Let's do one more, just for fun. In R, Inf stands for infinity. What happens
| if you subtract Inf from Inf?

> 
> Inf-Inf
[1] NaN

| You got it right!
  |=====================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? alicechen005@gmail.com
What is your assignment token? 903Hv7Bj8Uz3WI2n
Grade submission succeeded!

| You're the best!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 
