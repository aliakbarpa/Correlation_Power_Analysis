function [key_trace] = demo_dpa(workspace,first, last, method, keys)

%DEMO_DPA is a demo to illustrate DPA attacks
%
% DESCRIPTION:
%
% demo_dpa(workspace, first, last, method) 
% performs a DPA with the specified method on some keys for some data
%    
% In the demo, the output of the AES SubBytes function is attacked. This
% demo works for the two sample Matlab workspace "WS1.mat" and "WS2.mat".
% Note that the power model is encoded in the demo. You need to look for
% "bitget" and "byte_Hamming_weight". Further note that the entire
% workspace is loaded to memory. This is no problem for WS1, but it might
% be nasty for machines with low memory, when working with WS2.
% 
% - workspace : the data that should be analyzed (traces, inputs)
%		       
% - first : keybyte to start with (1<=first <= 256)
% - last  : keybyte to end with (1<= first,last <= 256)
% - method: defines the statistical analysis (either 'kocher' or
% 'correlation')
%		
% RETURNVALUE:
%
% key_trace: a matrix that consist of the DPA traces for the keybytes.
% Although always a matrix with 256 rows is returned only the rows from
% 'first' to 'last' contain meaningful results.
%
% EXAMPLE:
%                                            
%keys = demo_dpa('Attack.mat',1,256,'correlation', 1);


% Author: Elisabeth Oswald, 2.5.2004
% Last revision: 08.06.2006


% load data

disp('Reading in data ...');

load('-mat',workspace);

% First key
if(keys == 1)
b=1;
c=1;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Second Key
if(keys == 2)
b=2;
c=6;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Third Key
if(keys == 3)
b=3;
c=11;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Fourth Key
if(keys == 4)
b=4;
c=16;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Fifth Key
if(keys == 5)
b=5;
c=5;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Sixth Key
if(keys == 6)
b=6;
c=10;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Seventh Key
if(keys == 7)
b=7;
c=15;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Eighth Key
if(keys == 8)
b=8;
c=4;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Ninth Key
if(keys == 9)
b=9;
c=9;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Tenth Key
if(keys == 10)
b=10;
c=14;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Eleventh Key
if(keys == 11)
b=11;
c=3;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Twelefth Key
if(keys == 12)
b=12;
c=8;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Thirteenth Key
if(keys == 13)
b=13;
c=13;
inputs=input(:,b);
inputs2 = input(:,c);       
end 

% Fourteenth Key
if(keys == 14)
b=14;
c=2;
inputs=input(:,b);
inputs2 = input(:,c);       
end
% Fourteenth Key
if(keys == 15)
b=15;
c=7;
inputs=input(:,b);
inputs2 = input(:,c);       
end
% Sixteenth Key
if(keys == 16)
b=16;
c=12;
inputs=input(:,b);
inputs2 = input(:,c);       
end


% predict the SubBytes output: SubBytes(XOR(key,data))

disp('Predicting intermediate values ...');
[m,n] = size(traces);

key = [0:255];
after_sbox = zeros(m,256);

for i=1:m
    %modified by Ali
    after_sbox(i,:) = (bitxor(inputs2(i), (InvSubBytes(bitxor(inputs(i),key)+1))));
end


key_trace = zeros(256,n);

if (strcmp(method,'kocher'))
    
    % predict the power consumption

    disp('Predicting the instantaneous power consumption ...');
    power_consumption = bitget(after_sbox,1);
    
    % correlate the predicted power consumption with the real power 
    % consumption
    disp('Generating the difference traces ...');

    for i=first:last

        key_trace(i,:) = sum(traces(find(power_consumption(:,i)==1),:)) - sum(traces(find(power_consumption(:,i)==0),:));

    end

end

if (strcmp(method,'correlation'))

    % predict the power consumption

    disp('Predicting the instantaneous power consumption ...');
    power_consumption = byte_Hamming_weight(after_sbox+1);
    
    % correlate the predicted power consumption with the real power
    % consumption
    disp('Generating the correlation traces ...');

    chunksize=2;
    chunks=n/2;
    for i=first:last
        for j=1:chunks
          
            cmatrix= corrcoef([traces(:,1+(j-1)*chunksize:j*chunksize)  power_consumption(:,i)]);
            key_trace(i,1+(j-1)*chunksize:j*chunksize) =cmatrix(chunksize+1,1:chunksize);
            
        end
    end

end