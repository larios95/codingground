%***************************************************************************************
% FEMQWEBS @Finite element method for quantum well electronic band structure calculation
% | ------------ |
% | Description: |
% | ------------ |
% The tool box provides the procedure to calculate all band edge energies 
% and corresponding wavefunctions in sinlge quantum square well using
% Finite Element Method.
% | ------------ |
% | Author:      |
% | ------------ |
% Full name: Le Quang Khai
% Email: ronaldokhai@yahoo.com or lqkhai@ajou.ac.kr


%https://es.mathworks.com/matlabcentral/fileexchange/15330-femqwebs?focused=5090025&tab=function

%***************************************************************************************
function [index]=feeldof1(iel,nnel,ndof)
% Purpose:
% Compute system dofs associated with each element in 1D problem
edof=nnel*ndof;
start=(iel-1)*(nnel-1)*ndof;
index=zeros(1,edof);
for i=1:edof
    index(i)=start+i;
end