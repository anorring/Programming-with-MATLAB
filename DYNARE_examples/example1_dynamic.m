function [residual, g1, g2, g3] = example1_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(6, 1);
T14 = y(8)^(1+params(6));
T30 = y(5)*exp(y(9))/(exp(y(12))*y(11));
T37 = params(3)*exp(y(12))*y(10)+y(6)*(1-params(4));
T45 = exp(y(7))*y(1)^params(3);
T46 = y(8)^(1-params(3));
T47 = T45*T46;
lhs =y(5)*params(5)*T14;
rhs =(1-params(3))*y(4);
residual(1)= lhs-rhs;
lhs =y(6);
rhs =params(1)*T30*T37;
residual(2)= lhs-rhs;
lhs =y(4);
rhs =T47;
residual(3)= lhs-rhs;
lhs =y(6);
rhs =exp(y(9))*(y(4)-y(5))+(1-params(4))*y(1);
residual(4)= lhs-rhs;
lhs =y(7);
rhs =params(2)*y(2)+params(7)*y(3)+x(it_, 1);
residual(5)= lhs-rhs;
lhs =y(9);
rhs =y(2)*params(7)+params(2)*y(3)+x(it_, 2);
residual(6)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(6, 14);

  %
  % Jacobian matrix
  %

T76 = exp(y(9))/(exp(y(12))*y(11));
T82 = exp(y(12))*y(11)*exp(y(12))*y(11);
T83 = (-(y(5)*exp(y(9))*exp(y(12))))/T82;
T88 = exp(y(7))*getPowerDeriv(y(1),params(3),1);
T90 = (-(T46*T88));
T98 = getPowerDeriv(y(8),1+params(6),1);
T100 = getPowerDeriv(y(8),1-params(3),1);
T107 = (-(y(5)*exp(y(9))*exp(y(12))*y(11)))/T82;
  g1(1,4)=(-(1-params(3)));
  g1(1,5)=params(5)*T14;
  g1(1,8)=y(5)*params(5)*T98;
  g1(2,10)=(-(params(1)*T30*params(3)*exp(y(12))));
  g1(2,5)=(-(params(1)*T37*T76));
  g1(2,11)=(-(params(1)*T37*T83));
  g1(2,6)=1-params(1)*T30*(1-params(4));
  g1(2,9)=(-(params(1)*T30*T37));
  g1(2,12)=(-(params(1)*(T37*T107+T30*params(3)*exp(y(12))*y(10))));
  g1(3,4)=1;
  g1(3,1)=T90;
  g1(3,7)=(-T47);
  g1(3,8)=(-(T45*T100));
  g1(4,4)=(-exp(y(9)));
  g1(4,5)=exp(y(9));
  g1(4,1)=(-(1-params(4)));
  g1(4,6)=1;
  g1(4,9)=(-(exp(y(9))*(y(4)-y(5))));
  g1(5,2)=(-params(2));
  g1(5,7)=1;
  g1(5,3)=(-params(7));
  g1(5,13)=(-1);
  g1(6,2)=(-params(7));
  g1(6,3)=(-params(2));
  g1(6,9)=1;
  g1(6,14)=(-1);

if nargout >= 3,
  %
  % Hessian matrix
  %

  v2 = zeros(48,3);
  v2(1,1)=1;
  v2(1,2)=103;
  v2(1,3)=params(5)*T98;
  v2(2,1)=1;
  v2(2,2)=64;
  v2(2,3)=  v2(1,3);
  v2(3,1)=1;
  v2(3,2)=106;
  v2(3,3)=y(5)*params(5)*getPowerDeriv(y(8),1+params(6),2);
  v2(4,1)=2;
  v2(4,2)=66;
  v2(4,3)=(-(params(1)*params(3)*exp(y(12))*T76));
  v2(5,1)=2;
  v2(5,2)=131;
  v2(5,3)=  v2(4,3);
  v2(6,1)=2;
  v2(6,2)=150;
  v2(6,3)=(-(params(1)*params(3)*exp(y(12))*T83));
  v2(7,1)=2;
  v2(7,2)=137;
  v2(7,3)=  v2(6,3);
  v2(8,1)=2;
  v2(8,2)=145;
  v2(8,3)=(-(params(1)*T37*(-(exp(y(9))*exp(y(12))))/T82));
  v2(9,1)=2;
  v2(9,2)=67;
  v2(9,3)=  v2(8,3);
  v2(10,1)=2;
  v2(10,2)=151;
  v2(10,3)=(-(params(1)*T37*(-((-(y(5)*exp(y(9))*exp(y(12))))*(exp(y(12))*exp(y(12))*y(11)+exp(y(12))*exp(y(12))*y(11))))/(T82*T82)));
  v2(11,1)=2;
  v2(11,2)=75;
  v2(11,3)=(-(params(1)*(1-params(4))*T76));
  v2(12,1)=2;
  v2(12,2)=62;
  v2(12,3)=  v2(11,3);
  v2(13,1)=2;
  v2(13,2)=81;
  v2(13,3)=(-(params(1)*(1-params(4))*T83));
  v2(14,1)=2;
  v2(14,2)=146;
  v2(14,3)=  v2(13,3);
  v2(15,1)=2;
  v2(15,2)=122;
  v2(15,3)=(-(params(1)*T30*params(3)*exp(y(12))));
  v2(16,1)=2;
  v2(16,2)=135;
  v2(16,3)=  v2(15,3);
  v2(17,1)=2;
  v2(17,2)=117;
  v2(17,3)=(-(params(1)*T37*T76));
  v2(18,1)=2;
  v2(18,2)=65;
  v2(18,3)=  v2(17,3);
  v2(19,1)=2;
  v2(19,2)=123;
  v2(19,3)=(-(params(1)*T37*T83));
  v2(20,1)=2;
  v2(20,2)=149;
  v2(20,3)=  v2(19,3);
  v2(21,1)=2;
  v2(21,2)=118;
  v2(21,3)=(-(params(1)*T30*(1-params(4))));
  v2(22,1)=2;
  v2(22,2)=79;
  v2(22,3)=  v2(21,3);
  v2(23,1)=2;
  v2(23,2)=121;
  v2(23,3)=(-(params(1)*T30*T37));
  v2(24,1)=2;
  v2(24,2)=164;
  v2(24,3)=(-(params(1)*(T30*params(3)*exp(y(12))+params(3)*exp(y(12))*T107)));
  v2(25,1)=2;
  v2(25,2)=138;
  v2(25,3)=  v2(24,3);
  v2(26,1)=2;
  v2(26,2)=159;
  v2(26,3)=(-(params(1)*(T37*(-(exp(y(9))*exp(y(12))*y(11)))/T82+params(3)*exp(y(12))*y(10)*T76)));
  v2(27,1)=2;
  v2(27,2)=68;
  v2(27,3)=  v2(26,3);
  v2(28,1)=2;
  v2(28,2)=165;
  v2(28,3)=(-(params(1)*(T37*((-(y(5)*exp(y(9))*exp(y(12))))*T82-(-(y(5)*exp(y(9))*exp(y(12))*y(11)))*(exp(y(12))*exp(y(12))*y(11)+exp(y(12))*exp(y(12))*y(11)))/(T82*T82)+params(3)*exp(y(12))*y(10)*T83)));
  v2(29,1)=2;
  v2(29,2)=152;
  v2(29,3)=  v2(28,3);
  v2(30,1)=2;
  v2(30,2)=160;
  v2(30,3)=(-(params(1)*(1-params(4))*T107));
  v2(31,1)=2;
  v2(31,2)=82;
  v2(31,3)=  v2(30,3);
  v2(32,1)=2;
  v2(32,2)=163;
  v2(32,3)=(-(params(1)*(T37*T107+T30*params(3)*exp(y(12))*y(10))));
  v2(33,1)=2;
  v2(33,2)=124;
  v2(33,3)=  v2(32,3);
  v2(34,1)=2;
  v2(34,2)=166;
  v2(34,3)=(-(params(1)*(params(3)*exp(y(12))*y(10)*T107+T37*(T82*(-(y(5)*exp(y(9))*exp(y(12))*y(11)))-(-(y(5)*exp(y(9))*exp(y(12))*y(11)))*(T82+T82))/(T82*T82)+T30*params(3)*exp(y(12))*y(10)+params(3)*exp(y(12))*y(10)*T107)));
  v2(35,1)=3;
  v2(35,2)=1;
  v2(35,3)=(-(T46*exp(y(7))*getPowerDeriv(y(1),params(3),2)));
  v2(36,1)=3;
  v2(36,2)=85;
  v2(36,3)=T90;
  v2(37,1)=3;
  v2(37,2)=7;
  v2(37,3)=  v2(36,3);
  v2(38,1)=3;
  v2(38,2)=91;
  v2(38,3)=(-T47);
  v2(39,1)=3;
  v2(39,2)=99;
  v2(39,3)=(-(T88*T100));
  v2(40,1)=3;
  v2(40,2)=8;
  v2(40,3)=  v2(39,3);
  v2(41,1)=3;
  v2(41,2)=105;
  v2(41,3)=(-(T45*T100));
  v2(42,1)=3;
  v2(42,2)=92;
  v2(42,3)=  v2(41,3);
  v2(43,1)=3;
  v2(43,2)=106;
  v2(43,3)=(-(T45*getPowerDeriv(y(8),1-params(3),2)));
  v2(44,1)=4;
  v2(44,2)=116;
  v2(44,3)=(-exp(y(9)));
  v2(45,1)=4;
  v2(45,2)=51;
  v2(45,3)=  v2(44,3);
  v2(46,1)=4;
  v2(46,2)=117;
  v2(46,3)=exp(y(9));
  v2(47,1)=4;
  v2(47,2)=65;
  v2(47,3)=  v2(46,3);
  v2(48,1)=4;
  v2(48,2)=121;
  v2(48,3)=(-(exp(y(9))*(y(4)-y(5))));
  g2 = sparse(v2(:,1),v2(:,2),v2(:,3),6,196);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],6,2744);
end
end
end
end
