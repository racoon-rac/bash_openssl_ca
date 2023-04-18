#!/bin/bash

caBaseDir='/etc/pki/FJCA'

privateKeyDir="$caBaseDir/cakey"
certificateDir="$caBaseDir/cacert"
csrDir="$caBaseDir/csrs"
issuedCertDir="$caBaseDir/issued"
crlDir="$caBaseDir/crls"

startSerialNumber="01"

# PrivateKey Directory
mkdir -p "$privateKeyDir"
chmod 0700 "$privateKeyDir"

# Certificate Directory
mkdir "$certificateDir"
chmod 0755 "$certificateDir"

# CSR (Certificate Singing Request) Directory
mkdir "$csrDir"

# Issued Certificate Directory
mkdir "$issuedCertDir"

# CRL (Certificate Revocation List) Directory
mkdir "$crlDir"

# Certificate Management File
touch "$caBaseDir/index.txt"

# Record File to Manage Serial Numbers of Certificate
echo "$startSerialNumber" > "$caBaseDir/serial"

# Record File to Manage Serial Numbers of CRL
echo "$startSerialNumber" > "$caBaseDir/crlnumber"