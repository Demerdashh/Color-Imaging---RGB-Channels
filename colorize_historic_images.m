%Read the image
img = imread('image.jpg');

%Get the size (rows and columns) of the image 
[r,c] = size(img);

%channel height
channel_height = r/3

% Extract the three color channels with proper variable names
B = img(1:channel_height, :);       % Blue channel (top section)
G = img(channel_height+1:2*channel_height, :);  % Green channel (middle)
R = img(2*channel_height+1:3*channel_height, :); % Red channel (bottom)

%combining the channels 
ColorImg = cat(3, R, G, B);
