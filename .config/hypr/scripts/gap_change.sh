#!/usr/bin/env bash

gaps_in=$(hyprctl -j getoption general:gaps_in | jq '.int')
gaps_out=$(hyprctl -j getoption general:gaps_out | jq '.int')

function inc_gaps_in () {
  hyprctl keyword general:gaps_in $((gaps_in+5))
}

function dec_gaps_in () {
  hyprctl keyword general:gaps_in $((gaps_in-5))
}

function inc_gaps_out () {
  hyprctl keyword general:gaps_out $((gaps_out+5))
}

function dec_gaps_out () {
  hyprctl keyword general:gaps_out $((gaps_out-5))
}

while [[ $# -gt 0 ]]; do
  case $1 in
    --inc_gaps_in)   inc_gaps_in;   shift ;;
    --dec_gaps_in)   dec_gaps_in;   shift ;;
    --inc_gaps_out)  inc_gaps_out;  shift ;;
    --dec_gaps_out)  dec_gaps_out;  shift ;;
    *)               printf "Error: Unknown option %s" "$1"; exit 1 ;;
  esac
done
#  The script takes each of the following arguments

#--inc_gaps_in
#--dec_gaps_in
#--inc_gaps_out
#--dec_gaps_out

#$SCRIPTS = ~/.config/hypr/scripts
binde=ALT SHIFT , bracketleft  , exec , sh $SCRIPTS/gaps.sh --inc_gaps_in
binde=ALT SHIFT , bracketright , exec , sh $SCRIPTS/gaps.sh --dec_gaps_in
binde=ALT SHIFT , equal        , exec , sh $SCRIPTS/gaps.sh --inc_gaps_out
binde=ALT SHIFT , minus        , exec , sh $SCRIPTS/gaps.sh --dec_gaps_out
