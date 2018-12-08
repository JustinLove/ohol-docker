#!/bin/sh
s3cmd --config=/ohol/config/.s3cfg -P --signature-v2 put OneLife*.zip s3://wondible-com-wonlife
