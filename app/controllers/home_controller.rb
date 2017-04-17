class HomeController < ApplicationController
  def index
    @month ||= greg_param[:greg]
    @month ||= Date.today.strftime("%Y%m")

    @income = @current_user.incomes.find_by month: @month 
    @income ||= @current_user.incomes.new

    @budgets = @current_user.budgets.where(month: @month).order(target: :desc)
    @budget ||= @current_user.budgets.new

    @expense = Expense.new

    categories = @current_user.budgets.where(month: @month).pluck(:category)
    targets = @current_user.budgets.where(month: @month).pluck(:target)
    if @income.amount
      savings_target = @income.amount - targets.sum
      @pie_savings = ['Your Slice of the Pie', savings_target]
    else
      @pie_savings = []
    end

    @category_target_pie = categories.zip(targets)

    def spent
      output = []
      budgets = @current_user.budgets.where(month: @month)
      budgets.each do |budget|
        if budget.expenses.pluck(:amount).first
          output << budget.expenses.pluck(:amount).sum
        else
          output << 0
        end
      end
      output
    end


    difference = targets.zip(spent).map { |a, b| a - b }

    @categories = categories
    @amount_spent = targets.zip(spent).map { |a, b| 
      if a >= b
        b
      else
        a
      end
    }

    @under_budget = targets.zip(spent).map { |a, b| 
      if a >= b
        a - b
      else
        0
      end
    }

    @over_budget = targets.zip(spent).map { |a, b| 
      if a < b
        b - a
      else
        0
      end
    }

  end

  def switch_month
    if whitelisted_params[:month].length == 1
      month = '0' + whitelisted_params[:month]
    elsif whitelisted_params[:month].length == 2
      month = whitelisted_params[:month]
    end
    @month = whitelisted_params[:year] + month
  
    redirect_to action: 'index', controller: 'home', greg: @month
  end

  # def find_income
  #   binding.pry
  #   if @current_user.incomes.where(month: @month).first
  #     @current_user.incomes.where(month: @month).first.amount
  #   end
  # end
  private

  def whitelisted_params
    whitelist = params.require(:date).permit(:month, :year)
  end

  def greg_param
    params.permit(:greg)
  end
end
