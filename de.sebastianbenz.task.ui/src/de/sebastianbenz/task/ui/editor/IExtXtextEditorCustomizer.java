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
package de.sebastianbenz.task.ui.editor;

import org.eclipse.jface.action.IMenuManager;

import com.google.inject.ImplementedBy;

/**
 * 
 *
 */
@ImplementedBy(DefaultExtXtextEditorCustomizer.class)
public interface IExtXtextEditorCustomizer {
	public void customizeEditorContextMenu(IMenuManager menuManager);
}
