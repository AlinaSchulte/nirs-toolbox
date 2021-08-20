%This is a demo of how to use the new (in progress) real-time library

% create an instance of the data storage class
data = nirs.realtime.core.Data;

% create a realtime analysis pipeline
job = nirs.realtime.modules.BandPass;
job = nirs.realtime.modules.MotionCorrect(job);

% assign the pipeline to the data such that the pipeline is called
% everytime the data is updated
data.updatefunction=job;

% we could update the data manually using
% >> data.updatedata(randn(1,numchan),time)

listener = nirs.realtime.listeners.simulator;
listener.datasource = nirs.testing.simData;  % where to get the simulation data from
listener.data_output = data;  % where to send the data (this is the storage class we just created above)

listener.start;
data.draw;  % now that the storage class is getting data, we can draw it
% or use "data.gui" 

listener.stop;




% LSL example

data = nirs.realtime.core.Data;

% create a realtime analysis pipeline
job = nirs.realtime.modules.BandPass;
%job = nirs.realtime.modules.MotionCorrect(job);
data.updatefunction=job;


listener = nirs.realtime.listeners.lslStream;
<<<<<<< HEAD
listener.LSLdata_StreamName='Aurora';
listener.LSLmarker_StreamName='EprimeLSL';
=======
listener.LSLdata_StreamName='NIRS';
listener.LSLmarker_StreamName=[];%'EprimeLSL';
>>>>>>> 27694fa3ea73bb5356564aabeee6a41220ba38d2
listener.data_output = data;  % where to send the data (this is the storage class we just created above)

listener.start;

data.draw;  % now that the storage class is getting data, we can draw it

listener.stop;