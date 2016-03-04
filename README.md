# What is PK2DNA?

This is an open-source / learning version of the code that powers http://twitter.com/pk2dna.

Read more about it here: [Building a Macabre 45-year Twitter Bot](https://medium.com/@steyblind/how-i-built-my-macabre-45-year-twitter-bot-3051fb9f9e04#.j76lc9q6c)

## So, you'd like to tweet your genome!

This involves a linux-like environment, a text editor, and a twitter account. Here's what you do:

### Get data + credentials

* [Download your genetic blueprint from 23andMe](https://customercare.23andme.com/hc/en-us/articles/202907670-Accessing-your-Raw-Data)
* Create a Twitter App (for `python-twitter` auth) at http://apps.twitter.com
* [Get a server](https://m.do.co/c/bf26cf8235d8) somewhere for this repo. Clone and plop it up there.
 * (assumes Ubuntu)

### Configure
* Run `pip install -r requirements.txt`
* Put your genetic blueprint data file from 23andMe into `/data`
 * be sure to trim any unwanted comments/lines of text before you begin!
* Drop your client key/secret and access token key/secret into `twitter_settings.sample.py` and rename to `twitter_settings.py`
* Add `watch -n[time in seconds] /your/path/to/pk2dna/postAndTrimFirstLineOfGenome.sh 2> /your/path/to/pk2dna/watch_errors.txt` to `/etc/rc.local`

### To run
* `reboot` your server, and watch the tweets roll in!
 * If you'd like to have less fun, you can run `source /etc/rc.local`

### Troubleshooting
* See if there are python execution errors by running `python postAndTrimFirstLineOfGenome.py` or `python postGenomeStatus.py` from the command line.
 * If you don't want to execute, but you want to compile, run `python -m py_compile postGenomeStatus.py postAndTrimFirstLineOfGenome.py`. This will show you syntax errors w/out tweeting.
* Also, check `[path/to/pk2dna/]watch_errors.txt` to see if watch ran into any issues
