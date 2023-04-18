#constraints to calculate some common expressions
#that are used in the different optimization problems.
# sets costs[time], revenues[time] X_avg

subject to set_costs {i in INVESTMENT_YEARS}:
(
    X_avg * DISCOVERY_YEARLY_COST+
    pFinance [i, "costCurrent"]+
    sum {j in 1 .. i, p in PTYPES} X[j,p] * pCosts[i-j+1,p] = costs[i]
);
   
subject to set_revenue {i in INVESTMENT_YEARS}:
(
    pFinance[i, "currRevenue"] +
    sum {j in 1 .. i, p in PTYPES} X[j, p] * pRevenue[i-j+1, p] = revenues[i]
);


# This constraint will set X_avg to the mean of X for 
# Research over the years
subject to define_research_average :
sum {k in INVESTMENT_YEARS} 
    (X[k, "Research"])/INVESTMENT_END = X_avg ; 
    
    
# This constraint to limit the max
# investment per years
subject to MaxInvestment {i in INVESTMENT_YEARS, p in PTYPES} :
X[i,p] <= maxYearlyInvestment[p];