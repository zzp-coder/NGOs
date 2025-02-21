preserve

// 1. Load the data
use NGOs.dta, clear

// 2. Output the correlation matrix
correlate rating_difference average_systems admin_efficiency overhead_efficiency certificate num_of_directors num_of_supervisors org_age

restore
