include params.mod;
include costrevenue.mod;

maximize Total_Revenue:
sum {i in INVESTMENT_YEARS} revenues[i];

# This is the budget constraint 
subject to yearly_budget_constraint {i in INVESTMENT_YEARS}:
costs[i] <= pFinance[i, "budget"];


include modified.mod;