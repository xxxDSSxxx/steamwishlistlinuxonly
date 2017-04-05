#!/bin/sh
curl "http://steamcommunity.com/market/search?appid=753" | grep g_rgFilterData | tr "{" "\n" | grep app | cut -d '"' -f 10 | grep app | cut -d "_" -f 2 | tr "\n" "," >cards.txt
