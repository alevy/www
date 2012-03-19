#!/usr/bin/env bash
old_dir=`pwd`

cd `dirname $0`
git pull http://amitlevy.com/repo/amitlevy.com.git

cd $old_dir
