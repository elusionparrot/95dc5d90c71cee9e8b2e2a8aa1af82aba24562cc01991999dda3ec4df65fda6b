nums=[]
for l in open("corrected","r"):
  for n in l.strip():
    nums.append(int(n))

ch=[]
for c in range(len(nums)/3):
  cn=nums[c*3]*36+nums[c*3+1]*6+nums[c*3+2]
  ch.append(cn)

s=''.join([ chr(cn) for cn in ch])
print s

