init = 0.001;
last = 10;
xd_init = 1;
xd_last = 25;
N = 1;
tf = 100;
hold on
for ii = 1:100
    u_ic4 = 0;
    xdot_ic4 = 0;
    x_ic4 = init + (last+init)*randn(N,1);
    xd4 = init + (last+init)*randn(N,1);
    k4=init + (last+init)*rand(N,1);
    m4=init + (last+init)*rand(N,1);
    c4=init + (last+init)*rand(N,1);
    theta = [m4, c4, k4];
    g4=9.8;
    a_hat_ic =init + (last+init)*rand(N,1);
    phi4=init + (last+init)*rand(N,1);
    s4=0.1;
    a4 = init + (last+init)*rand(N,1);
    theta_hat_ic=[init + (last+init)*rand(N,1), init + (last+init)*rand(N,1), init + (last+init)*rand(N,1)];
    alpha4 =0.1;
    beta4 = 0.1;
    gamma = [0.1, 0.1, 0.1];
    gamma4 = diag(gamma);
    gamma_a4 = 0.1;
    out = sim('problem4_simulink_')
    figure(1)
    subplot(3,2,1)
    hold on
    plot(out.e_t)
    xlabel('time');
    ylabel('e');
    grid on
    subplot(3,2,2)
    hold on
    plot(out.r_t)
    xlabel('time');
    ylabel('r');
    grid on
    subplot(3,2,3)
    hold on
    plot(out.u_tilda_t)
    xlabel('time');
    ylabel('u tilda');
    grid on
    subplot(3,2,4)
    hold on
    plot(out.mu_t)
    xlabel('time');
    ylabel('\mu');
    grid on
    subplot(3,2,5)
    hold on
    plot(out.theta_tilda_t)
    xlabel('time');
    ylabel('theta tilda');
    grid on
    subplot(3,2,6)
    hold on
    plot(out.a_tilda_t)
    xlabel('time');
    ylabel('a tilda');
    grid on  
end
hold off

