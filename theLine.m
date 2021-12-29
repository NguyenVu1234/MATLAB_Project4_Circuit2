function y = theLine(h,q,x)

eqn = h*x+q
y = eqn.*((x>= min(x) + 1)- (x>=max(x)-1))

end