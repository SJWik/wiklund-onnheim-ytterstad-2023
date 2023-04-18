# This file are the additional constraints, compared to the original manuscript.


# remove the lefthand inequality to allow the model to turn off research quickly.
subject to BoundedIncrement {i in INVESTMENT_START .. INVESTMENT_END - 1} :
   X[i+1,"Research"] - X[i, "Research"] <= maxDeltaResearch;
   
  
subject to MinProjects {t in INVESTMENT_YEARS} :
	sum {p in PTYPES} (X[t,p]) >= minProjects;
 

#subject to mincost {t in INVESTMENT_YEARS}:
#  costs[t] >= 0.5*pFinance[t, "budget"];

subject to InitialResearch :
  	initialResearchProjects - maxDeltaResearch <= X[INVESTMENT_START, "Research"] <= initialResearchProjects + maxDeltaResearch;