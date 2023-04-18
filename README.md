# Replenishing the pipeline: A quantitative approach to optimising the sourcing of new projects

This repository contains code accompanying the paper "Replenishing the pipeline: A quantitative approach to optimising the sourcing of new projects" (In Review).

# Requirements

The models are implemented in [AMPL](https://ampl.com/ce/), and can be run using the Community Edition of AMPL (which includes the commercial solver [CPLEX](https://www.ibm.com/products/ilog-cplex-optimization-studio/cplex-optimizer) during a trial period.
The models have also been verified to solve using the open source solver [CBC](https://github.com/coin-or/Cbc).

# Running

Clone this project and open it in the AMPL IDE and run `all.run`. If you do not have access to CPLEX, replace `option solver cplex;` with `option solver cbc;` in `all.run`.

# Parameters

Data for the optimization problems are calculated in `Cash flow calculations v2.0 - Public.xlsx`, which have then been converted to AMPL data format in `all.dat`. 
Parameter and variable declarations are included in `params.mod`

# Model structure

The models consist of some common constraints, which are included in `costrevenue.mod` and `modified.mod`. This is separated into two different files, where `modified.mod` contains extensions to an original
model corresponding to an earlier draft of our paper.

The specific variations relative to the common set of constraints corresponding to each case in the paper is included in the cas-specific files, e.g.,  `case1a.mod`.
