/*
* generated by Xtext
*/

package de.sebastianbenz.task.services;

import com.google.inject.Singleton;
import com.google.inject.Inject;

import org.eclipse.xtext.*;
import org.eclipse.xtext.service.GrammarProvider;
import org.eclipse.xtext.service.AbstractElementFinder.*;


@Singleton
public class TaskGrammarAccess extends AbstractGrammarElementFinder {
	
	
	public class TaskModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "TaskModel");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cTaskModelAction_0 = (Action)cGroup.eContents().get(0);
		private final Assignment cContentsAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cContentsContentParserRuleCall_1_0 = (RuleCall)cContentsAssignment_1.eContents().get(0);
		private final RuleCall cWSTerminalRuleCall_2 = (RuleCall)cGroup.eContents().get(2);
		
		//TaskModel:
		//	{TaskModel} contents+=Content* WS*;
		public ParserRule getRule() { return rule; }

		//{TaskModel} contents+=Content* WS*
		public Group getGroup() { return cGroup; }

		//{TaskModel}
		public Action getTaskModelAction_0() { return cTaskModelAction_0; }

		//contents+=Content*
		public Assignment getContentsAssignment_1() { return cContentsAssignment_1; }

		//Content
		public RuleCall getContentsContentParserRuleCall_1_0() { return cContentsContentParserRuleCall_1_0; }

		//WS*
		public RuleCall getWSTerminalRuleCall_2() { return cWSTerminalRuleCall_2; }
	}

	public class ContentElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Content");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cProjectParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cTaskParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cNoteParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		private final RuleCall cEmptyLineParserRuleCall_3 = (RuleCall)cAlternatives.eContents().get(3);
		
		/// *
		//
		//Project
		//
		//WS TASK
		//
		//WS PROJECT
		//
		//WS WS TASK
		//
		//WS WS PROJECT 
		//
		// * / Content:
		//	Project | Task | Note | EmptyLine;
		public ParserRule getRule() { return rule; }

		//Project | Task | Note | EmptyLine
		public Alternatives getAlternatives() { return cAlternatives; }

		//Project
		public RuleCall getProjectParserRuleCall_0() { return cProjectParserRuleCall_0; }

		//Task
		public RuleCall getTaskParserRuleCall_1() { return cTaskParserRuleCall_1; }

		//Note
		public RuleCall getNoteParserRuleCall_2() { return cNoteParserRuleCall_2; }

		//EmptyLine
		public RuleCall getEmptyLineParserRuleCall_3() { return cEmptyLineParserRuleCall_3; }
	}

	public class TaskElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Task");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cIntendAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cIntendWSTerminalRuleCall_0_0 = (RuleCall)cIntendAssignment_0.eContents().get(0);
		private final Assignment cTextAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTextTASK_TEXTTerminalRuleCall_1_0 = (RuleCall)cTextAssignment_1.eContents().get(0);
		
		//Task:
		//	intend+=WS* text=TASK_TEXT;
		public ParserRule getRule() { return rule; }

		//intend+=WS* text=TASK_TEXT
		public Group getGroup() { return cGroup; }

		//intend+=WS*
		public Assignment getIntendAssignment_0() { return cIntendAssignment_0; }

		//WS
		public RuleCall getIntendWSTerminalRuleCall_0_0() { return cIntendWSTerminalRuleCall_0_0; }

		//text=TASK_TEXT
		public Assignment getTextAssignment_1() { return cTextAssignment_1; }

		//TASK_TEXT
		public RuleCall getTextTASK_TEXTTerminalRuleCall_1_0() { return cTextTASK_TEXTTerminalRuleCall_1_0; }
	}

	public class NoteElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Note");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cIntendAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cIntendWSTerminalRuleCall_0_0 = (RuleCall)cIntendAssignment_0.eContents().get(0);
		private final Assignment cTextAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTextTEXTTerminalRuleCall_1_0 = (RuleCall)cTextAssignment_1.eContents().get(0);
		
		//Note:
		//	intend+=WS* text=TEXT;
		public ParserRule getRule() { return rule; }

		//intend+=WS* text=TEXT
		public Group getGroup() { return cGroup; }

		//intend+=WS*
		public Assignment getIntendAssignment_0() { return cIntendAssignment_0; }

		//WS
		public RuleCall getIntendWSTerminalRuleCall_0_0() { return cIntendWSTerminalRuleCall_0_0; }

		//text=TEXT
		public Assignment getTextAssignment_1() { return cTextAssignment_1; }

		//TEXT
		public RuleCall getTextTEXTTerminalRuleCall_1_0() { return cTextTEXTTerminalRuleCall_1_0; }
	}

	public class ProjectElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Project");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cIntendAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cIntendWSTerminalRuleCall_0_0 = (RuleCall)cIntendAssignment_0.eContents().get(0);
		private final Assignment cTextAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTextPROJECT_TerminalRuleCall_1_0 = (RuleCall)cTextAssignment_1.eContents().get(0);
		
		//Project:
		//	intend+=WS* text=PROJECT_;
		public ParserRule getRule() { return rule; }

		//intend+=WS* text=PROJECT_
		public Group getGroup() { return cGroup; }

		//intend+=WS*
		public Assignment getIntendAssignment_0() { return cIntendAssignment_0; }

		//WS
		public RuleCall getIntendWSTerminalRuleCall_0_0() { return cIntendWSTerminalRuleCall_0_0; }

		//text=PROJECT_
		public Assignment getTextAssignment_1() { return cTextAssignment_1; }

		//PROJECT_
		public RuleCall getTextPROJECT_TerminalRuleCall_1_0() { return cTextPROJECT_TerminalRuleCall_1_0; }
	}

	public class EmptyLineElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "EmptyLine");
		private final Assignment cTextAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cTextSpacesParserRuleCall_0 = (RuleCall)cTextAssignment.eContents().get(0);
		
		//EmptyLine:
		//	text=Spaces;
		public ParserRule getRule() { return rule; }

		//text=Spaces
		public Assignment getTextAssignment() { return cTextAssignment; }

		//Spaces
		public RuleCall getTextSpacesParserRuleCall_0() { return cTextSpacesParserRuleCall_0; }
	}

	public class SpacesElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "Spaces");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cWSTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final RuleCall cNLTerminalRuleCall_1 = (RuleCall)cGroup.eContents().get(1);
		
		//Spaces returns ecore::EString:
		//	WS* NL;
		public ParserRule getRule() { return rule; }

		//WS* NL
		public Group getGroup() { return cGroup; }

		//WS*
		public RuleCall getWSTerminalRuleCall_0() { return cWSTerminalRuleCall_0; }

		//NL
		public RuleCall getNLTerminalRuleCall_1() { return cNLTerminalRuleCall_1; }
	}
	
	
	private TaskModelElements pTaskModel;
	private ContentElements pContent;
	private TaskElements pTask;
	private NoteElements pNote;
	private ProjectElements pProject;
	private EmptyLineElements pEmptyLine;
	private SpacesElements pSpaces;
	private TerminalRule tWS;
	private TerminalRule tNL;
	private TerminalRule tTASK_TEXT;
	private TerminalRule tTEXT;
	private TerminalRule tPROJECT_;
	private TerminalRule tCOLON;
	private TerminalRule tHYPHEN;
	
	private final GrammarProvider grammarProvider;

	@Inject
	public TaskGrammarAccess(GrammarProvider grammarProvider) {
		this.grammarProvider = grammarProvider;
	}
	
	public Grammar getGrammar() {	
		return grammarProvider.getGrammar(this);
	}
	

	
	//TaskModel:
	//	{TaskModel} contents+=Content* WS*;
	public TaskModelElements getTaskModelAccess() {
		return (pTaskModel != null) ? pTaskModel : (pTaskModel = new TaskModelElements());
	}
	
	public ParserRule getTaskModelRule() {
		return getTaskModelAccess().getRule();
	}

	/// *
	//
	//Project
	//
	//WS TASK
	//
	//WS PROJECT
	//
	//WS WS TASK
	//
	//WS WS PROJECT 
	//
	// * / Content:
	//	Project | Task | Note | EmptyLine;
	public ContentElements getContentAccess() {
		return (pContent != null) ? pContent : (pContent = new ContentElements());
	}
	
	public ParserRule getContentRule() {
		return getContentAccess().getRule();
	}

	//Task:
	//	intend+=WS* text=TASK_TEXT;
	public TaskElements getTaskAccess() {
		return (pTask != null) ? pTask : (pTask = new TaskElements());
	}
	
	public ParserRule getTaskRule() {
		return getTaskAccess().getRule();
	}

	//Note:
	//	intend+=WS* text=TEXT;
	public NoteElements getNoteAccess() {
		return (pNote != null) ? pNote : (pNote = new NoteElements());
	}
	
	public ParserRule getNoteRule() {
		return getNoteAccess().getRule();
	}

	//Project:
	//	intend+=WS* text=PROJECT_;
	public ProjectElements getProjectAccess() {
		return (pProject != null) ? pProject : (pProject = new ProjectElements());
	}
	
	public ParserRule getProjectRule() {
		return getProjectAccess().getRule();
	}

	//EmptyLine:
	//	text=Spaces;
	public EmptyLineElements getEmptyLineAccess() {
		return (pEmptyLine != null) ? pEmptyLine : (pEmptyLine = new EmptyLineElements());
	}
	
	public ParserRule getEmptyLineRule() {
		return getEmptyLineAccess().getRule();
	}

	//Spaces returns ecore::EString:
	//	WS* NL;
	public SpacesElements getSpacesAccess() {
		return (pSpaces != null) ? pSpaces : (pSpaces = new SpacesElements());
	}
	
	public ParserRule getSpacesRule() {
		return getSpacesAccess().getRule();
	}

	//terminal WS:
	//	" " | "\t";
	public TerminalRule getWSRule() {
		return (tWS != null) ? tWS : (tWS = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "WS"));
	} 

	//terminal NL:
	//	"\r"? "\n";
	public TerminalRule getNLRule() {
		return (tNL != null) ? tNL : (tNL = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "NL"));
	} 

	//terminal TASK_TEXT:
	//	HYPHEN !("\n" | "\r")* NL;
	public TerminalRule getTASK_TEXTRule() {
		return (tTASK_TEXT != null) ? tTASK_TEXT : (tTASK_TEXT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "TASK_TEXT"));
	} 

	//terminal TEXT:
	//	(!(HYPHEN | COLON | "\n" | "\r" | WS) | !(HYPHEN | "\n" | "\r" | WS) !("\n" | "\r")* !(COLON | "\n" | "\r")) NL;
	public TerminalRule getTEXTRule() {
		return (tTEXT != null) ? tTEXT : (tTEXT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "TEXT"));
	} 

	//terminal PROJECT_:
	//	!("\n" | "\r" | HYPHEN | WS) !("\n" | "\r")* COLON NL;
	public TerminalRule getPROJECT_Rule() {
		return (tPROJECT_ != null) ? tPROJECT_ : (tPROJECT_ = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "PROJECT_"));
	} 

	//terminal fragment COLON:
	//	":";
	public TerminalRule getCOLONRule() {
		return (tCOLON != null) ? tCOLON : (tCOLON = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "COLON"));
	} 

	//terminal fragment HYPHEN:
	//	"-";
	public TerminalRule getHYPHENRule() {
		return (tHYPHEN != null) ? tHYPHEN : (tHYPHEN = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "HYPHEN"));
	} 
}
