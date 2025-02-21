preserve

// 1. read data
use NGOs.dta, clear

// 2. produce descriptive statistics
summarize rating_difference average_systems admin_efficiency overhead_efficiency certificate num_of_directors num_of_supervisors org_age

// 3. produce detailed descriptive statistics
summarize rating_difference average_systems admin_efficiency overhead_efficiency certificate num_of_directors num_of_supervisors org_age, detail

restore
