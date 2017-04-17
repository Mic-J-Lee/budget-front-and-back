class IncomesController < ApplicationController
  def create
    @income = @current_user.incomes.new(income_params)
    # binding.pry
    if @income.save
      redirect_to root_path, notice: "Your income was successfully saved."
    else
      redirect_to root_path, notice: "There was a problem saving your income."
    end
  end

  private

  def income_params
    params.permit(:month, :amount)
  end
end
