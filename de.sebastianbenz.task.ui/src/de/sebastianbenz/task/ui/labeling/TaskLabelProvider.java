/*******************************************************************************
 * Copyright (c) 2011 Sebastian Benz.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 * 
 * Contributors:
 *     Sebastian Benz - initial API and implementation
 ******************************************************************************/
/*
 * generated by Xtext
 */
package de.sebastianbenz.task.ui.labeling;

import org.eclipse.jface.viewers.StyledString;
import org.eclipse.jface.viewers.StyledString.Styler;
import org.eclipse.xtext.ui.label.DeclarativeLabelProvider;
import org.eclipse.xtext.ui.label.InjectableAdapterFactoryLabelProvider;
import org.eclipse.xtext.ui.label.StylerFactory;

import com.google.inject.Inject;

import de.sebastianbenz.task.Content;
import de.sebastianbenz.task.Task;
import de.sebastianbenz.task.ui.highlighting.HighlightingConfiguration;

/**
 * Provides labels for a EObjects.
 * 
 * see
 * http://www.eclipse.org/Xtext/documentation/latest/xtext.html#labelProvider
 */
public class TaskLabelProvider extends DeclarativeLabelProvider {

	private final StylerFactory stylerFactory;
	private final HighlightingConfiguration configuration;
	private final InjectableAdapterFactoryLabelProvider delegate;

	@Inject
	public TaskLabelProvider(InjectableAdapterFactoryLabelProvider delegate, StylerFactory stylerFactory, HighlightingConfiguration configuration) {
		super(delegate);
		this.delegate = delegate;
		this.stylerFactory = stylerFactory;
		this.configuration = configuration;
	}

	public Object text(Task task){
		String text = delegate.getText(task);
		if(task.isDone()){
			Styler style = stylerFactory.createXtextStyleAdapterStyler(configuration.taskDoneTextStyle());
			return new StyledString(text, style);
		}else{
			return text;
		}
	}
	
	
	public StyledString getStyledText(Object element) {
		if (element instanceof Content && ((Content)element).isDone()) {
			Styler style = stylerFactory.createXtextStyleAdapterStyler(configuration.taskDoneTextStyle());
			return new StyledString(getText(element), style );
		}else{
			return new StyledString(getText(element));
		}
	}
	
}
