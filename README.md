# A Docker Image for Gatsby
Defines a <a href='https://www.docker.com/' rel='tag'>Docker</a> image useful for developing static sites using <a href='https://www.gatsbyjs.org/' rel='tag'>Gatsby</a>.

<a href='https://opensource.org/licenses/MIT' rel='tag'>MIT</a> licensed.

Early beta ― useful but limited function and features. 

See the <a href='https://github.com/itstechupnorth/docker-for-gatsby/wiki/Home'>Wiki</a> for more including
* Recipes for
  * <a href='https://github.com/itstechupnorth/docker-for-gatsby/wiki/DailyDevelopment'>Daily development</a>

# Use Cases

## Primary

> As a Static Site Developer,
> I want to isolate Gatsby within a Docker Container 

## Features

### <a href='https://github.com/itstechupnorth/docker-for-gatsby/issues/7'>GH-7</a> Install Dependencies for Sharp Plugin

> As a developer of static sites
> I want to use the sharp plugin

Install dependencies including build tool chain and image libraries.

### <a href='https://github.com/itstechupnorth/docker-for-gatsby/issues/5'>GH-5</a> Install Python

> As a User
> I want to build static sites using Gatsby image plugins
> which rely on Python

Installed Yarn as Alpine package. 

### <a href='https://github.com/itstechupnorth/docker-for-gatsby/issues/1'>GH-1</a> Install Yarn

> As a static site developer,
> In order to install Gatsby plugins,
> I want to be able to use Yarn

Installed Yarn as Alpine package.

# Notes

As a Docker container, the various dependency versions are fixed at image creation. 
