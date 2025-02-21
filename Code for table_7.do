preserve

// 1. Load Data
use NGOs.dta, clear

gen LPE_rating_difference = LPE * rating_difference
gen LPE_average_systems = LPE * average_systems

// 2. Define Variables
local independent_vars "average_systems rating_difference"
local dependent_vars "admin_efficiency overhead_efficiency"
local control_vars "org_age certificate num_of_supervisors num_of_directors"
local moderation_vars "LPE LPE_rating_difference LPE_average_systems"

// 3. Run Regressions
foreach depvar of varlist `dependent_vars' {
    display "Running regression for `depvar'"
    
    // Regression model with moderation and LPE as an independent variable
    regress `depvar' `independent_vars' `control_vars' `moderation_vars'
    
    // Store results with a valid name
    estimates store `depvar'_LPE_int
}

// 4. Output results (you can use esttab or outreg2 for this)
esttab admin_efficiency_LPE_int overhead_efficiency_LPE_int using table7.txt, replace stats(N r2 r2_a) star(* 0.10 ** 0.05 *** 0.01)

restore
