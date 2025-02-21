preserve

// 1. read data
use NGOs.dta, clear

// 2. define vars
local independent_vars "average_systems rating_difference"
local dependent_vars "admin_efficiency overhead_efficiency"
local control_vars "org_age certificate num_of_supervisors num_of_directors"

// 3. run regression and store results
foreach depvar of varlist `dependent_vars' {
    display "Running regression for `depvar'"
    
    // regression model
    regress `depvar' `independent_vars' `control_vars'
    
    // record results
    estimates store `depvar'_reg
}

// 4. summarize the results
esttab admin_efficiency_reg overhead_efficiency_reg ///
    using table4.txt, replace ///
    star(* 0.10 ** 0.05 *** 0.01) ///
    stats(N r2 r2_a, labels("Observations" "R-squared" "Adj. R-squared")) 


restore
