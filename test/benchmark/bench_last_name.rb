require 'benchmark'

Benchmark.bmbm(10) do |benchmark|
  benchmark.report('faux') do
    require 'faux'
    Faux(:last_name)
  end

  benchmark.report('forgery') do
    require 'forgery'
    Forgery(:name).last_name
  end

  benchmark.report('faker') do
    require 'faker'
    Faker::Name.last_name
  end
end

puts "Examples: "
puts "  faux: #{Faux(:last_name)}"
puts "  forgery: #{Forgery(:name).last_name}"
puts "  faker: #{Faker::Name.last_name}"
