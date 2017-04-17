
class BudgetsController < ApplicationController

  def create
    @budget = Budget.new(user_id: @current_user.id, month: budget_params[:month] )
    @budget.update(budget_params)
    if @budget.save
      redirect
    else
      redirect('There was a problem creating your budget.')
    end
  end

  def update
    @budget = @current_user.budgets.where(id: budget_params[:id])
    # binding.pry
    if @budget.update(budget_params)
      redirect('Budget successfully updated.')
    else
      redirect('There was a problem updating your budget.')
    end
  end

  def destroy
    # binding.pry
    @budget = @current_user.budgets.where(id: jin_params[:id])
    binding.pry
    if @budget.destroy
      redirect('Budget successfully deleted.')
    else
      redirect('There was a problem deleting your budget.')
    end
  end  

  private

  def jin_params
    params.permit(:id)
  end

  def budget_params
    params.require(:budget).permit(:target, :spent, :month, :category, :id)
  end

  def redirect(notice = nil)
    @month = budget_params[:month]
    redirect_to action: 'index', controller: 'home', greg: @month, notice: notice
  end

end
