#brute force, not optimal at all

with open('input.txt', 'r') as data:
  lines = data.read().splitlines()
  lines = [ int(x) for x in lines ]


for x in lines:
  for y in lines:
    if x + y == 2020:
      print(x * y)
