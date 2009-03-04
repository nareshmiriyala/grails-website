<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <g:javascript library="diff_match_patch"/>
    <g:javascript library="scriptaculous"/>
    <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'content.css')}"/>
    <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'plugins.css')}"/>
    <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'ratings.css')}"/>
    <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'pluginHome.css')}"/>
    <link rel="stylesheet" href="${createLinkTo(dir: 'css', file: 'tagCloud.css')}"/>
    <title>Grails Plugins</title>
    <meta content="subpage" name="layout"/>
    <g:render template="../content/wikiJavaScript"/>
</head>
<body>
<div id="contentPane">

    <ul id="infoLinks">
        <li class='list'>
            <g:link controller="plugin" action="list">All Plugins</g:link>
        </li>
        <li class="create">
            <g:link controller="plugin" action="createPlugin">Create Plugin Page</g:link>
        </li>
    </ul>

    <h1>Grails Plugins</h1>

    <g:render template="searchBar"/>

    <richui:tagCloud
            values="${tagCounts}"
            minSize='8'
            maxSize='48'
            class='pluginTagCloud'
            linkClass='tagLink'
            controller='tag'
            action='show'/>

    <table id="statsTable">
        <tbody>
        <tr>
            <td class='section'>
                <g:render template='popularPlugins' var='plugins' bean="${popularPlugins}"/>
            </td>
            <td class='section'>
                <g:render template='newest' var='plugins' bean="${newestPlugins}"/>
            </td>
            <td class='section'>
                <g:render template='recentlyUpdated' var='plugins' bean="${recentlyUpdatedPlugins}"/>
            </td>
        </tr>
        </tbody>
    </table>

    <div id="pluginHomeWiki">
        <g:render template="../content/viewActions" model="${[content: homeWiki, update: 'pluginHomeWiki']}"/>
        <div class='wikiPage'><wiki:text>${homeWiki}</wiki:text></div>
    </div>
    <g:render template="../content/previewPane"/>

</div>
</body>
</html>