function [EEG_L, EEG_R, EEG] = load_commandline(path)

fname = [path] ; 
load (fname); 
DATA = rec(:,1:8)' ;
EEG = pop_importdata('data', DATA, 'srate', 250, 'dataformat', 'array');
%EEG = pop_eegfiltnew(EEG, 49, 51, [], 1); %notch filter
%EEG = pop_eegfiltnew(EEG, 17,35); %what is the band to choose
[EEG, eventnumbers] = pop_importevent(EEG, 'event','event_file.csv', 'fields', {'latency', 'type', 'duration'}, 'skipline', 1, 'delim', ',') ;
EEG = pop_chanedit(EEG, 'load', 'imaginary_locs.ced');

EEG_L = pop_epoch(EEG, {'LEFT'}, [0 4]);
EEG_R = pop_epoch(EEG, {'RIGHT'}, [0 4]);

%pop_newtimef(EEG_L,1)