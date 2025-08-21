/** Run this Anonymous Apex via the SFDX CLI or from the Developer Console */
List<ConnectedApplication> connectedApps = new List<ConnectedApplication>();
List<OAuthToken> oauthTokens = new List<OAuthToken>();
Set<String> authorizedApps = new Set<String>();
Set<String> installedApps = new Set<String>();
for(ConnectedApplication app : [SELECT Name FROM ConnectedApplication]) {
    connectedApps.add(app);
}
for(OAuthToken token : [SELECT AppName FROM OauthToken]) {
    oauthTokens.add(token);
}
for (OAuthToken token : oauthTokens) {
	// Any app w a token has been 'authorized' in the org
    authorizedApps.add(token.AppName);
}
for (ConnectedApplication ca : connectedApps) {
    installedApps.add(ca.Name);
}

System.debug('There is/are ' + authorizedApps.size() + ' \'authorized\' connected application(s) in this org: ');
for (String s : authorizedApps) {
    System.debug('\t ' + s);
}
System.debug('There is/are ' + installedApps.size() + ' \'installed\' connected application(s) in this org: ');
for (String s : installedApps) {
    System.debug('\t ' + s);
}