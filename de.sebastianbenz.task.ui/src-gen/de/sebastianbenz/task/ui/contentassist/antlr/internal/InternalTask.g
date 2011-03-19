/*
* generated by Xtext
*/
grammar InternalTask;

options {
	superClass=AbstractInternalContentAssistParser;
	
}

@lexer::header {
package de.sebastianbenz.task.ui.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package de.sebastianbenz.task.ui.contentassist.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.xtext.parsetree.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.DFA;
import de.sebastianbenz.task.services.TaskGrammarAccess;

}

@parser::members {
 
 	private TaskGrammarAccess grammarAccess;
 	
    public void setGrammarAccess(TaskGrammarAccess grammarAccess) {
    	this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected Grammar getGrammar() {
    	return grammarAccess.getGrammar();
    }
    
    @Override
    protected String getValueForTokenName(String tokenName) {
    	return tokenName;
    }

}




// Entry rule entryRuleTaskModel
entryRuleTaskModel 
:
{ before(grammarAccess.getTaskModelRule()); }
	 ruleTaskModel
{ after(grammarAccess.getTaskModelRule()); } 
	 EOF 
;

// Rule TaskModel
ruleTaskModel
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTaskModelAccess().getGroup()); }
(rule__TaskModel__Group__0)
{ after(grammarAccess.getTaskModelAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleContent
entryRuleContent 
:
{ before(grammarAccess.getContentRule()); }
	 ruleContent
{ after(grammarAccess.getContentRule()); } 
	 EOF 
;

// Rule Content
ruleContent
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getContentAccess().getAlternatives()); }
(rule__Content__Alternatives)
{ after(grammarAccess.getContentAccess().getAlternatives()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleTask
entryRuleTask 
:
{ before(grammarAccess.getTaskRule()); }
	 ruleTask
{ after(grammarAccess.getTaskRule()); } 
	 EOF 
;

// Rule Task
ruleTask
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getTaskAccess().getGroup()); }
(rule__Task__Group__0)
{ after(grammarAccess.getTaskAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleNote
entryRuleNote 
:
{ before(grammarAccess.getNoteRule()); }
	 ruleNote
{ after(grammarAccess.getNoteRule()); } 
	 EOF 
;

// Rule Note
ruleNote
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getNoteAccess().getGroup()); }
(rule__Note__Group__0)
{ after(grammarAccess.getNoteAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleProject
entryRuleProject 
:
{ before(grammarAccess.getProjectRule()); }
	 ruleProject
{ after(grammarAccess.getProjectRule()); } 
	 EOF 
;

// Rule Project
ruleProject
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getProjectAccess().getGroup()); }
(rule__Project__Group__0)
{ after(grammarAccess.getProjectAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}



// Entry rule entryRuleSpaces
entryRuleSpaces 
:
{ before(grammarAccess.getSpacesRule()); }
	 ruleSpaces
{ after(grammarAccess.getSpacesRule()); } 
	 EOF 
;

// Rule Spaces
ruleSpaces
    @init {
		int stackSize = keepStackSize();
    }
	:
(
{ before(grammarAccess.getSpacesAccess().getGroup()); }
(rule__Spaces__Group__0)
{ after(grammarAccess.getSpacesAccess().getGroup()); }
)

;
finally {
	restoreStackSize(stackSize);
}




rule__TaskModel__Alternatives_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskModelAccess().getContentsAssignment_1_0()); }
(rule__TaskModel__ContentsAssignment_1_0)
{ after(grammarAccess.getTaskModelAccess().getContentsAssignment_1_0()); }
)

    |(
{ before(grammarAccess.getTaskModelAccess().getSpacesParserRuleCall_1_1()); }
	ruleSpaces
{ after(grammarAccess.getTaskModelAccess().getSpacesParserRuleCall_1_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Content__Alternatives
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getContentAccess().getProjectParserRuleCall_0()); }
	ruleProject
{ after(grammarAccess.getContentAccess().getProjectParserRuleCall_0()); }
)

    |(
{ before(grammarAccess.getContentAccess().getTaskParserRuleCall_1()); }
	ruleTask
{ after(grammarAccess.getContentAccess().getTaskParserRuleCall_1()); }
)

    |(
{ before(grammarAccess.getContentAccess().getNoteParserRuleCall_2()); }
	ruleNote
{ after(grammarAccess.getContentAccess().getNoteParserRuleCall_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}



rule__TaskModel__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TaskModel__Group__0__Impl
	rule__TaskModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TaskModel__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskModelAccess().getTaskModelAction_0()); }
(

)
{ after(grammarAccess.getTaskModelAccess().getTaskModelAction_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TaskModel__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TaskModel__Group__1__Impl
	rule__TaskModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TaskModel__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskModelAccess().getAlternatives_1()); }
(rule__TaskModel__Alternatives_1)*
{ after(grammarAccess.getTaskModelAccess().getAlternatives_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__TaskModel__Group__2
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__TaskModel__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TaskModel__Group__2__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskModelAccess().getWSTerminalRuleCall_2()); }
(	RULE_WS)*
{ after(grammarAccess.getTaskModelAccess().getWSTerminalRuleCall_2()); }
)

;
finally {
	restoreStackSize(stackSize);
}








rule__Task__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Task__Group__0__Impl
	rule__Task__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Task__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskAccess().getIntendAssignment_0()); }
(rule__Task__IntendAssignment_0)*
{ after(grammarAccess.getTaskAccess().getIntendAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Task__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Task__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Task__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskAccess().getTextAssignment_1()); }
(rule__Task__TextAssignment_1)
{ after(grammarAccess.getTaskAccess().getTextAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Note__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Note__Group__0__Impl
	rule__Note__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Note__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNoteAccess().getIntendAssignment_0()); }
(rule__Note__IntendAssignment_0)*
{ after(grammarAccess.getNoteAccess().getIntendAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Note__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Note__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Note__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNoteAccess().getTextAssignment_1()); }
(rule__Note__TextAssignment_1)
{ after(grammarAccess.getNoteAccess().getTextAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Project__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Project__Group__0__Impl
	rule__Project__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Project__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getProjectAccess().getIntendAssignment_0()); }
(rule__Project__IntendAssignment_0)*
{ after(grammarAccess.getProjectAccess().getIntendAssignment_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Project__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Project__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Project__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getProjectAccess().getTextAssignment_1()); }
(rule__Project__TextAssignment_1)
{ after(grammarAccess.getProjectAccess().getTextAssignment_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}






rule__Spaces__Group__0
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Spaces__Group__0__Impl
	rule__Spaces__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Spaces__Group__0__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSpacesAccess().getWSTerminalRuleCall_0()); }
(	RULE_WS)*
{ after(grammarAccess.getSpacesAccess().getWSTerminalRuleCall_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


rule__Spaces__Group__1
    @init {
		int stackSize = keepStackSize();
    }
:
	rule__Spaces__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Spaces__Group__1__Impl
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getSpacesAccess().getNLTerminalRuleCall_1()); }
	RULE_NL
{ after(grammarAccess.getSpacesAccess().getNLTerminalRuleCall_1()); }
)

;
finally {
	restoreStackSize(stackSize);
}







rule__TaskModel__ContentsAssignment_1_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskModelAccess().getContentsContentParserRuleCall_1_0_0()); }
	ruleContent{ after(grammarAccess.getTaskModelAccess().getContentsContentParserRuleCall_1_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Task__IntendAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskAccess().getIntendWSTerminalRuleCall_0_0()); }
	RULE_WS{ after(grammarAccess.getTaskAccess().getIntendWSTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Task__TextAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getTaskAccess().getTextTASK_TEXTTerminalRuleCall_1_0()); }
	RULE_TASK_TEXT{ after(grammarAccess.getTaskAccess().getTextTASK_TEXTTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Note__IntendAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNoteAccess().getIntendWSTerminalRuleCall_0_0()); }
	RULE_WS{ after(grammarAccess.getNoteAccess().getIntendWSTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Note__TextAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getNoteAccess().getTextTEXTTerminalRuleCall_1_0()); }
	RULE_TEXT{ after(grammarAccess.getNoteAccess().getTextTEXTTerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Project__IntendAssignment_0
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getProjectAccess().getIntendWSTerminalRuleCall_0_0()); }
	RULE_WS{ after(grammarAccess.getProjectAccess().getIntendWSTerminalRuleCall_0_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}

rule__Project__TextAssignment_1
    @init {
		int stackSize = keepStackSize();
    }
:
(
{ before(grammarAccess.getProjectAccess().getTextPROJECT_TerminalRuleCall_1_0()); }
	RULE_PROJECT_{ after(grammarAccess.getProjectAccess().getTextPROJECT_TerminalRuleCall_1_0()); }
)

;
finally {
	restoreStackSize(stackSize);
}


RULE_WS : (' '|'\t');

RULE_NL : '\r'? '\n';

RULE_TASK_TEXT : RULE_HYPHEN ~(('\n'|'\r'))* RULE_NL;

RULE_TEXT : (~((RULE_HYPHEN|RULE_COLON|'\n'|'\r'|RULE_WS))|~((RULE_HYPHEN|'\n'|'\r'|RULE_WS)) ~(('\n'|'\r'))* ~((RULE_COLON|'\n'|'\r'))) RULE_NL;

RULE_PROJECT_ : ~(('\n'|'\r'|RULE_HYPHEN|RULE_WS)) ~(('\n'|'\r'))* RULE_COLON RULE_NL;

fragment RULE_COLON : ':';

fragment RULE_HYPHEN : '-';


