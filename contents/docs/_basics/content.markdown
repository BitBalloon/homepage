## The Basics

BitBalloon is essentially an tool that deploys front end assets onto a really high performance hosting setup. A BitBalloon deployment is a "site aware" process that optimizes asset performance and activates the web forms.

There are two ways to deploy a site:

 1. Drag it onto a drop-zone
 2. Make a call to the API


When a site is first deployed, a public URL is generated for it. Here's the url of our demo site:<br/> http://cowboy-system-73843.bitballoon.com


### The Dashboard

Every site has its own dashboard which can be accessed from a url similar to:
https://www.bitballoon.com/sites/cowboy-system-73843

It provides tools for managing various aspects of your site, such as:

* site name
* domain
* privacy
* form submissions
* deploys
* code snippets



### Form Handling

During a deployment, BitBalloon finds any forms in your HTML which don't already have an action attribute and automatically hooks them up to their own database.

The site dashboard has a "Forms" tab where you can view submissions to your forms, setup email notifications & export data.

BitBalloon forms can act as a trigger service in <a href="/docs/zapier">Zapier</a> which provides point and click tools to connect those form submissions with other cloud services!

As with every other BitBalloons feature, form data and events are accessible from the <a href="https://github.com/BitBalloon/bitballoon-api">API</a>.

For best results, set name attributes on the form and it's inputs, like so:

```markup
<form name="signup">
  First Name: <input type="text" name="first_name">
  Email: <input type="email" name="email">
  <input type="submit">
</form>
```



### Snippets

Code snippets can be injected into the footer of every page of a site. The snippets can be premade templates for popular 3rd party scripts like Google Analytics or your own custom code.


### Versions

Every time a site is updated in any way, a new version is created. Deployment history is accessible from the site dashboard and you can restore any version to represent your live site at any time.