Sample Use Case Template
========================


Use Case: #[number] [name: the goal as a short active verb phrase]
------------------------------------------------------------------------------

### CHARACTERISTIC INFORMATION
**Goal in Context:**       [a longer statement of the goal, if needed]  
**Scope:**                 [what system is being considered black-box under design]  
**Level:**                 [one of: Summary, Primary task, Subfunction]  
**Preconditions:**         [what we expect is already the state of the world]  
**Success End Condition:** [the state of the world upon successful completion]  
**Failed End Condition:**  [the state of the world if goal abandoned]  
**Primary Actor:**         [a role name for the primary actor, or description]  
**Trigger:**               [the action on the system that starts the use case, may be time event]  


### MAIN SUCCESS SCENARIO
_put here the steps of the scenario from trigger to goal delivery,
and any cleanup after_

[step #] [action description]  
[step #] [action description]  


### EXTENSIONS
_put here their extensions, one at a time, each
refering to the step of the main scenario_

[step altered] [condition] : [action or sub.use case]  
[step altered] [condition] : [action or sub.use case]  


### SUB-VARIATIONS
_put here the sub-variations that will cause
eventual bifurcation in the scenario_

[step or variation #] [list of sub-variations]  
[step or variation #] [list of sub-variations]  


### RELATED INFORMATION (optional)
**Priority:**                    [how critical to your system / organization]  
**Performance Target:**          [the amount of time this use case should take]  
**Frequency:**                   [how often it is expected to happen]  
**Superordinate Use Case:**      [optional, name of use case that includes this one]  
**Subordinate Use Cases:**       [optional, depending on tools, links to sub.use cases]  
**Channel to primary actor:**    [e.g. interactive, static files, database]  
**Secondary Actors:**            [list of other systems needed to accomplish use case]  
**Channel to Secondary Actors:** [e.g. interactive, static, file, database, timeout]  


### OPEN ISSUES (optional)
_list of issues about this use cases awaiting decisions_


### SCHEDULE
**Due Date:** [date or release of deployment]  
_...any other schedule / staffing information you need..._  
