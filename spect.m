function out = spect(base,magnitude,lamda_max,width,plot_choice)
for i = 1:length(lamda_max)
%spect creat spectrum
    spectrum(i,:)= magnitude(i) * gaussmf(base,[width(i),lamda_max(i)]) 

end
out = sum(spectrum);
if strcmpi(plot_choice, 'y')
    plot(base,out)
end
end

% spect(200:400,[1.3,1,4],[300,340],[10,10],'y')