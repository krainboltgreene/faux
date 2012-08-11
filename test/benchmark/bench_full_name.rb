require 'benchmark'

Benchmark.bmbm(10) do |benchmark|
  benchmark.report('faux') do
    require 'faux'
    Faux(:full_name)
  end

  benchmark.report('forgery') do
    require 'forgery'
    Forgery(:name).full_name
  end

  benchmark.report('faker') do
    require 'faker'
    Faker::Name.name
  end
end

puts "Examples: "
puts "  faux: #{Faux(:full_name)}"
puts "  forgery: #{Forgery(:name).full_name}"
puts "  faker: #{Faker::Name.name}"
