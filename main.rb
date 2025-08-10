r, c = gets.split.map(&:to_i)
# 주사위 상태: [top, bottom, front, back, left, right]
s = [1, 6, 2, 5, 4, 3]
def roll_right(d); d.values_at(4,5,2,3,1,0); end
def roll_left(d);  d.values_at(5,4,2,3,0,1); end
def roll_down(d);  d.values_at(3,2,0,1,4,5); end
full = c / 4
rem  = c % 4
ans  = 0
dir  = 1
r.times do |row|
  ans += full * 14
  tmp = s.dup
  rem.times do
    ans += tmp[0]
    tmp = (dir == 1 ? roll_right(tmp) : roll_left(tmp))
  end
  break if row == r - 1
  k = (c - 1) % 4
  k.times { s = (dir == 1 ? roll_right(s) : roll_left(s)) }
  s   = roll_down(s)
  dir = -dir
end
puts ans