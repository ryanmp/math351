

% testing!

test_f = @(x) x.^3 + x.^2 + x + 1;
xs = 1:0.1:2
ys = test_f(xs)
true_ans = 8.583333333333333333;
our_ans = comp_simpson(xs,ys);
true_ans - our_ans

% yay, true_ans == comp_simpson !

% part b

f_b = @(x) log(x);

h = 1;
xs = 1:h:9;
ys = f_b(xs);

format long

true_val = 9*log(9)-8
our_val = comp_simpson(xs,ys)
diff = true_val - our_val

