#!/bin/bash

echo $((($(date --date="2019/12/31" +'%s') - $(date +'%s'))/(60 * 60 *24)))

