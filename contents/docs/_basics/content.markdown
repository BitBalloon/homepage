## The Basics


BitBalloon is first and foremost an API for deploying static sites onto the programmable web. There's two ways to deploy: dragging a site onto the dropzone or by making an API call.

Either way, the deployment is an automated process where BitBalloon analyzes your site, optimizes the assets and deploys it onto highly scalable, programmable hosting.

When you first deploy a site, a URL gets generated for it, similar in format to:<br/> http://cowboy-system-73843.bitballoon.com

<div class="panel">
This overview covers the features of BitBalloon which are exposed in the UI. Read up on the <a href="/docs/api#sites">API</a> to learn about additional capabilities of the platform.
</div>

### Site Management

Each site has a set of admin tools for managing the:

* site name
* domain
* privacy
* form submissions
* deploys
* code snippets

The admin tools can be accessed from a private dashboard at a url similar to:
https://www.bitballoon.com/sites/cowboy-sysxtem-73843

### Form Handling

During a deployment, BitBalloon finds any forms in your HTML which don't already have an action attribute and automatically makes them work.

You can use the site's dashboard to export form data and setup email notifications. Form events and data can also be accessed via the <a href="/docs/api#forms">API</a>. BitBalloon's integration with API marketplaces like <a href="/docs/zapier">Zapier</a> makes it simple to hook form submissions into hundreds of useful 3rd party services without having to do any programming!

For best results, set name attributes on the form and it's inputs, like so:

```html
<form name="signup">
  First Name: <input type="text" name="first_name">
  Email: <input type="email" name="email">
  <input type="submit">
</form>
```



### Snippets

Code snippets can be injected into the footer of every page of a site. The snippets can be premade templates for popular 3rd party scripts like Google Analytics or your own custom code.


### Versions

Every time a site is updated in any way, a new version is created. Deployment history is accessible from the site dashboard and you can restore any version to represtent your live site at any time.