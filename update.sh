#!/bin/bash
old_dir=`pwd`

cd `dirname $0`
git pull

cd $old_dir
