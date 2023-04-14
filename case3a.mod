include params.mod;
include costrevenue.mod;

var mean_cost >= 0;

maximize Total_Revenue:
sum {i in INVESTMENT_YEARS} (revenues[i]);


# This constraint to set average yearly cost
subject to set_mean_cost:
sum {i in INVESTMENT_YEARS}costs[i]/INVESTMENT_END <= mean_cost;

subject to meet_avg_cost_target:
mean_cost <= AVG_COST_TARGET;


include modified.mod;