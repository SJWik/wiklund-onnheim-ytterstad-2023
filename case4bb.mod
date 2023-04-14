include params.mod;
include costrevenue.mod;

var min_revenue_vs_target_deficit;
var mean_cost >= 0;

maximize min_rev:
min_revenue_vs_target_deficit;  

# This constraint to set min yearly revenue 
subject to set_min_revenue {i in INVESTMENT_YEARS}:
revenues[i] >= min_revenue_vs_target_deficit + pFinance[i, "revTarget"];

# This is the budget constraint 
subject to yearly_budget_constraint {i in INVESTMENT_YEARS}:
costs[i] <= pFinance[i, "budget"];

include modified.mod;