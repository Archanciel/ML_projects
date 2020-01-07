M = [1 2 3;4 5 6]
plotv(M, '-')
close
figure()
plotcube([5 5 5],[ 2 2 2],.8,[1 0 0]);
scatterObj = scatter3(rand(1,30),rand(1,30),rand(1,30),50,rand(30,3),'MarkerFaceColor', 'flat')

hold on

plotcube([.5 .5 .5],[.2 .2 .2],0.1,[0 0 1])