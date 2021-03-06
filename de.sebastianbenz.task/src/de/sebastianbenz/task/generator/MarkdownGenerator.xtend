package de.sebastianbenz.task.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IGenerator
import org.eclipse.xtext.generator.IFileSystemAccess
import static com.google.common.collect.Iterables.*
import de.sebastianbenz.task.TaskModel
import de.sebastianbenz.task.Content
import de.sebastianbenz.task.Task
import de.sebastianbenz.task.Code
import de.sebastianbenz.task.Note
import de.sebastianbenz.task.Project
import de.sebastianbenz.task.EmptyLine
import org.eclipse.xtext.xtend2.lib.StringConcatenation

class MarkdownGenerator implements de.sebastianbenz.task.generator.TaskGenerator {
	   
	override StringConcatenation generate(TaskModel taskModel){
		'''
		�FOR content : taskModel.contents�
		�generate(content)�
		�ENDFOR�
		'''
	} 
	
	def dispatch generate(Note note){
		'''
		�note.value�
		'''
	}
	
	def dispatch generate(Task task){
		'''
		* �task.text.substring(1)�
		'''
	} 
	
	def dispatch generate(Code code){
		var lines = code.value.split("\n");
		'''�FOR line : lines��'    ' + line��ENDFOR�
		'''
	}
	
	def dispatch generate(Project project){
		var i = 0;
		var result = new StringConcatenation()
		while(i <= project.level){
			result.append('#')
			i = i + 1
		}
		result.append(' ' + project.value)
		return result		
	}
	
	def dispatch generate(EmptyLine emptyLine){
		'''
		
		'''
	}
}
 