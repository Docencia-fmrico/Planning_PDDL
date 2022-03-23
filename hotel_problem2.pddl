(define 
    (problem hotel0)
    (:domain hotel-domain)

(:objects
    robot - robot
    object1 - object

    Room1 Room2 Room3 Room4 Room5 Room6 Room7 Room8 Room9 - location
    Corridor1 Corridor2 - location
    Zone1 Zone2 Zone3 Zone4 Zone5 - zone
    mainR1 mainR2 mainR3 mainR4 mainR5 mainR6 mainR7 mainR8 mainR9 mainC1 mainC2 -zone

    door1 door2 door3 door4 door5 door6 door7 - door
    open_door1 open_door2 - door
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

    (zone_in_location Room1 Zone1)
    (zone_in_location Room1 Zone2)
    (zone_in_location Room2 Zone3)
    (zone_in_location Room2 Zone4)
    (zone_in_location Room2 Zone5)

    (zone_in_location Room1 mainR1)
    (zone_in_location Room2 mainR2)
    (zone_in_location Room3 mainR3)
    (zone_in_location Room4 mainR4)
    (zone_in_location Room5 mainR5)
    (zone_in_location Room6 mainR6)
    (zone_in_location Room7 mainR7)
    (zone_in_location Room8 mainR8)
    (zone_in_location Room9 mainR9)
    (zone_in_location Corridor1 mainC1)
    (zone_in_location Corridor1 mainC2)

    (zone_princ Room1 mainR1)
    (zone_princ Room2 mainR2)
    (zone_princ Room3 mainR3)
    (zone_princ Room4 mainR4)
    (zone_princ Room5 mainR5)
    (zone_princ Room6 mainR6)
    (zone_princ Room7 mainR7)
    (zone_princ Room8 mainR8)
    (zone_princ Room9 mainR9)
    (zone_princ Corridor1 mainC1)
    (zone_princ Corridor2 mainC2)


    ;---open doors
    (opened_door door1)
    (opened_door door2)
    (opened_door door3)
    (opened_door door4)
    (opened_door door5)
    (opened_door door6)
    (opened_door door7)

    (elevator_joins elevator1 Corridor1 Corridor2)
    (elevator_joins elevator1 Corridor2 Corridor1)

    (robot_at_zone robot mainR7)
    (object_at_zone object1 Zone2)
)
    (:goal 
        (and
            (object_at_zone object1 mainR8)
            (robot_at_zone robot Zone1)
        )
    )
)
