class DashboardController < ApplicationController
  def index
    @budget = {food: 500, rent: 1000, transportation: 200}
  end
end
