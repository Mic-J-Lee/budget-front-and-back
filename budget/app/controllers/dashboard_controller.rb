class DashboardController < ApplicationController
  def index
    @category1 = { category: "Food", amount: rand(1..100) }
    @category2 = { category: "Rent", amount: rand(1..100) }
    @category3 = { category: "Savings", amount: rand(1..100) }
    @category4 = { category: "Transportation", amount: rand(1..100) }
    @category5 = { category: "Entertainment", amount: rand(1..100) }
    @category_others = { category: "Bills", amount: rand(1..100) }
  end
end
