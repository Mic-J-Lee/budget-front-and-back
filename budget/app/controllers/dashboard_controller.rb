class DashboardController < ApplicationController
  def index
    @category1 = { category: "Food", amount_spent: rand(1..100), under_budget: 0, over_budget: rand(1..30) }
    @category2 = { category: "Rent", amount_spent: rand(1..100), under_budget: 0, over_budget: 0 }
    @category3 = { category: "Savings", amount_spent: rand(1..100), under_budget: rand(1..30), over_budget: 0 }
    @category4 = { category: "Transportation", amount_spent: rand(1..100), under_budget: 0, over_budget: rand(1..30) }
    @category5 = { category: "Entertainment", amount_spent: rand(1..100), under_budget: 0, over_budget: rand(1..30) }
    @category_others = { category: "Bills", amount_spent: rand(1..100), under_budget: rand(1..30), over_budget: 0 }
  end
end
