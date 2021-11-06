#!/bin/bash
echo "build all"

#english site
mustache -p mustache_templates/navPartial.mustache mustache_templates/view.json mustache_templates/index.mustache > index.html 
mustache -p mustache_templates/navPartial.mustache mustache_templates/view.json mustache_templates/action.mustache > action.html 
mustache -p mustache_templates/navPartial.mustache mustache_templates/view.json mustache_templates/events.mustache > events.html 
mustache -p mustache_templates/navPartial.mustache mustache_templates/view.json mustache_templates/resources.mustache > resources.html 
#chinese
cp script.js style.css ./zh/ 
mustache -p mustache_templates/navPartial.mustache mustache_templates/viewZh.json mustache_templates/index.mustache > zh/index.html
mustache -p mustache_templates/navPartial.mustache mustache_templates/viewZh.json mustache_templates/action.mustache > zh/action.html
mustache -p mustache_templates/navPartial.mustache mustache_templates/viewZh.json mustache_templates/events.mustache > zh/events.html
mustache -p mustache_templates/navPartial.mustache mustache_templates/viewZh.json mustache_templates/resources.mustache > zh/resources.html

# mustache -p navPartial.mustache projectsView.json projectsTemplate.mustache > ./../projects.html
# mustache -p navPartial.mustache projectsView.json index.mustache > ./../index.html
# mustache -p navPartial.mustache projectsView.json about.mustache > ./../about.html
# mustache -p navPartial.mustache projectsView.json contact.mustache > ./../contact.html