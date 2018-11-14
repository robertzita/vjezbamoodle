drop database if exists edunovapp18;
create database edunovapp18;
use edunovapp18;

create table mdl_quiz (
id 						int not null primary key auto_increment,
course 					varchar (200) not null,
name 					varchar (200) not null,
intro 					varchar (200) not null,
introformat 			varchar (200) not null,
timeopen 				datetime not null,
timeclose 				datetime not null,
optionflags 			varchar (200) not null,
penaltyscheme 			varchar (200) not null,
attempts 				int not null,
attemptonlast 			varchar (200) not null,
grademethod 			varchar (200) not null,
decimalpoints 			decimal (5,2) not null,
questiondecimalpoints 	varchar (200) not null,
review 					varchar (200) not null,
questionsperpage 		int not null,
shufflequestions 		varchar (200) not null,
shuffleanswers 			varchar (200) not null,
questions 				varchar (200) not null,
sumgrades 				decimal (3,2) not null,
grade 					varchar (200) not null,
timecreated 			datetime not null,
timemodified 			datetime not null,
timelimit 				varchar (200) not null,
password 				varchar (200) not null,
subnet 					varchar (200) not null,
popup 					varchar (200) not null,
delay1 					varchar (200) not null,
delay2 					varchar (200) not null,
showuserpicture 		varchar (200) not null
);

create table mdl_question (
id 						int not null primary key auto_increment,
category 				int not null,
parent 					int not null,
name 					varchar (200) not null,
questiontext 			varchar (200) not null,
questiontextformat 		varchar (200) not null,
image 					varchar (250) not null,
generalfeedback 		varchar (300) not null,
defaultgrade 			varchar (200) not null,
penalty 				varchar (200) not null,
qtype 					varchar (200) not null,
lenght 					varchar (200) not null,
stamp 					varchar (200) not null,
version 				varchar (200) not null,
hidden 					varchar (200) not null,
timecreated 			datetime not null,
timemodified 			datetime not null,
createdby 				varchar (200),
modifiedby 				varchar (200)
);

create table mdl_quiz_attempts (
id 						int not null primary key auto_increment,
uniqueid 				int not null,
quiz 					int not null,
userid 					int not null,
attempt 				varchar (10) not null,
sumgrades 				decimal (3,2) not null,
timestart 				datetime not null,
timefinish 				datetime not null,
timemodified 			datetime not null,
layout 					varchar (200) not null,
preview 				varchar (200) not null
);

create table mdl_question_sessions (
id 						int not null primary key auto_increment,
attempt 				int not null,
question 				int not null,
newest 					int not null,
newgraded 				int not null,
sumpenalty 				int not null,
manualcomment 			varchar (200) not null,
flagged 				varchar (30) not null
);

create table mdl_quiz_feedback (
id 						int not null primary key auto_increment,
quiz 					int not null,
feedbacktext 			varchar (200) not null,
mingrade 				varchar (10) not null,
maxgrade 				varchar (10) not null
);

create table mdl_quiz_question_instances (
id 						int not null primary key auto_increment,
quiz 					int not null,
question 				int not null,
grade 					varchar (50) not null
);

create table mdl_question_multichoice (
id 						int not null primary key auto_increment,
question 				int not null,
layout 					varchar (200) not null,
answers 				varchar (200) not null,
single 					varchar (200) not null,
shuffleanswers 			varchar (200) not null,
correctfeedback 		varchar (200) not null,
partiallycorrectfeedback varchar (200) not null,
incorrectfeedback 		varchar (200) not null,
answernumbering 		varchar (200) not null
);

create table mdl_quiz_grades (
id 						int not null primary key auto_increment,
quiz 					int not null,
userid 					varchar (200) not null,
grade 					varchar (200) not null,
timemodified 			datetime not null
);

create table mdl_question_attempts (
id 						int not null primary key auto_increment,
modulename 				varchar (200) not null
);

create table mdl_question_truefalse (
id 						int not null primary key auto_increment,
question 				int not null,
trueanswer 				boolean not null,
falseanswer 			boolean not null
);

create table mdl_question_numerical_units (
id 						int not null primary key auto_increment,
question 				int not null,
multiplier 				varchar (200) not null,
unit 					varchar (200) not null
);

create table mdl_question_match (
id 						int not null primary key auto_increment,
question 				int not null,
subquestions 			varchar (200) not null,
shuffleanswers 			varchar (200) not null
);

create table mdl_question_states (
id 						int not null primary key auto_increment,
attempt 				int not null,
question 				int not null,
seq_number 				int not null,
answer 					varchar (200) not null,
timestamps 				timestamp not null,
event 					varchar (200) not null,
grade 					varchar (50) not null,
raw_grade 				varchar (200) not null,
penalty 				varchar (200) not null
);

create table mdl_question_randomsmatch (
id 						int not null primary key auto_increment,
question 				int not null,
choose 					varchar (200) not null
);

create table mdl_question_calculated (
id 						int not null primary key auto_increment,
question 				int not null,
answer 					varchar (200) not null,
tolerance 				varchar (200) not null,
tolerancetype 			varchar (200) not null,
correctanswerlenght 	varchar (200) not null,
correctanswerformat 	varchar (200) not null
);

create table mdl_question_datasets (
id 						int not null primary key auto_increment,
question 				int not null,
datasetdefinition 		int not null
);

create table mdl_question_numerical (
id 						int not null primary key auto_increment,
question 				int not null,
answer 					varchar (200) not null,
tolerance 				varchar (200) not null
);

create table mdl_question_answers (
id 						int not null primary key auto_increment,
question 				int not null,
answer 					varchar (200) not null,
fraction 				varchar (200) not null,
feedback 				varchar (200) not null
);

create table mdl_question_match_sub (
id 						int not null primary key auto_increment,
code 					varchar (200) not null,
question 				int not null,
questiontext 			varchar (200) not null,
answertext 				varchar (200) not null
);

create table mdl_question_multianswer (
id 						int not null primary key auto_increment,
question 				int not null,
sequences 				varchar (200) not null 
);

create table mdl_question_dataset_definitions (
id 						int not null primary key auto_increment,
category 				int not null,
name 					varchar (200) not null,
types 					varchar (200) not null,
options 				varchar (200) not null,
itemcount 				varchar (200) not null
);

create table mdl_question_categories (
id 						int not null primary key auto_increment,
name 					varchar (200) not null,
contextid 				varchar (200) not null,
info 					varchar (200) not null,
stamp 					varchar (200) not null,
parent 					int not null,
sortorder 				varchar (200) not null
);

alter table mdl_question_categories add foreign key (parent) references mdl_question_categories (id);

alter table mdl_question_dataset_definitions add foreign key (category) references mdl_question_categories (id);

alter table mdl_question_multianswer add foreign key (question) references mdl_question (id);

alter table mdl_question_match_sub add foreign key (question) references mdl_question (id);

alter table mdl_question_answers add foreign key (question) references mdl_question (id);

alter table mdl_question_numerical add foreign key (question) references mdl_question (id);

alter table mdl_question_datasets add foreign key (question) references mdl_question (id);
alter table mdl_question_datasets add foreign key (datasetdefinition) references mdl_question_dataset_definitions (id);

alter table mdl_question_calculated add foreign key (question) references mdl_question (id);

alter table mdl_question_randomsmatch add foreign key (question) references mdl_question (id);

alter table mdl_question_states add foreign key (attempt) references mdl_question_attempts (id);
alter table mdl_question_states add foreign key (question) references mdl_question (id);

alter table mdl_question_match add foreign key (question) references mdl_question (id);

alter table mdl_question_numerical_units add foreign key (question) references mdl_question (id);

alter table mdl_question_truefalse add foreign key (question) references mdl_question (id);

alter table mdl_quiz_grades add foreign key (quiz) references mdl_quiz (id);

alter table mdl_question_multichoice add foreign key (question) references mdl_question (id);

alter table mdl_quiz_question_instances add foreign key (quiz) references mdl_quiz (id);
alter table mdl_quiz_question_instances add foreign key (question) references mdl_question (id);

alter table mdl_quiz_feedback add foreign key (quiz) references mdl_quiz (id);

alter table mdl_question_sessions add foreign key (attempt) references mdl_question_attempts (id);
alter table mdl_question_sessions add foreign key (question) references mdl_question (id);
alter table mdl_question_sessions add foreign key (newest) references mdl_question_states (id);
alter table mdl_question_sessions add foreign key (newgraded) references mdl_question_states (id);

alter table mdl_quiz_attempts add foreign key (uniqueid) references mdl_question_states (id);
alter table mdl_quiz_attempts add foreign key (quiz) references mdl_quiz (id);

alter table mdl_question add foreign key (category) references mdl_question_categories (id);
alter table mdl_question add foreign key (parent) references mdl_question (id);






