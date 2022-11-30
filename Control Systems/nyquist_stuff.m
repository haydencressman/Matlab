top1 = [1];
bot1 = [1 1];

top2 = [1];
bot2 = [1 2 1];

top3 = [1];
bot3 = [1 1 0];

tf1 = tf(top1,bot1);
tf2 = tf(top2,bot2);
tf3 = tf(top3,bot3);

%nyq1 = nyquistplot(tf1);
nyq2 = nyquistplot(tf2);
%nyq3 = nyquistplot(tf3);