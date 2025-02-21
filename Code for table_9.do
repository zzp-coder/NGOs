preserve

// 1. Load Data
use NGOs.dta, clear

gen SC_rating_difference = SC * rating_difference
gen SC_average_systems = SC * average_systems

// 2. Define Variables
local independent_vars "average_systems rating_difference"
local dependent_vars "admin_efficiency overhead_efficiency"
local control_vars "org_age certificate num_of_supervisors num_of_directors"
local moderation_vars "SC SC_rating_difference SC_average_systems"

// 3. Run Regressions
foreach depvar of varlist `dependent_vars' {
    display "Running regression for `depvar'"
    
    // Regression model with moderation and SC as an independent variable
    regress `depvar' `independent_vars' `control_vars' `moderation_vars'
    
    // Store results with a valid name
    estimates store `depvar'_SC_int
}

// 4. Output results (you can use esttab or outreg2 for this)
esttab admin_efficiency_SC_int overhead_efficiency_SC_int using table9.txt, replace stats(N r2 r2_a) star(* 0.10 ** 0.05 *** 0.01)

restore
