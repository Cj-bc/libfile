#!/usr/bin/env bats
#
# Copyright 2018 (c) Cj-bc
# This software is released under MIT License
#

setup() {
  source "libfile.sh"
}

@test "File::ParseToArray" {
  declare -a array
  declare file="tests/src/text.txt"

  File::ParseToArray "$file" 'array'

  [ "${array[0]}" = "This is first line" ]
  [ "${array[1]}" = "2nd" ]
  [ "${array[2]}" = "third" ]
  [ "${array[3]}" = "" ]
  [ "${array[4]}" = "blank was there." ]
  [ "${array[5]}" = "         space at top" ]

}

teardown() {
  :
}

