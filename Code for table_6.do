preserve

// 1. Load Data
use NGOs.dta, clear

// 2. Define Variables
local independent_vars "average_systems rating_difference"
local dependent_vars "admin_efficiency overhead_efficiency"
local control_vars "org_age certificate num_of_supervisors num_of_directors"
local moderation_vars "LPE"

// 3. Run Regressions
foreach depvar of varlist `dependent_vars' {
    display "Running regression for `depvar'"
    
    // Regression model with moderation
    regress `depvar' `independent_vars' `control_vars' `moderation_vars'
    
    // Store results
    estimates store `depvar'_LPE
}

// 4. Output results (you can use esttab or outreg2 for this)
esttab admin_efficiency_LPE overhead_efficiency_LPE using table6.txt, replace stats(N r2 r2_a) star(* 0.10 ** 0.05 *** 0.01)

restore
