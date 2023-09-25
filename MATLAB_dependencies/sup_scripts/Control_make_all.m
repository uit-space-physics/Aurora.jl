% This script is here to control and call all the make_all_* scripts.
%
% - RunDirs: 
% The simulation folder to analyse/plot.
%       exemple: RunDirs = {'Alfven_536s'}
% Several folders can be analysed (if they have the same root).
%       exemple: RunDirs = {'Alfven_536s', 'Alfven_325s'}
%
% - results_dir: 
% Root of the RunDirs folder(s).
%       exemple: results_dir = "/mnt/data/etienne/Julia/AURORA.jl/data/Visions2/"



results_dir = "/mnt/data/etienne/Julia/AURORA.jl/data/Visions2/"
RunDirs = {'Alfven_536s_correct_msis'} 
%%
make_all_Ie_top     % precipitation-spectra extraction at top
make_all_Ie_top_MI  % precipitation-spectra extraction at top and top-1
%%
make_all_Q_lambda   % excitation and ionization-rates calculations
make_all_I_lambda   % column-emission calculations
%%
make_all_IQ_lambda_plots    % volume/column-emission plots
%%
cxmax = 8               % parameter for colorbar limits
make_all_animations     % electron-flux animation production
