set PTYPES;
set FTYPES;
param INVESTMENT_START;
param INVESTMENT_END > INVESTMENT_START;
param DISCOVERY_YEARLY_COST;
param AVG_REV_TARGET;
param AVG_COST_TARGET;
set INVESTMENT_YEARS := INVESTMENT_START .. INVESTMENT_END;
param pCosts {i in INVESTMENT_YEARS, p in PTYPES};
param pRevenue {i in INVESTMENT_YEARS, p in PTYPES};
param pFinance {i in INVESTMENT_YEARS, f in FTYPES};
param maxYearlyInvestment{p in PTYPES};
var X {i in INVESTMENT_YEARS, p in PTYPES} >= 0 integer;
var X_avg >= 0;
var mean_revenue >= 0;
param maxDeltaResearch;
param minProjects;
param initialResearchProjects;
var costs{i in INVESTMENT_YEARS};
var revenues{i in INVESTMENT_YEARS};