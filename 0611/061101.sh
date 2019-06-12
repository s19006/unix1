#!/bin/bash

echo $((($(date --date="2019/9/1" +'%s') - $(date +'%s'))/(60 * 60 *24)))
