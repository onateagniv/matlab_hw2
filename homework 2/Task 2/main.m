message = input('enter a message in lowercase', 's');
sh = input('enter a shift value from 1-25');
encrypt = caesar_cipher(message, sh);
fprintf('Original message: %s\n', message);
fprintf('Encrypted message: %s\n', encrypt);