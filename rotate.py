
f=open('grid')

grid=f.readlines()

col=0
for x in range(0,len(grid[0])):
  string=""
  for line in grid:
    string=string+line[x] 
  print string[::-1]
  col=col + 1 
