create view Population_newVaccine as
select distinct dea.continent,dea.location, dea.population,
	SUM(CAST(vac.new_vaccinations as bigint)) OVER (partition by dea.location)as total_new_vaccinations
from CovidPortfolio..CovidDeaths dea
join CovidPortfolio..CovidVaccination vac
on dea.location=vac.location
	and dea.date=vac.date

where dea.continent is not null	 and new_vaccinations is not null


