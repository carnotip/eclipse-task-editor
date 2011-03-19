/*
* generated by Xtext
*/
grammar InternalTask;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package de.sebastianbenz.task.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package de.sebastianbenz.task.parser.antlr.internal; 

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import de.sebastianbenz.task.services.TaskGrammarAccess;

}

@parser::members {

 	private TaskGrammarAccess grammarAccess;
 	
    public InternalTaskParser(TokenStream input, TaskGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "TaskModel";	
   	}
   	
   	@Override
   	protected TaskGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleTaskModel
entryRuleTaskModel returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTaskModelRule()); }
	 iv_ruleTaskModel=ruleTaskModel 
	 { $current=$iv_ruleTaskModel.current; } 
	 EOF 
;

// Rule TaskModel
ruleTaskModel returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
    {
        $current = forceCreateModelElement(
            grammarAccess.getTaskModelAccess().getTaskModelAction_0(),
            $current);
    }
)((
(
		{ 
	        newCompositeNode(grammarAccess.getTaskModelAccess().getContentsContentParserRuleCall_1_0_0()); 
	    }
		lv_contents_1_0=ruleContent		{
	        if ($current==null) {
	            $current = createModelElementForParent(grammarAccess.getTaskModelRule());
	        }
       		add(
       			$current, 
       			"contents",
        		lv_contents_1_0, 
        		"Content");
	        afterParserOrEnumRuleCall();
	    }

)
)
    |
    { 
        newCompositeNode(grammarAccess.getTaskModelAccess().getSpacesParserRuleCall_1_1()); 
    }
ruleSpaces
    { 
        afterParserOrEnumRuleCall();
    }
)*(this_WS_3=RULE_WS
    { 
    newLeafNode(this_WS_3, grammarAccess.getTaskModelAccess().getWSTerminalRuleCall_2()); 
    }
)*)
;





// Entry rule entryRuleContent
entryRuleContent returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getContentRule()); }
	 iv_ruleContent=ruleContent 
	 { $current=$iv_ruleContent.current; } 
	 EOF 
;

// Rule Content
ruleContent returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
(
    { 
        newCompositeNode(grammarAccess.getContentAccess().getProjectParserRuleCall_0()); 
    }
    this_Project_0=ruleProject
    { 
        $current = $this_Project_0.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getContentAccess().getTaskParserRuleCall_1()); 
    }
    this_Task_1=ruleTask
    { 
        $current = $this_Task_1.current; 
        afterParserOrEnumRuleCall();
    }

    |
    { 
        newCompositeNode(grammarAccess.getContentAccess().getNoteParserRuleCall_2()); 
    }
    this_Note_2=ruleNote
    { 
        $current = $this_Note_2.current; 
        afterParserOrEnumRuleCall();
    }
)
;





// Entry rule entryRuleTask
entryRuleTask returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getTaskRule()); }
	 iv_ruleTask=ruleTask 
	 { $current=$iv_ruleTask.current; } 
	 EOF 
;

// Rule Task
ruleTask returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_intend_0_0=RULE_WS
		{
			newLeafNode(lv_intend_0_0, grammarAccess.getTaskAccess().getIntendWSTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTaskRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"intend",
        		lv_intend_0_0, 
        		"WS");
	    }

)
)*(
(
		lv_text_1_0=RULE_TASK_TEXT
		{
			newLeafNode(lv_text_1_0, grammarAccess.getTaskAccess().getTextTASK_TEXTTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getTaskRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"text",
        		lv_text_1_0, 
        		"TASK_TEXT");
	    }

)
))
;





// Entry rule entryRuleNote
entryRuleNote returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getNoteRule()); }
	 iv_ruleNote=ruleNote 
	 { $current=$iv_ruleNote.current; } 
	 EOF 
;

// Rule Note
ruleNote returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_intend_0_0=RULE_WS
		{
			newLeafNode(lv_intend_0_0, grammarAccess.getNoteAccess().getIntendWSTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getNoteRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"intend",
        		lv_intend_0_0, 
        		"WS");
	    }

)
)*(
(
		lv_text_1_0=RULE_TEXT
		{
			newLeafNode(lv_text_1_0, grammarAccess.getNoteAccess().getTextTEXTTerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getNoteRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"text",
        		lv_text_1_0, 
        		"TEXT");
	    }

)
))
;





// Entry rule entryRuleProject
entryRuleProject returns [EObject current=null] 
	:
	{ newCompositeNode(grammarAccess.getProjectRule()); }
	 iv_ruleProject=ruleProject 
	 { $current=$iv_ruleProject.current; } 
	 EOF 
;

// Rule Project
ruleProject returns [EObject current=null] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((
(
		lv_intend_0_0=RULE_WS
		{
			newLeafNode(lv_intend_0_0, grammarAccess.getProjectAccess().getIntendWSTerminalRuleCall_0_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getProjectRule());
	        }
       		addWithLastConsumed(
       			$current, 
       			"intend",
        		lv_intend_0_0, 
        		"WS");
	    }

)
)*(
(
		lv_text_1_0=RULE_PROJECT_
		{
			newLeafNode(lv_text_1_0, grammarAccess.getProjectAccess().getTextPROJECT_TerminalRuleCall_1_0()); 
		}
		{
	        if ($current==null) {
	            $current = createModelElement(grammarAccess.getProjectRule());
	        }
       		setWithLastConsumed(
       			$current, 
       			"text",
        		lv_text_1_0, 
        		"PROJECT_");
	    }

)
))
;





// Entry rule entryRuleSpaces
entryRuleSpaces returns [String current=null] 
	:
	{ newCompositeNode(grammarAccess.getSpacesRule()); } 
	 iv_ruleSpaces=ruleSpaces 
	 { $current=$iv_ruleSpaces.current.getText(); }  
	 EOF 
;

// Rule Spaces
ruleSpaces returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] 
    @init { enterRule(); 
    }
    @after { leaveRule(); }:
((    this_WS_0=RULE_WS    {
		$current.merge(this_WS_0);
    }

    { 
    newLeafNode(this_WS_0, grammarAccess.getSpacesAccess().getWSTerminalRuleCall_0()); 
    }
)*    this_NL_1=RULE_NL    {
		$current.merge(this_NL_1);
    }

    { 
    newLeafNode(this_NL_1, grammarAccess.getSpacesAccess().getNLTerminalRuleCall_1()); 
    }
)
    ;





RULE_WS : (' '|'\t');

RULE_NL : '\r'? '\n';

RULE_TASK_TEXT : RULE_HYPHEN ~(('\n'|'\r'))* RULE_NL;

RULE_TEXT : (~((RULE_HYPHEN|RULE_COLON|'\n'|'\r'|RULE_WS))|~((RULE_HYPHEN|'\n'|'\r'|RULE_WS)) ~(('\n'|'\r'))* ~((RULE_COLON|'\n'|'\r'))) RULE_NL;

RULE_PROJECT_ : ~(('\n'|'\r'|RULE_HYPHEN|RULE_WS)) ~(('\n'|'\r'))* RULE_COLON RULE_NL;

fragment RULE_COLON : ':';

fragment RULE_HYPHEN : '-';


