#!/bin/bash

# This file is an empty sample file which you (i.e. Pear
# developers) can copy and use to store your API credentials for
# external APIs used by the Pear application.

# To use this file, simply copy it to credentials.sh (which is
# .gitignore'd) and then fill in whatever credentials you need.  Then in
# the window where you run "rails s", first run:
#
#     source credentials.sh
#
# If you then run "rails s", it will have all the environment variables
# available to it.

### CREDENTIALS ###

# Github app credentials are required to sign in to Pear.  
# Here is a link to get set up with the necessary github credentials:
# http://wiki.growstuff.org/index.php/Pear#Setting_up_OAuth

export AWS_ACCESS_KEY_ID="AKIAIOKUPFFMLA54AXYA"
export AWS_SECRET_ACCESS_KEY="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"
export AWS_S3_BUCKET="triviabucket"
export SECRET_TOKEN="84be01ddaccc00125b2a64b54d32c15445dc90b460459ddf30a49cbe4aa700c2d2b993f931f9923eb4ce231207e5fcecb8b4e4d21b076ec409b3285478f1fd53"