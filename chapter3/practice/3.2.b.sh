#!/bin/bash

echo シェルゲイおじさん | nkf --hiragana

echo シェルゲイおじさん | nkf --katakana

echo シェルゲイおじさん | nkf --katakana | nkf -Z4

echo シェルゲイおじさん | nkf --katakana | nkf -Z4 | sed s/゙//g | nkf --hiragana

echo シェルゲイオジサン216号 | nkf -Z
