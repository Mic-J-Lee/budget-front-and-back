# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'a', password_digest: '$2a$10$Wy2wxmtf3xaQ5bO8WO99C.6RRi71Ct0NChEspjp1EiAMEFVWxmRya')

flatten_this = (201601..201612).to_a<<(201701..Date.today.strftime("%Y%m").to_i).to_a.each{|x| x}
jan2016_to_present = flatten_this.flatten.map{|x|x.to_s}

def calculate_savings_target(month)
  Budget.where(month: month).pluck('target').sum - Income.where(month: month).pluck('amount').first
end

def calculate_savings_spent(month)
  Income.where(month: month).pluck('amount').first - Budget.where(month: month).pluck('spent').sum
end

jan2016_to_present.each do |month|
  Income.create(user_id: 1, amount: 4000, month: month)
end

jan2016_to_present.each do |month|
  Budget.create(user_id: 1, category: 'Food', target: 800, month: month)
  Budget.create(user_id: 1, category: 'Rent', target: 1000, month: month)
  Budget.create(user_id: 1, category: 'Transportation', target: 130, month: month)
  Budget.create(user_id: 1, category: 'Entertainment', target: 420, month: month)
  Budget.create(user_id: 1, category: 'Bills', target: rand(500..600), month: month)
  Budget.create(user_id: 1, category: 'Savings', target: calculate_savings_target(month) )
end

Budget.all.each do |budget|
  rand(8).times { budget.expenses.create(name: 'blah', amount: rand(100..500)) }
end

