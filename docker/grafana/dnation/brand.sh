#!/bin/bash

# Modify favicon
sed -i 's/\[\[.AppTitle\]\]/dNation/g' /usr/share/grafana/public/views/index.html
sed -i 's/\[\[.FavIcon\]\]/https:\/\/storage.googleapis.com\/ifne.eu\/public\/icons\/dnation_k8sm8g.png/g' /usr/share/grafana/public/views/index.html
# Modify login screen and home button
sed -i 's/className:t,src:"public\/img\/grafana_icon.svg",alt:"Grafana"/className:t,src:"public\/img\/logo.svg",alt:"dNation"/g' /usr/share/grafana/public/build/app.*
sed -i 's/AppTitle="Grafana",u.LoginTitle="Welcome to Grafana"/AppTitle="dNation",u.LoginTitle="dNation Ping"/g' /usr/share/grafana/public/build/app.*
sed -i 's/e=\["Don\x27t get in the way of the data","Your single pane of glass","Built better together","Democratising data"\]/e=\[\]/g' /usr/share/grafana/public/build/app.*
# Modify home screen
sed -i 's/"Welcome to Grafana"/"Welcome to dNation Ping"/g' /usr/share/grafana/public/build/app.*
