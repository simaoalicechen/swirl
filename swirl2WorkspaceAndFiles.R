| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 2

| OK. I'm opening the swirl courses web page in your browser.

| Leaving swirl now. Type swirl() to resume.

> 1
[1] 1
> 1
[1] 1
> swirl
function (resume.class = "default", ...) 
{
    removeTaskCallback("mini")
    e <- new.env(globalenv())
    class(e) <- c("environment", resume.class)
    cb <- function(expr, val, ok, vis, data = e) {
        e$expr <- expr
        e$val <- val
        e$ok <- ok
        e$vis <- vis
        return(resume(e, ...))
    }
    addTaskCallback(cb, name = "mini")
    invisible()
}
<bytecode: 0x7fccdd370738>
<environment: namespace:swirl>
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

Selection: 2
  |                                                                     |   0%

| In this lesson, you'll learn how to examine your local workspace in R and
| begin to explore the relationship between your workspace and the file system
| of your machine.

...
  |==                                                                   |   3%
| Because different operating systems have different conventions with regards
| to things like file paths, the outputs of these commands may vary across
| machines.

...
  |====                                                                 |   5%
| However it's important to note that R provides a common API (a common set of
| commands) for interacting with files, that way your code will work across
| different kinds of computers.

...
  |=====                                                                |   8%
| Let's jump right in so you can get a feel for how these special functions
| work!

...
  |=======                                                              |  10%
| Determine which directory your R session is using as its current working
| directory using getwd().

> 
> getwd()
[1] "/Users/alicechen"

| Great job!
  |=========                                                            |  13%
| List all the objects in your local workspace using ls().

> ls()
[1] "my_div"  "my_sqrt" "x"       "y"       "z"      

| Keep up the great work!
  |===========                                                          |  15%
| Some R commands are the same as their equivalents commands on Linux or on a
| Mac. Both Linux and Mac operating systems are based on an operating system
| called Unix. It's always a good idea to learn more about Unix!

...
  |============                                                         |  18%
| Assign 9 to x using x <- 9.

> x<-9

| You're the best!
  |==============                                                       |  21%
| Now take a look at objects that are in your workspace using ls().

> ls()
[1] "my_div"  "my_sqrt" "x"       "y"       "z"      

| You are doing so well!
  |================                                                     |  23%
| List all the files in your working directory using list.files() or dir().

> list.files()
 [1] "Applicant.docx"                                         
 [2] "Applications"                                           
 [3] "Dear Board Members.docx"                                
 [4] "Desktop"                                                
 [5] "Documents"                                              
 [6] "Downloads"                                              
 [7] "Draft email to professionals--FAcTS.docx"               
 [8] "get-pip.py"                                             
 [9] "job description.docx"                                   
[10] "Library"                                                
[11] "Meeting with Rachel-journal update.docx"                
[12] "Movies"                                                 
[13] "Music"                                                  
[14] "nltk_data"                                              
[15] "Pictures"                                               
[16] "Public"                                                 
[17] "Quiz 1"                                                 
[18] "Reference Letter 2.docx"                                
[19] "Simao Chen's Residential Reference Letter .docx"        
[20] "Statement of functional expenses for the year 2018.docx"
[21] "Table of Contents.docx"                                 
[22] "Test1"                                                  
[23] "wekafiles"                                              

| Nice work!
  |==================                                                   |  26%
| As we go through this lesson, you should be examining the help page for each
| new function. Check out the help page for list.files with the command
| ?list.files.

> ?list.files.
No documentation for ‘list.files.’ in specified packages and libraries:
you could try ‘??list.files.’

| Give it another try. Or, type info() for more options.

| Type ?list.files to see the help page.

> ??list.files

| One more time. You can do it! Or, type info() for more options.

| Type ?list.files to see the help page.

> info()

| When you are at the R prompt (>):
| -- Typing skip() allows you to skip the current question.
| -- Typing play() lets you experiment with R on your own; swirl will ignore
| what you do...
| -- UNTIL you type nxt() which will regain swirl's attention.
| -- Typing bye() causes swirl to exit. Your progress will be saved.
| -- Typing main() returns you to swirl's main menu.
| -- Typing info() displays these options again.

> ?list.files.
No documentation for ‘list.files.’ in specified packages and libraries:
you could try ‘??list.files.’

| Give it another try. Or, type info() for more options.

| Type ?list.files to see the help page.

> ?list.files

| You are amazing!
  |===================                                                  |  28%
| One of the most helpful parts of any R help file is the See Also section.
| Read that section for list.files. Some of these functions may be used in
| later portions of this lesson.

...
  |=====================                                                |  31%
| Using the args() function on a function name is also a handy way to see what
| arguments a function can take.

...
  |=======================                                              |  33%
| Use the args() function to determine the arguments to list.files().

> args()
Error in args() : argument "name" is missing, with no default
> args(Test1)
Error in args(Test1) : object 'Test1' not found
> args(x)
NULL

| Not quite, but you're learning! Try again. Or, type info() for more options.

| Type args(list.files) to see the arguments to list.files.

> args(list.files)
function (path = ".", pattern = NULL, all.files = FALSE, full.names = FALSE, 
    recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, 
    no.. = FALSE) 
NULL

| All that hard work is paying off!
  |=========================                                            |  36%
| Assign the value of the current working directory to a variable called
| "old.dir".

> old.dir<-args(list.files)

| Keep trying! Or, type info() for more options.

| Type old.dir <- getwd() to assign the value of the current working directory
| to a variable called "old.dir".

> old.dir<-getwd()

| Perseverance, that's the answer.
  |===========================                                          |  38%
| We will use old.dir at the end of this lesson to move back to the place that
| we started. A lot of query functions like getwd() have the useful property
| that they return the answer to the question as a result of the function.

...
  |============================                                         |  41%
| Use dir.create() to create a directory in the current working directory
| called "testdir".

> testdir<-dir.create()
Error in dir.create() : argument "path" is missing, with no default
> dir.create(testdir)
Error in dir.create(testdir) : object 'testdir' not found
> dir.create("testdir")

| You're the best!
  |==============================                                       |  44%
| We will do all our work in this new directory and then delete it after we
| are done. This is the R analog to "Take only pictures, leave only
| footprints."

...
  |================================                                     |  46%
| Set your working directory to "testdir" with the setwd() command.

> setwd()
Error in setwd() : argument "dir" is missing, with no default
> setwd(dir)
Error in setwd(dir) : character argument expected
> setwd("testdir")

| Keep working like that and you'll get there!
  |==================================                                   |  49%
| In general, you will want your working directory to be someplace sensible,
| perhaps created for the specific project that you are working on. In fact,
| organizing your work in R packages using RStudio is an excellent option.
| Check out RStudio at http://www.rstudio.com/

...file.create("mytest.R")
  |===================================                                  |  51%
| Create a file in your working directory called "mytest.R" using the
| file.create() function.

> file.create("mytest.R")
[1] TRUE

| You are quite good my friend!
  |=====================================                                |  54%
| This should be the only file in this newly created directory. Let's check
| this by listing all the files in the current directory.

> 
> lists.files()
Error in lists.files() : could not find function "lists.files"
> list.files()
[1] "mytest.R"

| That's a job well done!
  |=======================================                              |  56%
| Check to see if "mytest.R" exists in the working directory using the
| file.exists() function.

> file.exists("mytest.R")
[1] TRUE

| You're the best!
  |=========================================                            |  59%
| These sorts of functions are excessive for interactive use. But, if you are
| running a program that loops through a series of files and does some
| processing on each one, you will want to check to see that each exists
| before you try to process it.

...
  |==========================================                           |  62%
| Access information about the file "mytest.R" by using file.info().

> file.info("mytest.R")
         size isdir mode               mtime               ctime
mytest.R    0 FALSE  644 2020-07-24 01:56:22 2020-07-24 01:56:22
                       atime uid gid     uname grname
mytest.R 2020-07-24 01:56:22 501  20 alicechen  staff

| Great job!
  |============================================                         |  64%
| You can use the $ operator --- e.g., file.info("mytest.R")$mode --- to grab
| specific items.

...
  |==============================================                       |  67%
| Change the name of the file "mytest.R" to "mytest2.R" by using
| file.rename().

> file.rename("mytest.R", "mytest2.R")
[1] TRUE

| All that practice is paying off!
  |================================================                     |  69%
| Your operating system will provide simpler tools for these sorts of tasks,
| but having the ability to manipulate files programatically is useful. You
| might now try to delete mytest.R using file.remove('mytest.R'), but that
| won't work since mytest.R no longer exists. You have already renamed it.

...
  |==================================================                   |  72%
| Make a copy of "mytest2.R" called "mytest3.R" using file.copy().

> file.copy("mytest2.R", "metest3.R")
[1] TRUE

| Keep trying! Or, type info() for more options.

| file.copy("mytest2.R", "mytest3.R") works.

> file.copy("mytest2.R", "mytest3.R")
[1] TRUE

| That's correct!
  |===================================================                  |  74%
| You now have two files in the current directory. That may not seem very
| interesting. But what if you were working with dozens, or millions, of
| individual files? In that case, being able to programatically act on many
| files would be absolutely necessary. Don't forget that you can, temporarily,
| leave the lesson by typing play() and then return by typing nxt().

...
  |=====================================================                |  77%
| Provide the relative path to the file "mytest3.R" by using file.path().

> file.path("mytest3.R")
[1] "mytest3.R"

| Perseverance, that's the answer.
  |=======================================================              |  79%
| You can use file.path to construct file and directory paths that are
| independent of the operating system your R code is running on. Pass
| 'folder1' and 'folder2' as arguments to file.path to make a
| platform-independent pathname.

> file.path("folder1", "folder2")
[1] "folder1/folder2"

| All that practice is paying off!
  |=========================================================            |  82%
| Take a look at the documentation for dir.create by entering ?dir.create .
| Notice the 'recursive' argument. In order to create nested directories,
| 'recursive' must be set to TRUE.

> ?dir.create

| Your dedication is inspiring!
  |==========================================================           |  85%
| Create a directory in the current working directory called "testdir2" and a
| subdirectory for it called "testdir3", all in one command by using
| dir.create() and file.path().

> dir.create(file.path("testdir2", "testdir3"), recursive = TRUE)

| Keep working like that and you'll get there!
  |============================================================         |  87%
| Go back to your original working directory using setwd(). (Recall that we
| created the variable old.dir with the full path for the orginal working
| directory at the start of these questions.)

> 
> setwd(old.dir)

| Nice work!
  |==============================================================       |  90%
| It is often helpful to save the settings that you had before you began an
| analysis and then go back to them at the end. This trick is often used
| within functions; you save, say, the par() settings that you started with,
| mess around a bunch, and then set them back to the original values at the
| end. This isn't the same as what we have done here, but it seems similar
| enough to mention.

...
  |================================================================     |  92%
| After you finish this lesson delete the 'testdir' directory that you just
| left (and everything in it)

...
  |=================================================================    |  95%
| Take nothing but results. Leave nothing but assumptions. That sounds like
| 'Take nothing but pictures. Leave nothing but footprints.' But it makes no
| sense! Surely our readers can come up with a better motto . . .

...
  |===================================================================  |  97%
| In this lesson, you learned how to examine your R workspace and work with
| the file system of your machine from within R. Thanks for playing!

...
  |=====================================================================| 100%
| Would you like to receive credit for completing this course on Coursera.org?

1: Yes
2: No

Selection: 1
What is your email address? alicechen005@gmail.com
What is your assignment token? 9SOu3ZSb5cZcButR
Grade submission succeeded!

| You are quite good my friend!

| You've reached the end of this lesson! Returning to the main menu...

| Please choose a course, or type 0 to exit swirl.

1: R Programming
2: Take me to the swirl course repository!

Selection: 
