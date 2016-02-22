import os, sys
import twitter
import twitter_settings

api = twitter.Api(**twitter_settings.keys)

# print api.VerifyCredentials()

# pull the line from the buffer
f = open('tweetbuffer')
l = f.readline().strip()
f.close()

# post the tweet
api.PostUpdate(l);

# clear the buffer file
with open('tweetbuffer', 'w'): pass
