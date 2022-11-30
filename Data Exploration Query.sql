-- The Objective here is to explore the Shark Attack Dataset in order to better prepare for usage in Tableau 
-- The dataset will be broke into 4 seperate data tables that we will use to make visuals
-- Unfortunately the free version of Tableau does not allow uploading SQL files, so instead I will copy and paste each of the four data tables created here and place them into 4 seperate excel files 
-- Most of the data cleaning was done in Excel, however some minor changes need to be made with SQL



-- USA Table Groups by Shark Attacks in Specific Locations

Select Area, Count(Area) as Number_of_Attacks
From [Shark Attacks]..[Shark Attacks]
WHERE Country = 'USA' and Area <> 'CUBA' and Area <> 'North & South Carolina'
Group by Area 
Order by Number_of_Attacks desc 


-- Number of Attacks in Each Country 

Select Country, Count(Country) as Number_of_Attacks
From [Shark Attacks]..[Shark Attacks]
Group by Country
Order by Number_of_Attacks desc


-- Number of Attacks Per year 

Select Year, Count(Year) as Number_of_Attacks 
From [Shark Attacks]..[Shark Attacks] 
Where Year < 3019 
Group by Year
Order by Year Desc

-- Number of Attacks Per Activity
 
Select Activity, Count(Activity) as Number_of_Attacks 
From [Shark Attacks]..[Shark Attacks] 
Group by Activity
Order by Number_of_Attacks Desc 

--Number of Fatal Attacks 

Select [Fatal (Y/N)], Count([Fatal (Y/N)]) as Number_of_Attacks, 
From [Shark Attacks]..[Shark Attacks] 
WHERE [Fatal (Y/N)] <> 'Unknown' and [Fatal (Y/N)] <> 'M' and [Fatal (Y/N)] <> '2017'
Group by [Fatal (Y/N)]
Order by Number_of_Attacks Desc 




