# Planning_PDDL
Hotel Planning PDDL


# Planning_PDDL
Hotel Planning PDDL

## Types
-robot

-object 

-location 

-door 

-elevator 

## Predicates 

-(robot_at ?r - robot ?l - location)

-(object_at ?o - object ?l - location)

-(opened_door ?d - door)

-(door_joins ?d - door ?l1 - location ?l2 - location)

-(carry_object ?r - robot ?o - object)

-(elevator_joins ?e - elevator ?l1 - location ?l2 - location)


## Actions
-take_elevator

-open_door

-move

-pick

-drop
