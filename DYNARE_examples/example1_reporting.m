%
% Status : main Dynare file
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

if isoctave || matlab_ver_less_than('8.6')
    clear all
else
    clearvars -global
    clear_persistent_variables(fileparts(which('dynare')), false)
end
tic0 = tic;
% Save empty dates and dseries objects in memory.
dates('initialize');
dseries('initialize');
% Define global variables.
global M_ options_ oo_ estim_params_ bayestopt_ dataset_ dataset_info estimation_info ys0_ ex0_
options_ = [];
M_.fname = 'example1_reporting';
M_.dynare_version = '4.5.4';
oo_.dynare_version = '4.5.4';
options_.dynare_version = '4.5.4';
%
% Some global variables initialization
%
global_initialization;
diary off;
diary('example1_reporting.log');
M_.exo_names = 'e';
M_.exo_names_tex = 'e';
M_.exo_names_long = 'e';
M_.exo_names = char(M_.exo_names, 'u');
M_.exo_names_tex = char(M_.exo_names_tex, 'u');
M_.exo_names_long = char(M_.exo_names_long, 'u');
M_.endo_names = 'y';
M_.endo_names_tex = 'y';
M_.endo_names_long = 'y';
M_.endo_names = char(M_.endo_names, 'c');
M_.endo_names_tex = char(M_.endo_names_tex, 'c');
M_.endo_names_long = char(M_.endo_names_long, 'c');
M_.endo_names = char(M_.endo_names, 'k');
M_.endo_names_tex = char(M_.endo_names_tex, 'k');
M_.endo_names_long = char(M_.endo_names_long, 'k');
M_.endo_names = char(M_.endo_names, 'a');
M_.endo_names_tex = char(M_.endo_names_tex, 'a');
M_.endo_names_long = char(M_.endo_names_long, 'a');
M_.endo_names = char(M_.endo_names, 'h');
M_.endo_names_tex = char(M_.endo_names_tex, 'h');
M_.endo_names_long = char(M_.endo_names_long, 'h');
M_.endo_names = char(M_.endo_names, 'b');
M_.endo_names_tex = char(M_.endo_names_tex, 'b');
M_.endo_names_long = char(M_.endo_names_long, 'b');
M_.endo_partitions = struct();
M_.param_names = 'beta';
M_.param_names_tex = 'beta';
M_.param_names_long = 'beta';
M_.param_names = char(M_.param_names, 'rho');
M_.param_names_tex = char(M_.param_names_tex, 'rho');
M_.param_names_long = char(M_.param_names_long, 'rho');
M_.param_names = char(M_.param_names, 'alpha');
M_.param_names_tex = char(M_.param_names_tex, 'alpha');
M_.param_names_long = char(M_.param_names_long, 'alpha');
M_.param_names = char(M_.param_names, 'delta');
M_.param_names_tex = char(M_.param_names_tex, 'delta');
M_.param_names_long = char(M_.param_names_long, 'delta');
M_.param_names = char(M_.param_names, 'theta');
M_.param_names_tex = char(M_.param_names_tex, 'theta');
M_.param_names_long = char(M_.param_names_long, 'theta');
M_.param_names = char(M_.param_names, 'psi');
M_.param_names_tex = char(M_.param_names_tex, 'psi');
M_.param_names_long = char(M_.param_names_long, 'psi');
M_.param_names = char(M_.param_names, 'tau');
M_.param_names_tex = char(M_.param_names_tex, 'tau');
M_.param_names_long = char(M_.param_names_long, 'tau');
M_.param_partitions = struct();
M_.exo_det_nbr = 0;
M_.exo_nbr = 2;
M_.endo_nbr = 6;
M_.param_nbr = 7;
M_.orig_endo_nbr = 6;
M_.aux_vars = [];
M_.Sigma_e = zeros(2, 2);
M_.Correlation_matrix = eye(2, 2);
M_.H = 0;
M_.Correlation_matrix_ME = 1;
M_.sigma_e_is_diagonal = 1;
M_.det_shocks = [];
options_.block=0;
options_.bytecode=0;
options_.use_dll=0;
M_.hessian_eq_zero = 0;
erase_compiled_function('example1_reporting_static');
erase_compiled_function('example1_reporting_dynamic');
M_.orig_eq_nbr = 6;
M_.eq_nbr = 6;
M_.ramsey_eq_nbr = 0;
M_.set_auxiliary_variables = exist(['./' M_.fname '_set_auxiliary_variables.m'], 'file') == 2;
M_.lead_lag_incidence = [
 0 4 10;
 0 5 11;
 1 6 0;
 2 7 0;
 0 8 0;
 3 9 12;]';
M_.nstatic = 1;
M_.nfwrd   = 2;
M_.npred   = 2;
M_.nboth   = 1;
M_.nsfwrd   = 3;
M_.nspred   = 3;
M_.ndynamic   = 5;
M_.equations_tags = {
};
M_.static_and_dynamic_models_differ = 0;
M_.exo_names_orig_ord = [1:2];
M_.maximum_lag = 1;
M_.maximum_lead = 1;
M_.maximum_endo_lag = 1;
M_.maximum_endo_lead = 1;
oo_.steady_state = zeros(6, 1);
M_.maximum_exo_lag = 0;
M_.maximum_exo_lead = 0;
oo_.exo_steady_state = zeros(2, 1);
M_.params = NaN(7, 1);
M_.NNZDerivatives = [26; 48; -1];
M_.params( 3 ) = 0.36;
alpha = M_.params( 3 );
M_.params( 2 ) = 0.95;
rho = M_.params( 2 );
M_.params( 7 ) = 0.025;
tau = M_.params( 7 );
M_.params( 1 ) = 0.99;
beta = M_.params( 1 );
M_.params( 4 ) = 0.025;
delta = M_.params( 4 );
M_.params( 6 ) = 0;
psi = M_.params( 6 );
M_.params( 5 ) = 2.95;
theta = M_.params( 5 );
phi   = 0.1;
%
% INITVAL instructions
%
options_.initval_file = 0;
oo_.steady_state( 1 ) = 1.08068253095672;
oo_.steady_state( 2 ) = 0.80359242014163;
oo_.steady_state( 5 ) = 0.29175631001732;
oo_.steady_state( 3 ) = 11.08360443260358;
oo_.steady_state( 4 ) = 0;
oo_.steady_state( 6 ) = 0;
oo_.exo_steady_state( 1 ) = 0;
oo_.exo_steady_state( 2 ) = 0;
if M_.exo_nbr > 0
	oo_.exo_simul = ones(M_.maximum_lag,1)*oo_.exo_steady_state';
end
if M_.exo_det_nbr > 0
	oo_.exo_det_simul = ones(M_.maximum_lag,1)*oo_.exo_det_steady_state';
end
%
% SHOCKS instructions
%
M_.exo_det_length = 0;
M_.Sigma_e(1, 1) = (0.009)^2;
M_.Sigma_e(2, 2) = (0.009)^2;
M_.Sigma_e(1, 2) = 0.009*0.009*phi;
M_.Sigma_e(2, 1) = M_.Sigma_e(1, 2);
M_.sigma_e_is_diagonal = 0;
var_list_ = char();
info = stoch_simul(var_list_);
shocke = dseries();
shocku = dseries();
shocke = [shocke dseries(y_e, dates('2014q3'), 'y')];
shocku = [shocku dseries(y_u, dates('2014q3'), 'y')];
shocke = [shocke dseries(c_e, dates('2014q3'), 'c')];
shocku = [shocku dseries(c_u, dates('2014q3'), 'c')];
shocke = [shocke dseries(k_e, dates('2014q3'), 'k')];
shocku = [shocku dseries(k_u, dates('2014q3'), 'k')];
shocke = [shocke dseries(a_e, dates('2014q3'), 'a')];
shocku = [shocku dseries(a_u, dates('2014q3'), 'a')];
shocke = [shocke dseries(h_e, dates('2014q3'), 'h')];
shocku = [shocku dseries(h_u, dates('2014q3'), 'h')];
shocke = [shocke dseries(b_e, dates('2014q3'), 'b')];
shocku = [shocku dseries(b_u, dates('2014q3'), 'b')];
r = report();
r = r.addPage('title',{'Dseries/Report Example','Shock e'},...
                  'titleFormat', {'\Large\bfseries', '\large\bfseries'});
r = r.addSection('cols', 2);
r = r.addGraph('data', shocke.y, 'title', 'y', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocke.c, 'title', 'c', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocke.k, 'title', 'k', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocke.a, 'title', 'a', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocke.h, 'title', 'h', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocke.b, 'title', 'b', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addVspace('number', 2);
r = r.addSection('cols', 1);
r = r.addTable('range', dates('2022q1'):dates('2024q1'), 'precision', 5);
r = r.addSeries('data', shocke.y);
r = r.addSeries('data', shocke.c);
r = r.addSeries('data', shocke.k);
r = r.addSeries('data', shocke.a);
r = r.addSeries('data', shocke.h);
r = r.addSeries('data', shocke.b);
r = r.addPage('title',{'Dseries/Report Example','Shock u'},...
                  'titleFormat', {'\Large\bfseries', '\large\bfseries'});
r = r.addSection('cols', 2);
r = r.addGraph('data', shocku.y, 'title', 'y', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocku.c, 'title', 'c', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocku.k, 'title', 'k', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocku.a, 'title', 'a', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocku.h, 'title', 'h', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addGraph('data', shocku.b, 'title', 'b', ...
                     'showGrid', false, 'yTickLabelPrecision', 2, ...
                     'yTickLabelZeroFill', false, ...
                     'showZeroLine', true, 'zeroLineColor', 'red');
r = r.addVspace('number', 2);
r = r.addSection('cols', 1);
r = r.addTable('range', dates('2022q1'):dates('2024q1'), 'precision', 5);
r = r.addSeries('data', shocku.y);
r = r.addSeries('data', shocku.c);
r = r.addSeries('data', shocku.k);
r = r.addSeries('data', shocku.a);
r = r.addSeries('data', shocku.h);
r = r.addSeries('data', shocku.b);
r.write();
r.compile();
save('example1_reporting_results.mat', 'oo_', 'M_', 'options_');
if exist('estim_params_', 'var') == 1
  save('example1_reporting_results.mat', 'estim_params_', '-append');
end
if exist('bayestopt_', 'var') == 1
  save('example1_reporting_results.mat', 'bayestopt_', '-append');
end
if exist('dataset_', 'var') == 1
  save('example1_reporting_results.mat', 'dataset_', '-append');
end
if exist('estimation_info', 'var') == 1
  save('example1_reporting_results.mat', 'estimation_info', '-append');
end
if exist('dataset_info', 'var') == 1
  save('example1_reporting_results.mat', 'dataset_info', '-append');
end
if exist('oo_recursive_', 'var') == 1
  save('example1_reporting_results.mat', 'oo_recursive_', '-append');
end


disp(['Total computing time : ' dynsec2hms(toc(tic0)) ]);
if ~isempty(lastwarn)
  disp('Note: warning(s) encountered in MATLAB/Octave code')
end
diary off
