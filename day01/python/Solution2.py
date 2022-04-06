#more optimized than part 1 solution

with open('input.txt', 'r') as data:
  lines = data.read().splitlines()
  lines = [ int(x) for x in lines ]


for x in range(len(lines)):
  for y in range(x, len(lines)):
    for z in range(y, len(lines)):
      if lines[x] + lines[y] + lines[z] == 2020:
        print(lines[x] * lines[y] * lines[z])
