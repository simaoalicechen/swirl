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

What shall I call you? ALice

| Would you like to continue with one of these lessons?

1: R Programming Functions
2: No. Let me start something new.

Selection: 2

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

Selection: 13
  |                                                                     |   0%

| One of the great advantages of using a statistical programming language like
| R is its vast collection of tools for simulating random numbers.

...
  |==                                                                   |   3%
| This lesson assumes familiarity with a few common probability distributions,
| but these topics will only be discussed with respect to random number
| generation. Even if you have no prior experience with these concepts, you
| should be able to complete the lesson and understand the main ideas.

...
  |====                                                                 |   6%
| The first function we'll use to generate random numbers is sample(). Use
| ?sample to pull up the documentation.

> sample()
Error in sample() : argument "x" is missing, with no default
> ?sample
starting httpd help server ... done

| Excellent work!
  |======                                                               |   9%
| Let's simulate rolling four six-sided dice: sample(1:6, 4, replace = TRUE).

> 
> sample(1:6, 4, replace=TRUE)
[1] 4 5 3 1

| You're the best!
  |========                                                             |  12%
| Now repeat the command to see how your result differs. (The probability of
| rolling the exact same result is (1/6)^4 = 0.00077, which is pretty small!)

> 
> library(swirl)

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type
| info() for more options.

| Type sample(1:6, 4, replace = TRUE) to simulate rolling four six-sided dice
| again.

> sample(1:6, 4, replace=TRUE)
[1] 2 2 4 4

| You're the best!
  |==========                                                           |  15%
| sample(1:6, 4, replace = TRUE) instructs R to randomly select four numbers
| between 1 and 6, WITH replacement. Sampling with replacement simply means
| that each number is "replaced" after it is selected, so that the same number
| can show up more than once. This is what we want here, since what you roll
| on one die shouldn't affect what you roll on any of the others.

...
  |=============                                                        |  18%
| Now sample 10 numbers between 1 and 20, WITHOUT replacement. To sample
| without replacement, simply leave off the 'replace' argument.

> sample(1:20, 2)
[1]  7 20

| Not quite! Try again. Or, type info() for more options.

| Type sample(1:20, 10) to sample 10 numbers between 1 and 20, without
| replacement.

> sample(1:20, 10)
 [1]  4  8 17 10 11  7 12  6 18  2

| You're the best!
  |===============                                                      |  21%
| Since the last command sampled without replacement, no number appears more
| than once in the output.

...
  |=================                                                    |  24%
| LETTERS is a predefined variable in R containing a vector of all 26 letters
| of the English alphabet. Take a look at it now.

> 
> LETTERS
 [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R"
[19] "S" "T" "U" "V" "W" "X" "Y" "Z"

| That's the answer I was looking for.
  |===================                                                  |  27%
| The sample() function can also be used to permute, or rearrange, the
| elements of a vector. For example, try sample(LETTERS) to permute all 26
| letters of the English alphabet.

> 
> sample(LETTERS)
 [1] "N" "G" "S" "B" "D" "O" "X" "T" "A" "I" "R" "W" "F" "C" "M" "Q" "V" "P"
[19] "E" "Z" "L" "J" "Y" "H" "U" "K"

| You got it!
  |=====================                                                |  30%
| This is identical to taking a sample of size 26 from LETTERS, without
| replacement. When the 'size' argument to sample() is not specified, R takes
| a sample equal in size to the vector from which you are sampling.

...
  |=======================                                              |  33%
| Now, suppose we want to simulate 100 flips of an unfair two-sided coin. This
| particular coin has a 0.3 probability of landing 'tails' and a 0.7
| probability of landing 'heads'.

...
  |=========================                                            |  36%
| Let the value 0 represent tails and the value 1 represent heads. Use
| sample() to draw a sample of size 100 from the vector c(0,1), with
| replacement. Since the coin is unfair, we must attach specific probabilities
| to the values 0 (tails) and 1 (heads) with a fourth argument, prob = c(0.3,
| 0.7). Assign the result to a new variable called flips.

> prob=c(0.3, 0.7)

| That's not exactly what I'm looking for. Try again. Or, type info() for more
| options.

| The following command will produce 100 flips of an unfair coin and assign
| the result: flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

> flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

| Great job!
  |===========================                                          |  39%
| View the contents of the flips variable.

> flips
  [1] 1 1 1 0 1 1 1 1 0 0 1 1 0 0 1 0 0 1 0 1 1 0 0 1 0 1 1 0 0 1 1 1 1 1 1 1 1
 [38] 1 0 0 0 1 1 1 1 0 0 1 0 0 0 1 0 1 1 1 1 0 0 1 1 0 0 1 1 0 1 0 1 1 1 1 1 1
 [75] 1 0 0 0 1 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 1 0 0 0 1 1

| That's a job well done!
  |=============================                                        |  42%
| Since we set the probability of landing heads on any given flip to be 0.7,
| we'd expect approximately 70 of our coin flips to have the value 1. Count
| the actual number of 1s contained in flips using the sum() function.

> sum()
[1] 0

| That's not exactly what I'm looking for. Try again. Or, type info() for more
| options.

| sum(flips) will add up all the 1s and 0s, giving you the total number of 1s
| in flips.

> sum(flips)
[1] 63

| You are doing so well!
  |===============================                                      |  45%
| A coin flip is a binary outcome (0 or 1) and we are performing 100
| independent trials (coin flips), so we can use rbinom() to simulate a
| binomial random variable. Pull up the documentation for rbinom() using
| ?rbinom.

> 
> ?rbinom

| Perseverance, that's the answer.
  |=================================                                    |  48%
| Each probability distribution in R has an r*** function (for "random"), a
| d*** function (for "density"), a p*** (for "probability"), and q*** (for
| "quantile"). We are most interested in the r*** functions in this lesson,
| but I encourage you to explore the others on your own.

...
  |====================================                                 |  52%
| A binomial random variable represents the number of 'successes' (heads) in a
| given number of independent 'trials' (coin flips). Therefore, we can
| generate a single random variable that represents the number of heads in 100
| flips of our unfair coin using rbinom(1, size = 100, prob = 0.7). Note that
| you only specify the probability of 'success' (heads) and NOT the
| probability of 'failure' (tails). Try it now.

> 
> rbinom(1, size = 100, prob = 0.7)
[1] 72

| Excellent job!
  |======================================                               |  55%
| Equivalently, if we want to see all of the 0s and 1s, we can request 100
| observations, each of size 1, with success probability of 0.7. Give it a
| try, assigning the result to a new variable called flips2.

> flip2<- rbinom(1, size = 1 prob = 0.7)
Error: unexpected symbol in "flip2<- rbinom(1, size = 1 prob"
> flip2<- rbinom(1, size = 1, prob = 0.7)

| One more time. You can do it! Or, type info() for more options.

| Call rbinom() with n = 100, size = 1, and prob = 0.7 and assign the result
| to flips2.

> flip2<- rbinom(100, size = 1, prob = 0.7)

| Give it another try. Or, type info() for more options.

| Call rbinom() with n = 100, size = 1, and prob = 0.7 and assign the result
| to flips2.

> flips2<- rbinom(100, size = 1, prob = 0.7)

| All that practice is paying off!
  |========================================                             |  58%
| View the contents of flips2.

> flips2
  [1] 1 1 1 0 1 1 1 1 0 1 1 0 1 0 1 1 1 1 1 0 1 1 1 0 1 1 1 0 0 1 1 0 1 1 1 0 1
 [38] 1 1 1 1 1 1 1 0 1 0 1 1 1 1 0 0 1 0 1 1 0 0 1 0 0 1 0 1 1 1 0 0 1 1 1 1 1
 [75] 1 1 0 0 1 1 0 1 1 0 1 0 1 0 1 0 1 0 1 0 1 1 0 1 1 1

| Perseverance, that's the answer.
  |==========================================                           |  61%
| Now use sum() to count the number of 1s (heads) in flips2. It should be
| close to 70!

> cum(flips2)
Error in cum(flips2) : could not find function "cum"
> sum(flips2)
[1] 68

| Perseverance, that's the answer.
  |============================================                         |  64%
| Similar to rbinom(), we can use R to simulate random numbers from many other
| probability distributions. Pull up the documentation for rnorm() now.

> 
> rnom()
Error in rnom() : could not find function "rnom"
> rnorm()
Error in rnorm() : argument "n" is missing, with no default
> rnorm(flips2)
  [1]  0.75957643  0.29295685  0.39727430 -2.43324613  0.10011168 -0.12626617
  [7]  1.30718888  1.46318534  1.63194234 -1.10787178 -1.01594812  1.32725691
 [13]  0.54617065  0.03684945 -0.56119403  0.77912552  0.24724017  1.60800958
 [19]  1.05272111  0.58180434  1.81822118  0.48789635  0.85356541 -1.72968318
 [25] -1.58920366  1.60903417 -0.54771706  0.54039797 -0.04578910 -0.17134584
 [31]  0.33729432  1.02998430 -0.54358648  0.33476486 -0.64740639 -1.84780052
 [37]  0.89502907 -0.40785260 -1.10494003  1.11481548  0.12939421 -4.16037714
 [43]  0.07618575  0.25030917  1.09395718  0.61281109 -0.09755635 -1.34666776
 [49] -0.50783591  0.42049184 -0.57842551 -0.03444728  0.54117438 -0.92085574
 [55]  0.44101888 -0.90650306  0.17995074 -0.23576728 -2.49948431  0.05694010
 [61] -0.20470796  0.15720949 -0.97555446 -0.30076041 -0.26705805  0.70157044
 [67]  0.34027439  1.72479502 -0.19608650 -1.01661148  1.66120891 -0.13863561
 [73]  0.57729551 -0.33324073 -0.65766171  2.13847299 -0.27996784 -1.24288267
 [79]  0.53497995  1.14938810 -0.79923878  0.27966966 -0.45936211  0.70579084
 [85]  1.35146380 -0.39558059  0.87752244  0.91622687  1.63154828 -0.74058735
 [91]  2.11834462 -0.63937844  1.17152242  0.73460321  0.05474678 -0.03287409
 [97]  0.48835815  0.54299978  0.35726471 -1.34960382

| That's not exactly what I'm looking for. Try again. Or, type info() for more
| options.

| Type ?rnorm to view its help file.

> ?rnom
No documentation for ‘rnom’ in specified packages and libraries:
you could try ‘??rnom’

| Give it another try. Or, type info() for more options.

| Type ?rnorm to view its help file.

> ?rnorm

| You got it!
  |==============================================                       |  67%
| The standard normal distribution has mean 0 and standard deviation 1. As you
| can see under the 'Usage' section in the documentation, the default values
| for the 'mean' and 'sd' arguments to rnorm() are 0 and 1, respectively.
| Thus, rnorm(10) will generate 10 random numbers from a standard normal
| distribution. Give it a try.

> 
> rnorm(10)
 [1]  0.6970946  0.5265860  0.9426432  0.1875119 -0.7621880  0.5803874
 [7] -0.5156757 -0.7338090 -1.3648335 -0.9943670

| You are really on a roll!
  |================================================                     |  70%
| Now do the same, except with a mean of 100 and a standard deviation of 25.

> 
> rnorm(100)
  [1]  1.63435179 -0.10983528  2.38525975 -0.72144814 -1.15004435 -0.88300003
  [7] -1.47189612 -0.75827387  0.77231402 -2.28797068 -1.07020143  0.96793768
 [13]  1.28426297  0.12980224  0.47420410 -1.43575687  0.27463030  0.22180348
 [19]  0.30824979 -1.03494638  1.29490427  0.78733637  0.06400621 -0.19148013
 [25] -0.18625335  2.23893252  0.38397049  0.52150425 -1.43470989  0.95405017
 [31] -0.33624735  0.36693132 -0.77047055  0.56561826 -0.27231435 -1.22249168
 [37]  1.12770357 -1.02937176 -1.24768718  0.56165640  2.12052785 -1.81876135
 [43]  0.10857089  1.42651044  1.12916326 -0.19031591  0.09261643  0.04046601
 [49]  0.75198495  0.63850641  0.94886424 -2.31667914  0.66426212  0.10548400
 [55]  0.50586063  0.41977453  0.52333770 -1.30346536 -0.89713510  0.02114891
 [61]  0.71042258 -0.70687847  0.57374168  1.43057142  0.73135845 -1.12513465
 [67]  2.79672393 -0.27818500 -0.54108329  1.47567597 -1.00632090 -0.65136096
 [73]  0.54835756 -0.81283615 -0.51340288  1.36298562  1.79836414  1.35456585
 [79]  1.02037062  0.61272610 -1.12162378  1.72105503 -1.68206968  0.77558966
 [85] -0.76314339 -0.54716288 -1.22845181  0.36873295 -1.36684909 -0.51551865
 [91]  0.95509788  1.19577571 -0.40728817  1.29182220 -0.49676022  0.65586687
 [97] -0.59041592 -0.84284710 -0.28237590  0.13936162

| Almost! Try again. Or, type info() for more options.

| Use rnorm(10, mean = 100, sd = 25) to generate 10 random numbers from a
| normal distribution with mean 100 and standard deviation 25.

> rnorm(10, mean =100, sd -25)
Error in sd - 25 : non-numeric argument to binary operator
> rnorm(10, mean =100, sd =25)
 [1] 102.78973  78.39791 152.60842  59.75745 131.44827 106.71943 112.46476
 [8] 158.74246 163.07654 106.41213

| Perseverance, that's the answer.
  |==================================================                   |  73%
| Finally, what if we want to simulate 100 *groups* of random numbers, each
| containing 5 values generated from a Poisson distribution with mean 10?
| Let's start with one group of 5 numbers, then I'll show you how to repeat
| the operation 100 times in a convenient and compact way.

...
  |====================================================                 |  76%
| Generate 5 random values from a Poisson distribution with mean 10. Check out
| the documentation for rpois() if you need help.

> 
> rpois(5)
Error in rpois(5) : argument "lambda" is missing, with no default
> rpois(5)
Error in rpois(5) : argument "lambda" is missing, with no default
> rpois()
Error in rpois() : argument "n" is missing, with no default
> rpois(5, mean =10)
Error in rpois(5, mean = 10) : unused argument (mean = 10)
> rpois(mean = 10)
Error in rpois(mean = 10) : unused argument (mean = 10)
> rpois(10)
Error in rpois(10) : argument "lambda" is missing, with no default
> rpois(5, lambda = 10)
[1] 10 11 10  8  8

| You are really on a roll!
  |======================================================               |  79%
| Now use replicate(100, rpois(5, 10)) to perform this operation 100 times.
| Store the result in a new variable called my_pois.

> replicate(100, rpois(5, 10))
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13]
[1,]    6    8    8    9    9    9    8   17    8    12     4     7     5
[2,]   12   10   10    8   14   18    8   10   11    12     9    11     7
[3,]   10   13   12    9   13    7    8   14    7     9     6    13     8
[4,]   12    9   12   12   11   10   10   13   10    17     4     6    12
[5,]    7    9   10    6   14   18   15   10   16    13    16     9     9
     [,14] [,15] [,16] [,17] [,18] [,19] [,20] [,21] [,22] [,23] [,24] [,25]
[1,]     7     8    10    11     8    11    14     6     9     9     8     9
[2,]     5    12     8    12     9     7    11    10    15     5    10    13
[3,]     9    10    10    13     6    11    12    10     9    10     7     8
[4,]     5    13     8    13    14     5    14    11    11     8     7    10
[5,]     7    11    13     5    14     5     7    10    10     9     6    10
     [,26] [,27] [,28] [,29] [,30] [,31] [,32] [,33] [,34] [,35] [,36] [,37]
[1,]    12     4    12    14     8    11     9     9     9     5     9    10
[2,]    13     8    11    15    12    11     7    11    12    15    11     5
[3,]     8     8     9     5    15    13    13     9    13    12     9    13
[4,]    13    13     7     7    11    14    10    15     6    13    10     9
[5,]    10     8    11    18     7     9    10    16    12    10    13    13
     [,38] [,39] [,40] [,41] [,42] [,43] [,44] [,45] [,46] [,47] [,48] [,49]
[1,]     8    12    20    11    10     9     9     7    10     9    11    18
[2,]    11    16     9    14    16     8    10     9    14     8    18     7
[3,]    10    13     7    13     8    10     6    10     8    12     6    13
[4,]     9    11     5     6    10     8    10    10    12    10    12     9
[5,]    10    10    13    15    13    11    10     6     9    11    13    15
     [,50] [,51] [,52] [,53] [,54] [,55] [,56] [,57] [,58] [,59] [,60] [,61]
[1,]     4     8     6    10     9     8    13     9    14    13    14    10
[2,]    16     9     5     9     7    10    11    11    10     7    10    14
[3,]     8     7     5    11     8    14    14    10     7     9    14     7
[4,]    17     7     7    10    10    10    11    19     8     8    12     7
[5,]     6    15    12    10     8    11    10    11    16     5     8    15
     [,62] [,63] [,64] [,65] [,66] [,67] [,68] [,69] [,70] [,71] [,72] [,73]
[1,]     9    12    15    14     6    13     5    12     9    16    11    10
[2,]     7     7    12     6    13    11    22    14     6    15    13     7
[3,]    12    15     7     8    12     7     7    10     7    14     9     5
[4,]    13     9    12     9    14    14     8     9    12     9     8    11
[5,]    13    16    15     8     9     6    11    13    10     5    13    14
     [,74] [,75] [,76] [,77] [,78] [,79] [,80] [,81] [,82] [,83] [,84] [,85]
[1,]    11    15    13     6     8    12    11    12     7     9    10    18
[2,]     5    12    13    13     8     9    15     8    11     4     9     9
[3,]     8    13    13    14     7    10    12     6     4    10    13    12
[4,]    14    14    10     7    11    12    10    16     8     7    13    12
[5,]     8    16     7    12    12     9     5    13     7    10     7    12
     [,86] [,87] [,88] [,89] [,90] [,91] [,92] [,93] [,94] [,95] [,96] [,97]
[1,]     9    12    10     5     9    10    12     6    10     9    17     8
[2,]    13    12     8     9     3     9    11    15    12    12    12     9
[3,]     7    10    13     9     8     8     8    11    11    12     7    12
[4,]    10    13    10     9     7    11     8    16     8     8     6    17
[5,]    11     8    11    11     4     5    11     6    11    10     5     6
     [,98] [,99] [,100]
[1,]     9     4     11
[2,]     8     8      8
[3,]    10     7     10
[4,]     9     7      8
[5,]     5    12     12

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type
| info() for more options.

| my_pois <- replicate(100, rpois(5, 10)) will repeat the operation 100 times
| and store the result.

> my_pois <- replicate(100, rpois(5, 10)) 

| Nice work!
  |========================================================             |  82%
| Take a look at the contents of my_pois.

> my_pois
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13]
[1,]   17    7   12   11    9    9    9    5    7    10     8     8    11
[2,]    8    8   13    3   13   10    6   11    5     6    11     9    15
[3,]   10   14    9   11   13   12   19    8    7    13     5    14    13
[4,]    9   11    8   12    4   10   11    7    5    11     4    11     1
[5,]    7   15    9   11   15    9    7   11   22    13     9    12     7
     [,14] [,15] [,16] [,17] [,18] [,19] [,20] [,21] [,22] [,23] [,24] [,25]
[1,]     8     6    13    12    10    10    11    16     7    10    12     6
[2,]     9    10    11    10     6     7     6    15     5    10     6     8
[3,]    11    10    14    14     9     6     6    12    10    17    12    11
[4,]    12     8     9    14    10    13     8    10    15    11    13    10
[5,]     9     9    10     5    11    11    11     8    13     9    12    13
     [,26] [,27] [,28] [,29] [,30] [,31] [,32] [,33] [,34] [,35] [,36] [,37]
[1,]    12    13    15     8     6     9    12     9    11     8     9    15
[2,]    14     7     9     8    12    14     5     5     8     9     9    11
[3,]     5    12    11     8     8     9    10     8     8    17    10    12
[4,]    13     8     7    12    15     6    11     5     8     9    10    10
[5,]     9    12     7    10     5     7    17     9     8    18     8    14
     [,38] [,39] [,40] [,41] [,42] [,43] [,44] [,45] [,46] [,47] [,48] [,49]
[1,]     8    11     9    18    14     9     6     8     7    11     9     9
[2,]     8    13     7    11    11    10     7     6     8    19    10     8
[3,]     9    12    12     7     7     9    15    11     8     6     8    12
[4,]    11     9     8    10    11    11    13    10    14     8     4    10
[5,]    10     8    11     9     7    11     9     8    12     9     8    11
     [,50] [,51] [,52] [,53] [,54] [,55] [,56] [,57] [,58] [,59] [,60] [,61]
[1,]    13     8    16    10     8     6    14     8     9     7     6     6
[2,]    13     5     6    14    11     8     6     7    12    11     7     8
[3,]     7    11     9     7    12    11    12     4     8     7    10    12
[4,]    14    10    13    13     7    15     6    14     8    11     8     8
[5,]    11     9    12     9    10    10    12     9    11    15     9     9
     [,62] [,63] [,64] [,65] [,66] [,67] [,68] [,69] [,70] [,71] [,72] [,73]
[1,]     6    15    12     8     7    14     5    12    10    10    17     4
[2,]     7     8    13    11    10    12     6    12    13    13    13     8
[3,]     9    11     9     8    11    15    10    15     8    14    11     6
[4,]     8     8    10    11    14    12     8     5    16     3    13     8
[5,]     8     8    10     9    11    10     7    11     8    11     9     6
     [,74] [,75] [,76] [,77] [,78] [,79] [,80] [,81] [,82] [,83] [,84] [,85]
[1,]     4     9    12     8    13    12    10    12    12     9    10    11
[2,]     8    11    11    14    10    12     6    11    14     6     6    12
[3,]     5    12    12    10     8     6     8    12    12     6    13    10
[4,]     8    13     4    10    10    11     5     9     7     9     4    10
[5,]    15     8    12    11    13     9    13    12    10     9     9    12
     [,86] [,87] [,88] [,89] [,90] [,91] [,92] [,93] [,94] [,95] [,96] [,97]
[1,]    11    10     7    12     9    10     6    10     6    10     9     5
[2,]     9     5    13     5     9    16     3     8     9     6    15    13
[3,]     7     7     4     9     8    10    10    10    14    19    14    13
[4,]    11    10     9    15     8     9     7    10    10    13     9     7
[5,]     8     8     4    15     7     5    11    16     8    13    12    12
     [,98] [,99] [,100]
[1,]     3     9      4
[2,]    10     9      8
[3,]     4     9      7
[4,]     8    11      8
[5,]     6    15      7

| Keep working like that and you'll get there!
  |===========================================================          |  85%
| replicate() created a matrix, each column of which contains 5 random numbers
| generated from a Poisson distribution with mean 10. Now we can find the mean
| of each column in my_pois using the colMeans() function. Store the result in
| a variable called cm.

> 
> colMeans()
Error in is.data.frame(x) : argument "x" is missing, with no default
> colMeans(my_pois)
  [1] 10.2 11.0 10.2  9.6 10.8 10.0 10.4  8.4  9.2 10.6  7.4 10.8  9.4  9.8
 [15]  8.6 11.4 11.0  9.2  9.4  8.4 12.2 10.0 11.4 11.0  9.6 10.6 10.4  9.8
 [29]  9.2  9.2  9.0 11.0  7.2  8.6 12.2  9.2 12.4  9.2 10.6  9.4 11.0 10.0
 [43] 10.0 10.0  8.6  9.8 10.6  7.8 10.0 11.6  8.6 11.2 10.6  9.6 10.0 10.0
 [57]  8.4  9.6 10.2  8.0  8.6  7.6 10.0 10.8  9.4 10.6 12.6  7.2 11.0 11.0
 [71] 10.2 12.6  6.4  8.0 10.6 10.2 10.6 10.8 10.0  8.4 11.2 11.0  7.8  8.4
 [85] 11.0  9.2  8.0  7.4 11.2  8.2 10.0  7.4 10.8  9.4 12.2 11.8 10.0  6.2
 [99] 10.6  6.8

| Nice try, but that's not exactly what I was hoping for. Try again. Or, type
| info() for more options.

| Use cm <- colMeans(my_pois) to create a vector of column means, storing the
| result in cm.

> cm <- colMeans(my_pois)

| You are doing so well!
  |=============================================================        |  88%
| And let's take a look at the distribution of our column means by plotting a
| histogram with hist(cm).

> hist(cm)

| Perseverance, that's the answer.
  |===============================================================      |  91%
| Looks like our column means are almost normally distributed, right? That's
| the Central Limit Theorem at work, but that's a lesson for another day!

...
  |=================================================================    |  94%
| All of the standard probability distributions are built into R, including
| exponential (rexp()), chi-squared (rchisq()), gamma (rgamma()), .... Well,
| you see the pattern.

...
  |===================================================================  |  97%
| Simulation is practically a field of its own and we've only skimmed the
| surface of what's possible. I encourage you to explore these and other
| functions further on your own.

...
  |=====================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? alicechen005@gmail.com
What is your assignment token? EtBZPEMmVYvP10nj
Grade submission succeeded!

| You got it right!

| You've reached the end of this lesson! Returning to the main menu...

| Would you like to continue with one of these lessons?

1: R Programming Functions
2: No. Let me start something new.

Selection: 
