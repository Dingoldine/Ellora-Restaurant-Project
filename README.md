# Ellora Project 

## Setup
To run this you need to:
1. git clone this project
2. install node, latest version should work (tested with 6.2.2)
3. run npm install
4. run npm start

## Structure
The code is split into 2 very distinct part: API:server (app) and front end (public).

#### API:server

**index.js:** This is the main file and is both the most and least important one. You probably won't need to touch it very much to complete the lab, but it is the core to understanding how everything works.

**model.js:** This is where the data-structures are defined and how the data is related.

**controller.js:** defines what is supposed to happen for all api requests that are sent through http. Most are simply for fetching data.

**socketController.js:** Defines what is supposed to happen for all "interactive" events where the client wants to reach other clients or when the server wants to contact a/all clients.

#### Client:
The client is written in angular and showcases the basic structure any angular project. Everything has been put in the same folder to lower the initial complexity.

**index.html:** This is similarly to the index.js in the back end the most important file, and also the one you will probably change the least. The important thing to notice here is that it contains the navbar (since it should always be there) and <div ng-view></div> which declares that this section should contain dynamically loaded html.

**app.js:** Defines how the modules are interconnected and currently also defines routing and what code to associate to what sub-page.

**controllers.js:** This is the meat of the logic for the client. Here all the functions, events, ajax-calls and what not are defined for the entire application. This should obviously be split up for a larger app, but is more than good enough for the labb.

**main.less:** CSS written in a language that is then compiled to CSS. This files hasn't gotten much love during the coding and might even contain dead code.

**\*.html:** These are the "views" of the client and contains information about what data should be mapped where and how to display it.

**services.js:** this is where a large part of the angular "magic" happens. Here we define globally accessible resources and define helper packages that is used throughout the application.
