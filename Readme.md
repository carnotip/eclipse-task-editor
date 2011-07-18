#An easy to use textual task editor for Eclipse



![Screenshot](http://sebastianbenz.github.com/eclipse-task-editor/images/Screenshot.png)

#Installation

The editor can be installed via the following update site:

http://sebastianbenz.github.com/eclipse-task-editor/updates

The editor is also available as a standalone Eclipse RCP application. The application runs on windows, linux and mac. You can build the application via:

	git clone git://github.com/sebastianbenz/eclipse-task-editor.git
	git checkout v1.0.0
	cd eclipse-task-editor
	mvn clean install

The zipped applications can be found in de.sebastianbenz.task.rcp/target/products/task-editor-*.zip

#Usage

The eclipse task editor can be used to create and manage textual todo files. The syntax is based on "TaskPaper":http://www.hogbaysoftware.com/products/taskpaper, an excellent to-do list manager  for Mac OS X.

#Task Editor

A todo file consists of four elements: Tasks, Notes, Projects, and Tags. 

* *Tasks:* Something that needs to be done. A task is preceeded by '-'.
* *Notes:* Arbitrary text.
* *Projects:* Projects can be used to structure tasks. Projects are followed by ':' and a linebreak.
* *Tags:* can be used to categorize tasks. Tags start with '@'. 

#License

Copyright (C) 2010 Sebastian Benz. Distributed under the Eclipse Public License.