module ApplicationHelper

  def stringify_month(month)
    if month
      DateTime.new(month.to_s[0..3].to_i,month.to_s[4..5].to_i).strftime("%B, %Y ")
    end
  end

  
end
