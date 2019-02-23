#Here, I create the semester date finder function as a precursor step to creating the semester variable

semesterDateFinder = function(
  startMonth, endMonth,
  startMonthDaysToExclude, endMonthDaysToExclude,
  yearForRange
){
  dayMonthDF = expand.grid(1:31, 1:12)
  names(dayMonthDF) = c('day','month')
  dayMonthDF$dayMonth = apply(dayMonthDF[,c('day','month')], 1, function(x){paste(x[1],x[2], sep='_')})
  dayMonthDF = dayMonthDF[dayMonthDF$month>=startMonth & dayMonthDF$month<=endMonth,]
  dayMonthDF = dayMonthDF[!(dayMonthDF$month==startMonth & dayMonthDF$day %in% startMonthDaysToExclude),]
  dayMonthDF = dayMonthDF[!(dayMonthDF$month==endMonth & dayMonthDF$day %in% endMonthDaysToExclude),]
  return(paste(dayMonthDF$dayMonth, yearForRange, sep='_')) }

## Here I create the intermediate variables - one for each semester
#For each semester in the data, call the semesterDateFinder function and

#Summer 2016: Monday 5/16 to Tuesday 8/30
summer2016 = semesterDateFinder(5, 8, 1:15, 31, 2016)

#Fall 2016: Wednesday 8/31 to Sunday 1/8
### Spans multiple years, so I call the semesterDateFunction twice
fall2016 = c(
  semesterDateFinder(8, 12, 1:30, 32, 2016), # this gets 8/31 to 12/31 dates
  semesterDateFinder(1, 1, 0, 9:31, 2017) # this gets 1/1 to 1/8 dates
)

#Spring 2017: Monday 1/9 to Sunday 5/14
spring2017 = semesterDateFinder(1, 5, 1:8, 15:31, 2017)

#Summer 2017: Monday 5/15 to Tuesday 8/29
summer2017 = semesterDateFinder(5, 8, 1:14, 30:31, 2017)

#Fall 2017: Wednesday 8/30 to Sunday 1/7
fall2017 = c(
  semesterDateFinder(8, 12, 1:29, 32, 2017),       # this gets 8/31 to 12/31 dates
  semesterDateFinder(1, 1, 0, 8:31, 2018)          # this gets 1/1 to 1/8 dates
)

#Spring 2018: Monday 1/8 to Friday 5/4
##### NOTE - this is where I might need to change it depending on when my measure came from - when is the persistence measure taken?
spring2018 = semesterDateFinder(1, 5, 1:7, 5:31, 2018)

