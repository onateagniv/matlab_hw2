% Author Name: [Gaetano Vingelli]
% Email: [vingel78@rowan.edu]
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: [Simple Encryption Function]
% Date: [10/11/2024]

%creates a function for the message that is based on the caesar cipher file
function message = caesar_cipher(og, sh)
og = char(og);
ascii = double(og);
for i = 1:length(ascii)
    if ascii(i) >= 97 && ascii(i) <=122
        ascii(i) = mod(ascii(i) - 97 + sh, 26) + 97;
    end
end
message = char(ascii);
end