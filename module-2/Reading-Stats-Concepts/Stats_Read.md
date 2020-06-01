
# Lab | Reading About Statistic Concepts



## Challenges

### Challenge 1: What is the difference between expected value and mean?
You know both concepts but, is there a difference? Are they synonims? Start investigating. 

The expected value is a form of an average. The difference, I think, is between the expected value and the mean (another form of an average). Typically, these terms are used in the following manner.

An expected value of a random variable, say  X , is a theoretical average whereas a mean is an empirical average of a sample of data. In the former case, the random variable is assumed to be distributed by some probability distribution (for instance, normal) whereas in the latter case the sample is taken as is without any assumptions. 

### Challenge 2: What is the "problem" in science with p-values?
We have told you that a lot of scientifical investigations are based on p-values. The last week, Nature magazine published [an article](http://nature.social/statistical4) regarding the problem. Start digging on it!
The following list clarifies some issues that are commonly misunderstood regarding p-values: [1][2][3]

The p-value is not the probability that the null hypothesis is true, or the probability that the alternative hypothesis is false.
[1] A p-value can indicate the degree of compatibility between a dataset and a particular hypothetical explanation (such as a null hypothesis). 
Specifically, the p-value can be taken as the prior probability of obtaining an effect that is at least as extreme as the observed effect, given that the null hypothesis is true. This should not be confused with the posterior probability that the null hypothesis is true given the observed effect (see prosecutor's fallacy). In fact, frequentist statistics does not attach probabilities to hypotheses.
[2]The p-value is not the probability that the observed effects were produced by random chance alone.The p-value is computed under the assumption that a certain model, usually the null hypothesis, is true. This means that the p-value is a statement about the relation of the data to that hypothesis.
[3]The 0.05 significance level is merely a convention.The 0.05 significance level (alpha level) is often used as the boundary between a statistically significant and a statistically non-significant p-value. However, this does not imply that there is generally a scientific reason to consider results on opposite sides of any threshold as qualitatively different.
[4]The p-value does not indicate the size or importance of the observed effect.[A small p-value can be observed for an effect that is not meaningful or important. In fact, the larger the sample size, the smaller the minimum effect needed to produce a statistically significant p-value (see effect size). Visualizing effect sizes is a critical component of a data-analysis method called estimation statistics.


### Challenge 3: Applying testing to a specific case: A/B testing.
A/B testing is a widely used tool to understand differences between two samples. It is a way to measure the impact of something we did: 
* A marketing campaign.
* A new feature in our application. 
* A new design in our application.
* A different flow in the User Experience flow.

To do this, is very important first to design our experiment. 
* We need to know how we are measuring the impact. If people has the behaviour we want with this new implementation.
* We choose a control group (people who doesn't have/see the new change) and the group which will see the new change. 
* We think about how much data do we need.
* We measure the difference between them.

One example:
Our application has a lot of mini-games. We want people to reach the games that we think are the best but the behaviour is not the expected, they don't reach them.

So we call a designer and after a lot of work he shows us a new design for our application: we will add a botton specific for that kinf of games inviting the users to click on it:

*Click here to discover cool games!*

We think it will work but can we be sure? So instead of implementing this new botton for all users, we implement it for 10% and we compare the results with the users that didn't have it. Is there a significant difference? Is our botton working?

Read more about A/B testing with a couple of examples:

[Another example about Netflix here](http://select.video/artwork4)

[What happened to Basecamp](http://millions.social/tested7)

[An example with Python](http://math.social/tested3)

[A cool general explanation](http://arts.show/tested7)

So, take one single example in the articles you just read, which specific test/s would you apply? (We want you just to do a draft and think a little bit how to apply the tests you already know in this case)
The test can be summarised in two steps:
1. Model H₀ as a distribution on a single real-valued random variable (called the test statistic)
2. Assess how likely the samples, or more extreme ones, could have been generated under H₀. This probability is the famous p-value. The lower it is, the more confident we can be in rejecting H₀.

## Deliverables
You need to submit a markdown file with the answers to the questions above. You can create a new `.md` file or directly edit the `README.md`.

## Submission
Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.
