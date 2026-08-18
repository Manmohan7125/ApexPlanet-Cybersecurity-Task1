#!/bin/bash
# Task-1 OpenSSL demonstration
# Run only in your own lab.

set -e

echo "Creating sample plaintext..."
printf '%s\n' 'ApexPlanet Task-1 OpenSSL demonstration' > message.txt

echo "Encrypting with AES-256-CBC..."
openssl enc -aes-256-cbc -salt -pbkdf2 -in message.txt -out message.enc

echo "Decrypting..."
openssl enc -d -aes-256-cbc -pbkdf2 -in message.enc -out message_decrypted.txt

echo "Decrypted content:"
cat message_decrypted.txt

echo "SHA-256 hash:"
sha256sum message.txt
