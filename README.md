# cryptodir aes-256-cbc mode encryption/decryption directory

usage: `cryptodir {enc | dec} <key> <in_dir> <out_dir>`

`<key>`    256 bit key in 64 bytes hex format.

To generate key you can use hard time and memory key derivation function such as argon2:

    echo -n "some-strong-password" | argon2 some-salt -t 20 -m 20 -r > ./key.txt

Then if you have `somedir` directory create empty `somedir2` directory:

    mkdir somedir2

And create empty `somedir2/.cryptodir_enc` file:

    touch somedir2/.cryptodir_enc

Then encrypt:

    cryptodir enc `cat ./key.txt` somedir somedir2

Create yet anoder `somedir3` directory:

    mkdir somedir3

End create empty `somedir3/.cryptodir_dec` file:

    touch somedir3/.cryptodir_dec

And decrypt:

    cryptodir dec `cat ./key.txt` somedir2 somedir3

Then files in `somedir` should be in `somedir3` directory.

PS: When you use argon2 to generate key from password remeber to remeber ;)
or save not only password but salt and other parameters too.

github.com/pawplo/cryptodir
