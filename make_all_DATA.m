
%%%%% LEFT
[EEG1_L, EEG1_R, EEG1] = load_commandline('run1') ; 
[EEG2_L, EEG2_R, EEG2] = load_commandline('run2') ; 
[EEG3_L, EEG3_R, EEG3] = load_commandline('run3') ; 
[EEG4_L, EEG4_R, EEG4] = load_commandline('run4') ; 
[EEG5_L, EEG5_R, EEG5] = load_commandline('run5') ; 
[EEG6_L, EEG6_R, EEG6] = load_commandline('run6') ; 
[EEG7_L, EEG7_R, EEG7] = load_commandline('run7') ; 
[EEG8_L, EEG8_R, EEG8] = load_commandline('run8') ; 
[EEG9_L, EEG9_R, EEG9] = load_commandline('run9') ; 
[EEG10_L, EEG10_R, EEG10] = load_commandline('run10') ; 

TEMP= pop_mergeset( EEG1_L,EEG2_L);
TEMP= pop_mergeset( TEMP,EEG3_L);
TEMP= pop_mergeset( TEMP,EEG4_L);
TEMP= pop_mergeset( TEMP,EEG5_L);
TEMP= pop_mergeset( TEMP,EEG6_L);
TEMP= pop_mergeset( TEMP,EEG7_L);
TEMP= pop_mergeset( TEMP,EEG8_L);
TEMP= pop_mergeset( TEMP,EEG9_L);
EEG_L= pop_mergeset( TEMP,EEG10_L);


TEMP= pop_mergeset( EEG1_R,EEG2_R);
TEMP= pop_mergeset( TEMP,EEG3_R);
TEMP= pop_mergeset( TEMP,EEG4_R);
TEMP= pop_mergeset( TEMP,EEG5_R);
TEMP= pop_mergeset( TEMP,EEG6_R);
TEMP= pop_mergeset( TEMP,EEG7_R);
TEMP= pop_mergeset( TEMP,EEG8_R);
TEMP= pop_mergeset( TEMP,EEG9_R);
EEG_R= pop_mergeset( TEMP,EEG10_R);

TEMP= pop_mergeset( EEG1,EEG2);
TEMP= pop_mergeset( TEMP,EEG3);
TEMP= pop_mergeset( TEMP,EEG4);
TEMP= pop_mergeset( TEMP,EEG5);
TEMP= pop_mergeset( TEMP,EEG6);
TEMP= pop_mergeset( TEMP,EEG7);
TEMP= pop_mergeset( TEMP,EEG8);
TEMP= pop_mergeset( TEMP,EEG9);
EEG_ALL= pop_mergeset( TEMP,EEG10);



clear EEG1_L EEG2_L EEG3_L EEG4_L EEG5_L EEG6_L EEG7_L EEG8_L EEG9_L EEG10_L TEMP 
clear EEG1_R EEG2_R EEG3_R EEG4_R EEG5_R EEG6_R EEG7_R EEG8_R EEG9_R EEG10_R 
clear EEG1 EEG2 EEG3 EEG4 EEG5 EEG6 EEG7 EEG8 EEG9 EEG10 

clc;  

%%%PLOTS
%pop_eegplot(EEG) %time domain plot
%pop_topoplot(EEG,1, [-500:50:1500] ,'',[6 10] ,0,'electrodes','on'); %topoplot of ERP images
%pop_spectopo(EEG,1,[0 1000],'BOTH', 'freqs', [8 10 12], 'freqrange', [0.1 45]) ; %shows power in frequency domain
%chan = 1 ; pop_timef(EEG, 1, 1, [-1000 1000], 0) ; %time-frequency analysis
%pop_erpimage(LEFTEEG,1, [4],[],'ERP',10,1,{},[],'cbar','on','topo', { [2] EEG.chanlocs EEG.chaninfo } );