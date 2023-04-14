include params.mod;
include costrevenue.mod;

var max_yearly_cost_vs_budget;

minimize max_cost: max_yearly_cost_vs_budget;

# This constraint will set max_yearly_cost 
subject to set_cost_max {i in INVESTMENT_YEARS}:
costs[i] <= max_yearly_cost_vs_budget + pFinance[i, "budget"]; 


# This constraint to set the average mean revenue
subject to set_mean_revenue_targets:
sum{i in INVESTMENT_YEARS}revenues[i]/INVESTMENT_END >= mean_revenue;

# This is the constraint to make sure average revenue target is 
# always met 
subject to meet_avg_rev_target:
mean_revenue >= AVG_REV_TARGET;


include modified.mod;