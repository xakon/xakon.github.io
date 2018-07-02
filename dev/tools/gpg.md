GnuPG
=====

Some notes about gpg(1).

GPG can be used for many things, mainly for the following:
 - Generation of keypairs
 - Managing keys
 - Signing messages
 - Encrypting files

## Generating Keypair

Generating a 4096-bit RSA keypair is considered sufficient for almost everyone
in Internet.

Add the following lines in `~/.gnugp/gpg.conf`:

    personal-digest-preferences SHA256
    cert-digest-algo SHA256
    default-preference-list SHA512 SHA384 SHA256 SHA224 AES256 AES192 AES CAST5 ZLIB BZIP2 ZIP Uncompressed

These lines tell GnuPG to use the cryptographically stronger SHA256 hashing
algorithm for signatures in preference to the long-broken SHA1 algorithm.

With that done, we can get down to generating some keys:

    $ gpg --gen-key

GnuPG will prompt about choosing the type of keypair to produce.  The default option
will generate one master key for signing and one subkey for encryption.

Many easy to follow steps are following.  Finally, 4 keys are generated: a master key,
it signing subkey, together with their public/private pairs.

### Managining Keys

Managed keys are kept in `~/.gnupg/` directory.  It should be kept safe, private,
and backed up securely.

    $ gpg --list-keys
    $ gpg --list-secret-keys
    $ gpg --list-public-keys

In most contexts in GnuPG, you can refer to a key by the name of its owner, or by its eight-digit hex ID.
To provide someone with a copy of a public key in ASCII format, run:
    $ gpg --armor --export KEY_ID > xakon-public-key.asc

### Signing a message

Signing a simple text file, using the `--clearsign` option.  The secret passphrase is needed to unlock
the private key.

    $ gpg --clearsign message.txt

Having provided that, the file `message.txt.asc` is created, with PGP sections
and a plaintext ASCII signature.

The message itself is plainly readable; this message isn’t encrypted, it’s just verified
as having been written by a particular person, and not altered since it was written.

Now anyone who has our public key on their keyring can verify that it was actually us who
wrote this message:

    $ gpg --verify message.txt.asc

For all other files, we likely need to make the signature file separate with a
**detached signature**:

    $ gpg --armor --detach-sign archive.tar.gz

This produces a file `archive.tar.gz.asc` in the same directory, containing the signature.
We use `--armor` to make the signature in ASCII, which makes for a longer file but easier
distribution online.

In this case, both the file and the signature are required for verification; put the
signature file first when you check this:

    $ gpg --verify archive.tar.gz.asc archive.tar.gz

### Verify Software Downloads

First, download public keys:

    $ wget http://www.apache.org/httpd/KEYS
    $ gpg --import KEYS

Then download software and verify its signature file:

    $ wget http://www.example.com/apache/httpd/httpd-2.4.4.tar.gz
    $ wget https://www.apache.org/dist/httpd/httpd-2.4.4.tar.gz.asc
    $ gpg --verify httpd-2.4.4.tar.gz.asc httpd-2.4.4.tar.gz

### Encrypting a file

We can encrypt a file so that only nominated people can decrypt and read it. In this case,
we encrypt it not with our own private key, but with the recipient’s public key. This
means that they will be able to decrypt it using their own private key.

First, import our peer's public key into our keychain:

    $ gpg --import john-public.asc

Then, it is possible the encryption of text file `message.txt`:

    $ gpg --armor --recipient 695195A5 --encrypt secret-message.txt

We can add more recipients (using thir HEX keys) on previous command, so that more people
can see the contents of the encrypted file.

Just to be thorough, we can sign the message as well to prove it came from us:

    $ gpg --recipient 695195A5 --recipient 040FE79B --armor --sign --encrypt secret-message.txt

### Decrypt a file

Having a private key whose counter-pair is used to encrypt a text file, we can decrypt it
using:

    $ gpg --decrypt secret-message.txt.asc


## References

 - [Arabesque](http://blog.sanctum.geek.nz/series/linux-crypto/)
 - [Linux Crypto: Passwords](http://blog.sanctum.geek.nz/linux-crypto-passwords/)
 - [Managing Passwords from the Command-Line](http://xmodulo.com/manage-passwords-command-line-linux.html)
 - [Debian Best Practices](http://keyring.debian.org/creating-key.html)
 - [PGP and You](https://robots.thoughtbot.com/pgp-and-you)
