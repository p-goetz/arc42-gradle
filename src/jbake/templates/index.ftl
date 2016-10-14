<!DOCTYPE html>
<html lang="en">
<#include "head.ftl">
<body>
<#include "navbar.ftl">

<div class="container">
    <h1>Dokumentation von Software Architekturen mit arc42</h1>

    <p>Dieses Maven Projekt bildet das arc42 Template zur Dokumentation von Software Architekturen ab. Die Dokumentation
        wird dabei in <a class="externalLink" href="http://markdown.de/">Markdown</a> erstellt, graphische Modelle (z.B.
        in UML) können mit <a class="externalLink" href="http://plantuml.sourceforge.net/">PlantUML</a> notiert werden
        und werden beim Build von Gradle als Grafiken gerendert und der Dokumenation hinzugefügt.</p>

    <p>Es gibt für jedes Kapitel aus dem arc42 Template eine Markdown Datei im Verzeichnis
        <code>src/arc42-markdown/</code>. Diese werden wie gewünscht mit der Dokumentation befüllt. Graphische Modelle
        können im Verzeichnis <code>src/arc42-markdown/uml</code> in PlantUML Syntax erstellt werden. Diese werden beim
        Aufruf
        von <code>gradle</code> automatisch als PNG Grafiken gerendert. Über die normale Markdown Syntax können diese
        Bilder in die Dokumentation eingebunden werden. So kann ein Modell in der Datei <code>src/arc42-markdown/uml/domain-classes.puml</code>
        in der Dokumentation über den folgenden Verweis eingebunden werden: <code>uml/domain-classes.png</code> s.
        Beispiel unten.</p>

    <p><img src="uml/domain-classes.png" alt="Beispiel UML-Modell"></p>

    <p>Über den Aufruf von <code>gradle</code> wird die Dokumentation erzeugt und unter <code>build/jbake</code>
        abgelegt. Für die Transformation der Markdown-Dateien wird <a class="externalLink" href="http://www.jbake.org/">JBake</a>
        verwendet. </p>

    <p>Dieses Maven Projekt kann als Template frei und ohne Einschränkungen verwendet und verändert werden und ist als
        <a href="lizenz.html">Beerware</a> lizenziert</p>

    <div class="row">
        <p><a href="01_Einfuehrung-und-Ziele.html" class="pull-right">&gt;&gt; 1. Einführung und Ziele</a></p>
    </div>

    <div class="row">
        <p><i>Peter Götz</i> (<a class="externalLink" href="mailto:peter.goetz@pgoetz.de">peter.goetz@pgoetz.de</a>)</p>
    </div>

<#include "footer.ftl">
</body>
</html>
