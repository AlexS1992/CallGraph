% Root folder and root function to analyse
rootFolder = 'D:\Git\matRad\';
rootFunction = 'matRad_calcPhotonDose.m';

% Output path for the JSON
outputPath = 'D:\Git\CallGraph\';

% Build the call graph by recursively going through the subsequent
% function calls
callGraph = GetCallGraph([rootFolder rootFunction]);

% Trim the file path names down and get the subdirectory structure beneath
% the root directory
callGraph = TrimCallGraphNodes(callGraph, rootFolder);

% Export a JSON containing the call graph
ExportCallGraphAsJSON(callGraph, outputPath);
