#
# Copyright 2020 The dNation Kubernetes Monitoring Stack Authors. All Rights Reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#!/bin/bash

# Modify favicon
sed -i 's/\[\[.AppTitle\]\]/dNation/g' /usr/share/grafana/public/views/index.html
sed -i 's/\[\[.FavIcon\]\]/https:\/\/cdn.ifne.eu\/public\/icons\/dnation_ping.svg/g' /usr/share/grafana/public/views/index.html
# Modify login screen and home button
sed -i 's/className:t,src:"public\/img\/grafana_icon.svg",alt:"Grafana"/className:t,src:"public\/img\/dnation_logo.svg",alt:"dNation"/g' /usr/share/grafana/public/build/app.*
sed -i 's/AppTitle="Grafana",u.LoginTitle="Welcome to Grafana"/AppTitle="dNation",u.LoginTitle="dNation Ping"/g' /usr/share/grafana/public/build/app.*
sed -i 's/e=\["Don\x27t get in the way of the data","Your single pane of glass","Built better together","Democratising data"\]/e=\[\]/g' /usr/share/grafana/public/build/app.*
# Modify home screen
sed -i 's/"Welcome to Grafana"/"Welcome to dNation Ping"/g' /usr/share/grafana/public/build/app.*
sed -i 's/Mc=\[{value:0,label:"Documentation",href:"https:\/\/grafana.com\/docs\/grafana\/latest"},{value:1,label:"Tutorials",href:"https:\/\/grafana.com\/tutorials"},{value:2,label:"Community",href:"https:\/\/community.grafana.com"},{value:3,label:"Public Slack",href:"http:\/\/slack.grafana.com"}\]/Mc=\[{value:0,label:"Documentation",href:"https:\/\/github.com\/dNationCloud\/kubernetes-monitoring"}\]/g' /usr/share/grafana/public/build/app.*

