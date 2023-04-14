include params.mod;
include costrevenue.mod;

minimize Total_Cost:
sum {i in INVESTMENT_YEARS} costs[i];      


subject to meet_revenue_targets {i in INVESTMENT_YEARS}:
revenues[i] >= pFinance[i, "revTarget"];

include modified.mod;