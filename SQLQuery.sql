--Death rate infected by covid
--select location, date, total_cases,total_deaths, cast(total_deaths as float)/cast(total_cases as float)*100 as death_rate
--from CovidPortfolio..CovidDeaths
--where location like '%indonesia%'
--order by death_rate desc

--Percentage of infected in Indonesia
--select location, date, total_cases,population, cast(total_cases as float)/cast(population as float)*100 as infected_rate
--from CovidPortfolio..CovidDeaths
--where location like '%indonesia%'
--order by infected_rate desc

--Countries with Highest infection rate 
--select location, max(total_cases) as total_cases,population, max(cast(total_cases as float)/cast(population as float)*100)as infected_rate
--from CovidPortfolio..CovidDeaths
--group by location,population
--order by infected_rate  desc

--Countries with highest death count
--select location, max(cast(total_deaths as int)) as TotalDeath
--from CovidPortfolio..CovidDeaths
--where continent is not null 
--group by location
--order by TotalDeath desc

--Continent with highest death count
--select continent, max(cast(total_deaths as int)) as TotalDeath
--from CovidPortfolio..CovidDeaths
--where continent is not null 
--group by continent
--order by TotalDeath desc

