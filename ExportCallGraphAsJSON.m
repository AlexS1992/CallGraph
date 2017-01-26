% Export call graph into a JSON
function ExportCallGraphAsJSON(callGraph, outputPath)

fileID = fopen([outputPath 'callGraph.json']);
fprintf(fileID,'Test');
fclose(fileID);

end
