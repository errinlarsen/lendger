Using, Staging, Tailoring the Template
======================================
by: Alistair Cockburn - [Basic use case template][1]
[1]: http://alistair.cockburn.us/Basic+use+case+template (Basic use case template)

My (and others') experience is that at early stages of the project the template
is too long and too complete to fill out all at one time - at the beginning of
the project, it is appropriate to work with less information (see the chapter,
"Managing Precision, Accuracy and Scale" in my book, Surviving Object-Oriented
Projects).  Therefore...


1\.
--------------------------------------------------------------------------------
Learn to fill in all the fields of the template in several passes, at
several moments in the project's requirements gathering and project setup
work.  Here is a sample sequence. First, fill in just these fields, for all
the use cases you need to consider at this time:

### **Use Case:**
_#[number] the name should be the goal as a short active verb phrase_

### **Goal in Context:**
_a longer statement of the goal, if needed_

### **Scope:**
_what system is being considered black-box under design_

### **Level: one of:**
_Summary, Primary task, Subfunction_

### **Primary Actor:**
_a role name for the primary actor, or description_

### **Priority:**
_how critical to your system / organization_

### **Frequency:**
_how often it is expected to happen_


2\.
--------------------------------------------------------------------------------
Stare at what you have so far.  Think.  Examine. Can you merge or remove some
of them? Can you partition them into ones that should be developed together, or
written later? For the ones you determine to pursue now, fill in the following
fields:

### **Trigger:**
_the action upon the system that starts the use case, may be time event_

### **MAIN SUCCESS SCENARIO**


3\.
--------------------------------------------------------------------------------
Now you have enough information to check your project's scope and look for
surprises.  **Before you are done describing the system's functioning**, you
have to fill out:

### **EXTENSIONS**

### **SUB-VARIATIONS**

### **Superordinate Use Case:**
_optional, name of use case that includes this one_

### **Subordinate Use Cases:**
_optional, depending on tools, links to sub.use cases_


4\.
--------------------------------------------------------------------------------
You now have the system's functionality captured.  When you are ready to work on
your estimations, fill in:

### **Performance Target:**
_the amount of time this use case should take_

### **OPEN ISSUES**

### **SCHEDULE**


5\.
--------------------------------------------------------------------------------
Finally, when you are in the final stages of project estimating, you need to
identify all the systems to which you will have to build interfaces.  Fill in:

### **Channel to primary actor:**
_e.g. interactive, static files, database_

### **Secondary Actors:**
_list of other systems needed to accomplish use case_

### **Channel to Secondary Actors:**
_e.g. interactive, static, file, database, timeout_
