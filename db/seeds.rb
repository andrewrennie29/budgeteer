BudgetDisposition.create("disposition"=>"Income", "multiplier"=>1)
BudgetDisposition.create("disposition"=>"Expenditure", "multiplier"=>-1)
BudgetPeriod.create("period"=>"Week", "days"=>7, "frequency"=>1)
BudgetPeriod.create("period"=>"Fortnight", "days"=>7, "frequency"=>2)
BudgetPeriod.create("period"=>"Month", "days"=>30, "frequency"=>1)
BudgetPeriod.create("period"=>"Quarter", "days"=>90, "frequency"=>1)
BudgetPeriod.create("period"=>"Annual", "days"=>365, "frequency"=>1)
BudgetType.create("budget_type"=>"Salary", "budget_disposition_id"=>1)
BudgetType.create("budget_type"=>"Fixed", "budget_disposition_id"=>2)
BudgetType.create("budget_type"=>"Variable Fixed", "budget_disposition_id"=>2)
BudgetType.create("budget_type"=>"Transfer", "budget_disposition_id"=>2)
BudgetType.create("budget_type"=>"Savings", "budget_disposition_id"=>2)
ExpenseCategory.create("category"=>"General", "icon"=>"money")
ExpenseCategory.create("category"=>"Groceries", "icon"=>"shopping-cart")
ExpenseCategory.create("category"=>"Transportation", "icon"=>"car")
ExpenseCategory.create("category"=>"Household", "icon"=>"home")
ExpenseCategory.create("category"=>"Drinks", "icon"=>"glass")
ExpenseCategory.create("category"=>"Restaurant", "icon"=>"cutlery")
ExpenseCategory.create("category"=>"Cafe", "icon"=>"coffee")
ExpenseCategory.create("category"=>"Socialising", "icon"=>"group")
ExpenseCategory.create("category"=>"Entertainment", "icon"=>"ticket")
ExpenseCategory.create("category"=>"Leisure", "icon"=>"globe")
ExpenseCategory.create("category"=>"Clothing", "icon"=>"shopping-bag")
ExpenseCategory.create("category"=>"Education", "icon"=>"book")
ExpenseCategory.create("category"=>"Children", "icon"=>"child")
ExpenseCategory.create("category"=>"Pet", "icon"=>"paw")
ExpenseCategory.create("category"=>"Hobby", "icon"=>"paint-brush")
ExpenseCategory.create("category"=>"Health", "icon"=>"heartbeat")
ExpenseCategory.create("category"=>"Toiletries", "icon"=>"s15")
ExpenseCategory.create("category"=>"Present", "icon"=>"gift")
ExpenseCategory.create("category"=>"Beer", "icon"=>"beer")
Budget.create("name"=>"Amazon", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.10e4, "budget_period_id"=>3, "budget_type_id"=>1)
Budget.create("name"=>"Mortgage", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.5e3, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Oliver", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.5e2, "budget_period_id"=>3, "budget_type_id"=>5)
Budget.create("name"=>"Noah", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.5e2, "budget_period_id"=>3, "budget_type_id"=>5)
Budget.create("name"=>"Monthly Savings", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.2e3, "budget_period_id"=>3, "budget_type_id"=>5)
Budget.create("name"=>"Gemma Allowance", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.3e2, "budget_period_id"=>1, "budget_type_id"=>4)
Budget.create("name"=>"Church", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.25e2, "budget_period_id"=>1, "budget_type_id"=>4)
Budget.create("name"=>"Weekly Food Shop", "rollover"=>true, "enddate"=>Tue, 11 Apr 2017, "value"=>0.100e2, "budget_period_id"=>1, "budget_type_id"=>3)
Budget.create("name"=>"Clio Fuel", "rollover"=>true, "enddate"=>Tue, 11 Apr 2017, "value"=>0.5e2, "budget_period_id"=>2, "budget_type_id"=>3)
Budget.create("name"=>"Council Tax", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.250e3, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Electricity", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.10e3, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Life Insurance", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.10e2, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Vodafone", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.5e2, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Sky TV", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.35e2, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"TV Licence", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.125e2, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Coco Food", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.45e2, "budget_period_id"=>4, "budget_type_id"=>3)
Budget.create("name"=>"Next Furniture", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.45e2, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Home Insurance", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.45e2, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Pet Insurance", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.37e2, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Cineworld Unlimited", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.36e2, "budget_period_id"=>3, "budget_type_id"=>2)
Budget.create("name"=>"Car Insurance", "rollover"=>false, "enddate"=>Tue, 11 Apr 2017, "value"=>0.5e3, "budget_period_id"=>5, "budget_type_id"=>2)
Budget.create("name"=>"General", "rollover"=>true, "enddate"=>nil, "value"=>0.1254e3, "budget_period_id"=>1, "budget_type_id"=>3)
