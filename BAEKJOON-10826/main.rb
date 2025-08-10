N = gets.chomp.to_i
pf,pb = 0,1
i = 0
list = []
while i <= N
  list << pf
  list << pb
  pf = pf+pb
  pb = pf+pb
  i+=1
end
p list[N]
