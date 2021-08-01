# Error-probability-of-Random-codes-over-a-BSC-Channel

Perform the steps below for the following parameters:

n = 15; k = 10; p = 0.015;<br />
n = 15; k = 10; p = 0.1;<br />
n = 15; k = 10; p = 0.45;<br />
n = 20; k = 10; p = 0.015;<br />
n = 20; k = 10; p = 0.1;<br />
n = 20; k = 10; p = 0.45;<br />

1. Create Random Code: Pick 2
k
random vectors from the binary vector space {0, 1}
n where n is the code
length and the rate is k
n
. This is your code C.
2. Decoding: Define a counter E which calculates number of decoding errors. Initially E = 0. Repeat following
steps (in bullets) for N iterations (N should be at least 500, best to use something of the order of 1000-2000. It
depends upon the execution time on your machine. Higher N gives better approximation).
• Pick a random codeword c from the code C. This is your transmitted codeword
• Simulating BSC channel: Obtain the received vector y by flipping each position of c with probability p.
1
• Run the Minimum Distance Decoding algorithm on y to obtain the estimate cˆ, (This will be the most time
consuming step).
• Maintain a indicator value I(ˆc 6= c) for each iteration. This is 1 if decoder made an error, and 0 otherwise.
• Compute E = E + I(ˆc 6= c)
• Probability of error: Record approximate average probability of error as PE(n, k, p, C) ,
E
N
.
3. Repeat the steps 1, 2 for five times for each value of k, n, p as defined in the problem. You will get one
PE(n, k, p, C) value for each code C.
4. Show outputs: For each (k, n, p) values, output the PE(n, k, p, C) values you get.
5. For each (n, k, p) value-tuple, define
PE(n, k, p) , min
C
PE(n, k, p, C).
This corresponds to the best code among the ones you obtained for specific (n, k, p). Plot the values of PE(n, k, p)
for different (n, k, p) as given in the problem.
6. Recording algorithm and observations on video: For this problem you will record the flow of your
algorithm, example executions, outputs, inferences you gained from the plots, how it corresponds to the theory you
learnt in the class (compare with BSC capacity for each value of p and connect the performance of the codes with
this). Also record if you have done anything more than what the question asked, like run the algorithm for other
values of n, k, p; implementing the encoding process, etc.
