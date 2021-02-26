# Pennsylvania Eviction Crisis: A Data Visualization
Data Visualization Project of the Pennsylvania Eviction Crisis

## Introduction
For this data visualization project, I chose to investigate the eviction crisis of the United States, an issue that is so ubiquitous and terrifying, yet real, for millions of people across the nation. The majority of poor renting families in America spend over half of their income on housing costs, and even the fear of eviction itself becomes a significant stressor for all involved. Statistics regarding evictions is jarring, to say the least: in 2016, over 2 million eviction filings were made across the United States, which is equivalent to a rate of four every minute. Additionally, one in 50 renters was evicted from his or her home. It’s not up for debate that this number is far too high, and with all the negative lasting impacts eviction can have on families for generations, the American eviction crisis is undoubtedly a vital issue for all of our communities and our policymakers to address. 

Not only does eviction make families susceptible to falling into a long-term cycle of poverty, but it also has severe lasting effects on the mental and physical health of individuals. Evictions have historically resulted in difficulty in finding new housing, and thus, homelessness; one study found that 47 percent of all families in New York City homeless shelters were there as a result of eviction. Furthermore, families who are evicted regularly lose their possessions, lose their jobs, and experience higher rates of depression. For children, the instability caused by eviction can result in worse outcomes in education, health, and future earnings. All in all, evictions create an extremely heavy burden on individuals and families, and combined with the housing affordability crisis, and consistent increases in housing prices in major metropolitan areas, evictions and all its negative effects become an increasingly alarming threat to our nation and its citizens. 

The data set I'm are using comes from the Eviction Lab, which was formed to make nationwide eviction data publicly available, with the goal to help “document the prevalence, causes, and consequences of eviction and to evaluate laws and policies designed to promote residential security and reduce poverty.” I focused specifically on the state of Pennsylvania, and obtained a data set that organized all available eviction data by county, between the years of 2000 and 2016. With variables such as rent burden rates, poverty rates, demographic information, and more, this exploratory data analysis will hopefully shed light to the causes and consequences of eviction. Although there is no data from the most recent years, it will still be valuable to evaluate trends prior to COVID-19, as this can help describe the trajectory of eviction data, even in “normal” circumstances.

## Graphs

The first graph I created was a straightforward choropleth map of the changing eviction rates by county in PA from 2000 to 2016. 
![Choropleth Map](https://github.com/kickflipped/eviction-crisis/blob/main/Figures/choropleth-animation.gif)

Some interesting observations: More specifically, the counties in the middle of Pennsylvania have a relatively low eviction rate throughout the time periods. We can see that the East and West side counties of Pennsylvania fluctuate more frequently throughout time. We can also notice that in 2016, the most recent year from our dataset, the eviction rate is relatively low overall. In contrast, it seems that around 2006, the eviction rates for general Pennsylvania counties spiked tremendously as the map became darker and darker, which just precedes the Great Recession. It would be interesting to investigate other potential factors going on in this time period.

The second graph created was a scatter plot graphing the median gross rent, rent burden, and eviction rates of counties in Pennsylvania over time. 
![Animation](https://github.com/kickflipped/eviction-crisis/blob/main/Figures/scatter-animation.gif)

This graph clearly illustrates that a higher median gross rent is correlated pretty strongly with rent burden. Additionally, as the size of the point indicates the relative eviction rate for that county, and over time, the counties with higher eviction rates continue to rise in terms of median gross rent and rent burden. On the other hand, counties with relatively low eviction rates seem to remain stagnant over time, indicating that while for areas not quite as affected by evictions, the rent burden and average rent does not change throughout the years, but for areas with high poverty rates, the rent burden and average rent fluctuates enormously over time. Areas that are poorer show high levels of rent burden as rent continues to rise, and thus without resources to cope with rising rent, poverty remains high in these areas: an unsettling cycle of generational poverty. This was a jarring visualization to see so clearly.

Finally, the third graph shows the ethnic and racial breakdown over time through a bar graph. 
![Racial Breakdown](https://github.com/kickflipped/eviction-crisis/blob/main/Figures/racialbreakdownbargraph.png)

I wanted visualize how changes in racial make-up of regions might have been correlated with the changes in poverty and eviction rates. The percentage of white residents in Philadelphia County steadily decreases throughout the years, which may reflect  white flight, and it may be possible that white residents are moving out of the cities and into more suburban areas. While the African American population has not significantly changed, there is a steady increase in the Hispanic population of Philadelphia, as well as the percentage of Asians. Between these years, this county has experienced a large increase in the rent burden, which may shed light into how the movement of white folks away from the county and movement of minorities such as Hispanic people and Asian people correlates with percent of income spent on rent.

## Shiny Apps

I made 2 Shiny apps to allow myself to compare specific variables against each other. One app, SearchByCounty.R (which is included in the repo, see note below on how to run apps), compared eviction rates by county, to specifically explore the rates and changes in rates of specific counties, and compare counties with each other. You can also hover over specific years to see the exact rates. One very interesting pattern that I observed while looking through different counties, was that many counties seemed to follow the property of remaining stagnant and then quickly rising around 2005 until 2006, and then subsequently dropping drastically. Yet, Philadelphia County, the 6th largest city by population in the US and the county with the highest poverty rate in PA in 2016, did not follow this trend. Here is a screenshot from one iteration of thie graph
![County Search](https://github.com/kickflipped/eviction-crisis/blob/main/Figures/Shinyline.png)

In my second app, I made an interactive graph that allows the users to pick which variables they would like to see plotted against other variables in a scatter plot. I provided options for the x and y axis that make the most interesting to explore in terms of potential policy and discussion. With this app, you can clearly visualize trends such as the high correlations between economic factors such as household median income and eviction rate.

![Scatter](https://github.com/kickflipped/eviction-crisis/blob/main/Figures/ShinyScatter.png)

## Note:
You can run the shiny apps by running downloading the R files from the Apps Folder in the repo and running a short script below:

  - install.packages("shiny")
  - library(shiny)
  - runApp("SearchByCounty")

## Next Steps

A summary of my analysis and observations were made in the middle of this report. There's so much more exploration to be done between the variables given to me, and questions that arise when looking at certain trends I found, such as the increasing gap in rent burden/poverty rate in low income areas. I'd love to continue to add on to this project. Furthermore, COVID-19 has intensified and brought light to the U.S. eviction crisis. Tens of millions of Americans are potentially at risk of eviction. Many property owners, who lack the credit or financial ability to cover rental payments, will struggle to pay their mortgages and property taxes and maintain properties. COVID-19 has sharply increased the risk of foreclosure and bankruptcy, disrupted the affordable housing market; and destabilized communities across the United States. Although rent and eviction freezes are a temporary solution to this problem, the threat of eviction will not go away once these moratoriums lift, and once data from the past 2 years becomes available, I will continue this data visualization project with current data to identify trends unique to COVID, and hopefully shed light on what needs to be our biggest focuses in terms of addressing evictions.
