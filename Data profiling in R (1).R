### Reference blogs: http://boxuancui.github.io/DataExplorer/
######               https://cran.r-project.org/web/packages/DataExplorer/vignettes/dataexplorer-intro.html
######   Source code of package: https://github.com/boxuancui/DataExplorer/
### We will analyze the Fortune 500 data instead, 
## so that we can compare the data profiling done in 
### R- DataExplorer, Python - PandasProfiler, and
### Ataccama One Cloud 

library(DataExplorer)

f500 = read.csv("Fortune500_2019.csv")

## A one line profiling option:
create_report(f500)
## Another option, if we know our outcome variable
create_report(f500, y = "Rank")

### Box plots are helpful to see the distributions of continuous features across categories 
plot_boxplot(f500, by = "Sector")

### Pairwise correlations can be better visualized using scatter plots
plot_scatterplot(split_columns(f500)$continuous, by = "Profits")


