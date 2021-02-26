# Pennsylvania Eviction Crisis: A Data Visualization
Data Visualization Project of the Pennsylvania Eviction Crisis

## Introduction
For this data visualization project, I chose to investigate the eviction crisis of the United States, an issue that is so ubiquitous and terrifying, yet real, for millions of people across the nation. The majority of poor renting families in America spend over half of their income on housing costs, and even the fear of eviction itself becomes a significant stressor for all involved. Statistics regarding evictions is jarring, to say the least: in 2016, over 2 million eviction filings were made across the United States, which is equivalent to a rate of four every minute. Additionally, one in 50 renters was evicted from his or her home. It’s not up for debate that this number is far too high, and with all the negative lasting impacts eviction can have on families for generations, the American eviction crisis is undoubtedly a vital issue for all of our communities and our policymakers to address. 

Not only does eviction make families susceptible to falling into a long-term cycle of poverty, but it also has severe lasting effects on the mental and physical health of individuals. Evictions have historically resulted in difficulty in finding new housing, and thus, homelessness; one study found that 47 percent of all families in New York City homeless shelters were there as a result of eviction. Furthermore, families who are evicted regularly lose their possessions, lose their jobs, and experience higher rates of depression. For children, the instability caused by eviction can result in worse outcomes in education, health, and future earnings. All in all, evictions create an extremely heavy burden on individuals and families, and combined with the housing affordability crisis, and consistent increases in housing prices in major metropolitan areas, evictions and all its negative effects become an increasingly alarming threat to our nation and its citizens. 

The data set I'm are using comes from the Eviction Lab, which was formed to make nationwide eviction data publicly available, with the goal to help “document the prevalence, causes, and consequences of eviction and to evaluate laws and policies designed to promote residential security and reduce poverty.” I focused specifically on the state of Pennsylvania, and obtained a data set that organized all available eviction data by county, between the years of 2000 and 2016. With variables such as rent burden rates, poverty rates, demographic information, and more, this exploratory data analysis will hopefully shed light to the causes and consequences of eviction. Although there is no data from the most recent years, it will still be valuable to evaluate trends prior to COVID-19, as this can help describe the trajectory of eviction data, even in “normal” circumstances.

## Graphs

## Shiny Apps

I made 2 Shiny apps to allow myself to compare specific variables against each other. One app, SearchByCounty.R (which is included in the repo, see note below on how to run apps), compared eviction rates by county, to specifically explore the rates and changes in rates of specific counties, and compare counties with each other. You can also hover over specific years to see the exact rates. One very interesting pattern that I observed while looking through different counties, was that many counties seemed to follow the property of remaining stagnant and then quickly rising around 2005 until 2006, and then subsequently dropping drastically. Yet, Philadelphia County, the 6th largest city by population in the US and the county with the highest poverty rate in PA in 2016, did not follow this trend. Here is a screenshot from one iteration of thie graph
![County Search](Shinyline.png)

## Note:
You can run the shiny appes by running a short script below:

  install.packages("shiny")
  library(shiny)
  runApp("SearchByCounty")

## Conclusion
