Using, Staging, Tailoring the Template
======================================

My (and others') experience is that at early stages of the project the template
is too long and too complete to fill out all at one time - at the beginning of
the project, it is appropriate to work with less information (see the chapter,
"Managing Precision, Accuracy and Scale" in my book, Surviving Object-Oriented
Projects).  Therefore...


## 1\.
Learn to fill in all the fields of the template in several passes, at
several moments in the project's requirements gathering and project setup
work.  Here is a sample sequence. First, fill in just these fields, for all
the use cases you need to consider at this time:

**Use Case:**        number the name should be the goal as a short active verb
phrase  
**Goal in Context:** a longer statement of the goal, if needed  
**Scope:**           what system is being considered black-box under design  
**Level: one of:**   Summary, Primary task, Subfunction  
**Primary Actor:**   a role name for the primary actor, or description  
**Priority:**        how critical to your system / organization  
**Frequency:**       how often it is expected to happen  

## 2\.
Stare at what you have so far.  Think.  Examine. Can you merge or remove some
of them? Can you partition them into ones that should be developed together, or
written later? For the ones you determine to pursue now, fill in the following
fields:

**Trigger:** the action upon the system that starts the use case, may be time
event  
**MAIN SUCCESS SCENARIO**  


## 3\.
Now you have enough information to check your project's scope and look for
surprises.  **Before you are done describing the system's functioning**, you
have to fill out:

**EXTENSIONS**  
**SUB-VARIATIONS**  
**Superordinate Use Case:** optional, name of use case that includes this one  
**Subordinate Use Cases:** optional, depending on tools, links to sub.use
cases  

## 4\.
You now have the system's functionality captured.  When you are ready to work on
your estimations, fill in:

**Performance Target:** the amount of time this use case should take  
**OPEN ISSUES**  
**SCHEDULE**  

## 5\.
Finally, when you are in the final stages of project estimating, you need to
identify all the systems to which you will have to build interfaces.  Fill in:

**Channel to primary actor:** e.g. interactive, static files, database  
**Secondary Actors:** list of other systems needed to accomplish use case  
**Channel to Secondary Actors:** e.g. interactive, static, file, database,
timeout  
