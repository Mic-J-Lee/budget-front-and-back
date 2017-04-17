class ExpensesController < ApplicationController
  def create
    @expense = Expense.new
    @expense.update(expense_params)
    if @expense.save
      redirect
    else
      redirect('There was a problem creating your expense.')
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    if @expense.delete
      redirect
    else
      redirect('There was a problem creating your expense.')
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:budget_id, :name, :amount)
  end

  def redirect(notice = nil)
    @month = @expense.budget.month
    redirect_to action: 'index', controller: 'home', greg: @month, notice: notice
  end

end
