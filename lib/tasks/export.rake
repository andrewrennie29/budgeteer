namespace :export do
  desc "Prints Country.all in a seeds.rb way."
  task :seeds_format => :environment do
    BudgetDisposition.order(:id).all.each do |country|
      puts "BudgetDisposition.create(#{country.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    BudgetPeriod.order(:id).all.each do |country|
      puts "BudgetPeriod.create(#{country.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    BudgetType.order(:id).all.each do |country|
      puts "BudgetType.create(#{country.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    ExpenseCategory.order(:id).all.each do |country|
      puts "ExpenseCategory.create(#{country.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
    Budget.order(:id).all.each do |country|
      puts "Budget.create(#{country.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end