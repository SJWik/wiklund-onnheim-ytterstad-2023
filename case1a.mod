include params.mod;

minimize Total_Cost:
sum {i in INVESTMENT_YEARS}
costs[i];

# This constraint to set the average mean revenue
subject to set_mean_revenue_targets:
sum {i in INVESTMENT_YEARS}revenues[i]/INVESTMENT_END >= mean_revenue;

# This is the constraint to make sure 
# average revenue target is 
# always met 
subject to meet_avg_rev_target:
mean_revenue >= AVG_REV_TARGET;


include modified.mod;
include costrevenue.mod;

