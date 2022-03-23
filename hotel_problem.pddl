(define 
    (problem hotel0)
    (:domain hotel-domain)
    (:objects 
        robot - robot
        room1 room2 - location
        door1 - door
    )
    (:init 
        (robot_at robot room1)
        (door_joins door1 room1 room2)
        (opened_door door1)        
        
    )
    (:goal (and
        (robot_at robot room2)
        )
    )
)
