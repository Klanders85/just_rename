<h1>just_Rename</h1>

<p>This is a templated project/file structure I made taking parts from various web technologies to help improve Developer Workflow (we know how important that is)</p>

<h3>This structure utilizes grunt for a lot, including</h3>
<ul>
	<li>Running Sass watch</li>
	<li>Compiling it to CSS</li>
	<li>If you have additional stylesheets (bootstrap, etc.) it will concatenate them to one CSS file</li>
	<li>Minifying that "built" CSS</li>
	<li>Fire up a localweb server located at http://localhost:9001 (you can specify the port if you like)</li>
</ul>


<h3>Easy Use</h3>
<ol>
	<li>Clone down the repo to where you want to keep it (think easy access)</li>
	<li>You will need to remove the <code>.git</code> files to prevent the files being tracked 
		(messy I know, thats being looked at). Just run <code>find . | grep .git | xargs rm -rf</code> in <code>terminal</code></li>
	<li>When you have a new project, just rename it to what you want</li>
	<li>In Terminal cd to the new project root and run <code>grunt</code></li>
</ol>

<h3>Things included</h3>
<ul>
	<li>Sass</li>
	<li>Grunt</li>
	<li>jQuery(minified)</li>
	<li>Local Web Server</li>
	<li>BootStrap</li>
	<li>Modernizr.js</li>
	<li>Normalize.css (remove if using Bootstrap</li>
</ul>


<h3>Additions, Comments and Updates</h3>
<p>Everything in here is supposed to make your life and terminal window less cluttered and minimalistic...it will constantly evolve or it will die...</p>