#!/bin/bash

list=`cat /Users/shourav/_sh/plugin-list`

for plugin in $list 
do

wp plugin install $plugin
wp plugin activate $plugin

done 
