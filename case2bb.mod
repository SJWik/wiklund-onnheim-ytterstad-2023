include params.mod;
include costrevenue.mod;

var max_yearly_cost_vs_budget;

minimize max_cost: max_yearly_cost_vs_budget;
   

# This constraint will set max_yearly_cost 
subject to set_cost_max {i in INVESTMENT_YEARS}:
costs[i] <= max_yearly_cost_vs_budget + pFinance[i, 'budget'];        


# This is the revenue constraint
# must meet yearly revenue target.

subject to meet_revenue_targets {i in INVESTMENT_YEARS}:
revenues[i] >= pFinance[i, "revTarget"];


include modified.mod;