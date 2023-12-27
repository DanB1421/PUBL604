clear all

log using final_project_brilliant, replace

import excel using "/Users/drbrilliant2552/Documents/PUBL604/FoodImports.xlsx", sheet("Meat ANOVA") firstrow

save MeatANOVA.dta, replace

use MeatANOVA.dta

tabulate ProductGroup CountryLocationofImport

summarize ImportValue if ProductGroup == "Fowl and other meats"

summarize ImportValue if ProductGroup == "Fresh or chilled red meats"

summarize ImportValue if ProductGroup == "Frozen red meats and parts"

summarize ImportValue if ProductGroup == "Prepared meats"

oneway ImportValue ProductGroup

clear

import excel using "/Users/drbrilliant2552/Documents/PUBL604/FoodImports.xlsx", sheet("Fish ANOVA") firstrow

save FishANOVA.dta, replace

use FishANOVA.dta

tabulate ProductGroup CountryLocationofImport

summarize ImportValue if ProductGroup == "Fish fillets and mince"

summarize ImportValue if ProductGroup == "Prepared fish and shellfish"

summarize ImportValue if ProductGroup == "Shellfish, fresh or frozen"

summarize ImportValue if ProductGroup == "Whole fish--fresh, chilled, or frozen"

oneway ImportValue ProductGroup

log close

