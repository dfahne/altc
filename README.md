Published with surge.sh

`echo deeply-distance.surge.sh > CNAME`

path: _site

##Setting a CNAME

To get started, you’ll need have a custom domain and sign into your account to manage it. now:

* Add a new CNAME record to your domain.

* Set the hostnames @ and www to:

`na-west1.surge.sh`

* ...or A to 192.241.214.148

* Additionally, setting the hostname * to na-west1.surge.sh will allow you to deploy to custom subdomains on your domain as well.

##Deploy

`surge path/to/my-project my-custom-domain.com`

or

`echo your-own-domain.com > CNAME`

