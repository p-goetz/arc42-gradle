# arc42-gradle

Gradle project template for architecture documentation based on the arc42 template (s. http://www.arc42.de/)

## Purpose

This Gradle project template contains pre-filled markdown files to document software architecture based on the arc42 template. The markdown files can then be transformed to a HTML site with JBake (http://jbake.org/) to be published. 

For simple UML diagrams you can use PlantUML (http://plantuml.sourceforge.net/) files which will be rendered as images during the build process. To do this you need to have installed `graphvizdot`. If the `dot` executable is not in your path, please explicitly link it in the `build.gradle` (see comment in task `generatePlantumlImages`). 

## Usage

The markdown input files can be found under `src/arc42-markdown`. The template file `src/jbake/templates/index.ftl` used to render the start page of the documentation contains detailed information on the template. Images can be linked using the standard markdown syntax and should be stored under `src/arc42-markdown/uml` (see example image at `Einfuehrung-und-Ziele.md`). 

The site will be built by executing the command `gradle` and is stored in the `build/jbake` directory. 
