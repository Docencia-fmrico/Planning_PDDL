(define 
    (problem hotel0)
    (:domain hotel-domain)
    (:requirements :negative-preconditions)

(:objects
    robot - robot
    object1 - object

    Room1 Room2 Room3 Room4 Room5 Room6 Room7 Room8 Room9 - location
    Corridor1 Corridor2 - location
    Zone1 Zone2 Zone3 Zone4 Zone5 - location

    door1 door2 door3 door4 door5 door6 door7 - door
    open_door1 open_door2 - door
    zone_door1 zone_door2 zone_door3 zone_door4 zone_door5 - door
    elevator1 - elevator
)

(:init
    (door_joins door1 Corridor1 Room1)
    (door_joins door1 Room1 Corridor1)
    (door_joins door2 Room3 Room1)
    (door_joins door2 Room1 Room3)
    (door_joins door3 Corridor2 Room6)
    (door_joins door3 Room6 Corridor2)
    (door_joins door4 Corridor2 Room5)
    (door_joins door4 Room5 Corridor2)
    (door_joins door5 Corridor2 Room7)
    (door_joins door5 Room7 Corridor2)
    (door_joins door6 Corridor2 Room9)
    (door_joins door6 Room9 Corridor2)
    (door_joins door7 Corridor2 Room8)
    (door_joins door7 Room8 Corridor2)

    (door_joins open_door1 Room2 Room4)
    (door_joins open_door1 Room4 Room2)
    (door_joins open_door2 Corridor1 Room2)
    (door_joins open_door2 Room2 Corridor1)
    (opened_door open_door1)
    (opened_door open_door2)
    
    (door_joins zone_door1 Room1 Zone1)
    (door_joins zone_door1 Zone1 Room1)
    (door_joins zone_door2 Room1 Zone2)
    (door_joins zone_door2 Zone2 Room1)
    (door_joins zone_door3 Room2 Zone3)
    (door_joins zone_door3 Zone3 Room2)
    (door_joins zone_door4 Room2 Zone4)
    (door_joins zone_door4 Zone4 Room2)
    (door_joins zone_door5 Room2 Zone5)
    (door_joins zone_door5 Zone5 Room2)
    (opened_door zone_door1)
    (opened_door zone_door2)
    (opened_door zone_door3)
    (opened_door zone_door4)
    (opened_door zone_door5)

    ;---open doors
    ;(opened_door door1)
    ;(opened_door door2)
    ;(opened_door door3)
    ;(opened_door door4)
    ;(opened_door door5)
    ;(opened_door door6)
    ;(opened_door door7)

    (elevator_joins elevator1 Corridor1 Corridor2)
    (elevator_joins elevator1 Corridor2 Corridor1)

    (robot_at robot Room7)
    (object_at object1 zone2)
)
    (:goal 
        (and
            (object_at object1 Room8)
            (robot_at robot Room1)
        )
    )
)
