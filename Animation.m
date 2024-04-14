[X,Y] = meshgrid(-8:0.2:8);
R = sqrt(X.^2 + Y.^2) + eps;

% Define time steps
t = linspace(0, 2*pi, 100);  % Adjust the number of frames by changing 100

% Iterate over time steps
for i = 1:length(t)
    Z = 0.1 + sin(R) .* sin(t(i));  % Update Z for each time step
    
    % Plot the surface
    surf(X, Y, Z);
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    title(['Frame ', num2str(i), '/', num2str(length(t))]);
    
    % Set axis limits to ensure consistent scaling
    xlim([-8, 8]);
    ylim([-8, 8]);
    zlim([-1.2, 1.2]);
    
    % Pause for a short duration to control the animation speed
    pause(0.1);  % Adjust as needed
    
    % Refresh the plot
    drawnow;
end
