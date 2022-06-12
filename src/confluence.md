# Confluence

You can integrate the web booking interface for your employees into [Atlassian Confluence](https://www.atlassian.com/software/confluence). This could be beneficially if you're already using Confluence in your organisation for collaboration. As organising common spaces for real-life collaboration is an essential part of this, Seatsurfing is also available as a Confluence App.

Using the Confluence App requires the Seatsurfing backend to be up and running. It's not a replacement for it, but an additional frontend.

## Confluence Cloud
[Atlassian Marketplace](https://marketplace.atlassian.com/manage/apps/1224242/)

Coming soon.

## Confluence Data Center
[Atlassian Marketplace](https://marketplace.atlassian.com/manage/apps/1224242/)

Note: 
In the default version of the plugin all logged in confluence-users are mapped to confluence-&lt;username&gt;@&lt;seatsurfing-defaultdomain&gt;. 

Using Seatsurfing 1.9.0 and above you can change the java-plugin-sources in `src/main/java/de/seatsurfing/confluence/SeatsurfingMacro.java` from 
`.withClaim("user", user.getName())` to `.withClaim("user", user.getEmail())` to use the complete email-address of the confluence user to login into seatsurfing. Using OpenID-Authentication your users can login via confluence or Azure-AD/Google/Keycloak without any manual usermapping.

## Confluence Server
Coming soon.