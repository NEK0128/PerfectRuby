require 'set'

Set.new(%w(Alice Bob Charlie)) { |name|
    p name.upcase
}


set = Set.new(1..5)
p set.length 
set.clear 
p set.empty?

set = Set.new(1..5)
p set.map {|n| n ** n}
p set.select {|n| n.even?}
p set.minmax

set = Set.new(%w(Alice Bob Charlie))
p set.member?("Alice")
p set.include?("Ken")

set = Set.new(1..5)
set << 10
set.add(11)
set.delete(1)
p set.add?(12)
p set.add?(2)
p set.delete?(2)
p set.delete?(20)


set = Set[1,3,5]
p set.merge([5,7,9])
p set.merge(9..15)
p set.merge(%w(a b c))


set = Set[1,3,5]
p set.subtract(1..3)


set = Set.new(0..5)

p set.reject! {|v| v.zero? }
p set.reject! {|v| v.zero? }
p set


p set.delete_if {|v| v.even? }
p set.delete_if {|v| v.even? }




a = %w(a b c d).to_set
b = %w(c d e f).to_set

p a | b
p a.union(b)

p a & b
p a.intersection(b)

p a ^ b

p a - b
p a.difference(b)


set =%w(Alice Bob Charlie Dave Ellen Frank Eve).to_set
p set.divide { |v|  v.length }


set =[4, 4.0, 2, 3.0, 'Alice', 'Bob', 'Charlie', 4..10, 10..12].to_set

p set.classify { |v| v.class}


a = %w(Alice Bob Charlie).to_set
b = %w(Alice Bob).to_set

p a.superset?(b)
p b.subset?(a)
p a.proper_superset?(b)
p b.proper_subset?(a)


p b.superset?(a)
p a.subset?(b)

p a.subset?(a)
p a.superset?(a)

p a.proper_superset?(a)
p a.proper_subset?(a)
