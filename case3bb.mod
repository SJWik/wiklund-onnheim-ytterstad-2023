include params.mod;
include costrevenue.mod;

var min_revenue_vs_target_deficit;
var mean_cost >= 0;

maximize min_rev_vs_target_def:
    min_revenue_vs_target_deficit;


# This constraint to set max_rev_vs_target_diff 
subject to set_max_rev_diff {i in INVESTMENT_YEARS}:
revenues[i] >= min_revenue_vs_target_deficit + pFinance[i, "revTarget"];


# This constraint to set average yearly cost
subject to set_mean_cost:
sum {i in INVESTMENT_YEARS}
costs[i]/INVESTMENT_END <= mean_cost;

subject to meet_avg_cost_target:
mean_cost <= AVG_COST_TARGET;

include modified.mod;