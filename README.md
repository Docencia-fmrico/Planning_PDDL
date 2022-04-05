# Planning_PDDL
Hotel Planning PDDL

## Types
-robot 
-object 
-location 
-door 
-elevator 
-zone

## Predicates 

-(robot_at_zone ?r - robot ?z - zone)       
-(object_at_zone  ?o - object ?z - zone)
-(opened_door ?d - door)
-(door_joins ?d - door ?l1 - location ?l2 - location)
-(carry_object ?r - robot ?o - object)
-(elevator_joins ?e - elevator ?l1 - location ?l2 - location)
-(zone_in_location ?l -location ?z-zone)
-(zone_princ ?l -location ?z-zone)

## Actions
-take_elevator
-open_door
-move_zones
-move_location
-pick
-drop

