# week6quiz.R
# [For your convenience], here is the provided code from Jared Lander's R for Everyone, 
# 6.7 Extract Data from Web Sites

install.packages("XML")
require(XML)
theURL <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
bowlPool <- readHTMLTable(theURL, which = 1, header = FALSE, stringsAsFactors = FALSE)
bowlPool

# 1. What type of data structure is bowlpool? 
It is a rectangular table made up of rows and columns
# 2. Suppose instead you call readHTMLTable() with just the URL argument,
# against the provided URL, as shown below

theURL <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(theURL)

# What is the type of variable returned in hvalues?
typeof(hvalues) 
[1] "list"
It is a list object

# 3. Write R code that shows how many HTML tables are represented in hvalues


week6Quiz3 <- function(hvalues)  {
  tblCtr <- 0
  for (i in 1:length (hvalues)) {
     if (!is.null(hvalues[[i]])) {
       tblCtr = tblCtr + 1 
     } 
  }
    print(tblCtr)
} 

# 4. Modify the readHTMLTable code so that just the table with Number, 
# FirstName, LastName, # and Points is returned into a dataframe
tbl[,c(1,2,3,4)]


# 5. Modify the returned data frame so only the Last Name and Points columns are shown.
tbl[,c(3,4)]


# 6 Identify another interesting page on the web with HTML table values.  
# This may be somewhat tricky, because while
# HTML tables are great for web-page scrapers, many HTML designers now prefer 
# creating tables using other methods (such as <div> tags or .png files).  




# 7 How many HTML tables does that page contain?
tbl <- readHTMLTable(theURL, which=1)


# 8 Identify your web browser, and describe (in one or two sentences) 
# how you view HTML page source in your web browser.

To view the source of a HTML webpage in Chrome, On the web page itself, I would select "customize Google Chrome Option", 
Select Tools option and click "View Source". You should be able to see the HTML Code. Another option is also selecting the "Developer Tools"
Option which generates the HTML source at the bottom of the page being able to view both the Actual HTML and the Source.


