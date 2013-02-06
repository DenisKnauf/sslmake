Making SSL-Certificates
=======================

Creates keys and certificate requests via openssl.
It tries to keep files, if there exist. But if you change one file,
files which depend on it, will be recreated by this program.

Howto
=====

All files will be replaced, if files which it depends on, are newer.
For example, if you create the `example.key`, and you run `sslmake example.csr`,
your CSR will be replaced be a new. But if your CSR is newer than the KEY,
it will not replace your CSR.

First Use
---------

If you creates something a first time, then you are alright here.
Renewing and removing will follow in 'Second Use'.

* Create the config:

		# ./sslmake example.cnf

	This will copy `/etc/ssl/openssl.cnf` to local directory.
	Now you	edit this file and you can do next step.
	Important are commonName_default and so on.
	If you do not know the %.cnf, you should read a openssl-howto
	about `openssl.cnf`.

* Create the KEY:

		# ./sslmake %.key
  
	It will create a key-file %.key with a 4096 bit strong rsa.

* Create the CSR:

		# ./sslmake %.csr
  
	This will use %.cnf as configfile and creates a key and the csr
	if didn't exists. Everything in one step.
