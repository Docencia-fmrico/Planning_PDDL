(define (domain hotel-domain)
    (:requirements :durative-actions :fluents :typing)

    ;;TODO:
        ;; Tests
        ;; Los ascensores clonan robots?????

    (:types robot object location door elevator zone)
    (:predicates
        (robot_at_zone ?r - robot ?z - zone)
        (object_at_zone  ?o - object ?z - zone)
        (opened_door ?d - door)
        (door_joins ?d - door ?l1 - location ?l2 - location)
        (carry_object ?r - robot ?o - object)
        (elevator_joins ?e - elevator ?l1 - location ?l2 - location)
        (zone_in_location ?l -location ?z-zone)
        (zone_princ ?l -location ?z-zone)
    )

    (:durative-action take_elevator
        :parameters
            (
            ?r - robot
            ?fromloc - location
            ?toloc - location
            ?fromzone -zone
            ?tozone -zone
            ?e - elevator
            )
        :duration 
            (= ?duration 3)
        :condition 
            (and
                (at start(zone_in_location ?fromloc ?fromzone))
                (at start(zone_in_location ?toloc ?tozone))
                (at start (robot_at_zone ?r ?fromzone))
                (at start (elevator_joins ?e ?fromloc ?toloc))
                (at start(zone_princ ?fromloc ?fromzone))
                (at start(zone_princ ?toloc ?tozone))
            )
        :effect (and 
            (at start (not(robot_at_zone ?r ?fromzone)))
            (at end (robot_at_zone ?r ?tozone))
        )
    )


    (:durative-action open_door
        :parameters(
            ?r - robot
            ?fromloc - location
            ?toloc - location
            ?fromzone -zone
            ?d - door
        )
        :duration 
            (= ?duration 3)
        :condition 
            (and
                (at start (robot_at_zone ?r ?fromzone))
                (at start(zone_princ ?fromloc ?fromzone))
                (at start (door_joins ?d ?fromloc ?toloc))
            )
        :effect (and 
            (at end (opened_door ?d))
        )
    )
    
    (:durative-action move_zones
        :parameters
            (
            ?r - robot
            ?loc - location
            ?zone1 - zone
            ?zone2 - zone
            )
        :duration 
            (= ?duration 3)
        :condition 
            (and
                (at start (robot_at_zone ?r ?zone1))
                (at start (zone_in_location ?zone1 ?loc))
                (at start (zone_in_location ?zone2 ?loc))
            )
        :effect (and 
            (at start (not(robot_at_zone ?r ?zone1)))
            (at end (robot_at_zone ?r ?zone2))
        )
    )

    (:durative-action move_location
        :parameters
            (
            ?r - robot
            ?fromloc - location
            ?toloc - location
            ?fromzone -zone
            ?tozone -zone
            ?d - door
            )
        :duration 
            (= ?duration 3)
        :condition 
            (and
                (at start (robot_at_zone ?r ?fromzone))
                (at start(zone_princ ?fromloc ?fromzone))
                (at start(zone_princ ?toloc ?tozone))
                (at start (door_joins ?d ?fromloc ?toloc))
                (at start (opened_door ?d))
            )
        :effect (and 
            (at start (not(robot_at_zone ?r ?fromzone)))
            (at end (robot_at_zone ?r ?tozone))
        )
    )

    (:durative-action pick
        :parameters
            (
            ?r - robot
            ?z - zone
            ?o - object
            )
        :duration 
            (= ?duration 3)
        :condition 
            (and
                (at start (robot_at_zone ?r ?z))
                (at start (object_at_zone ?o ?z))
            )
        :effect (and 
            (at end (carry_object ?r ?o))
            (at start (not(object_at_zone ?o ?z)))

        )
    )

    (:durative-action drop
        :parameters
            (
            ?r - robot
            ?z - zone
            ?o - object
            )
        :duration 
            (= ?duration 3)
        :condition 
            (and
                (at start (carry_object ?r ?o))
                (at start (robot_at_zone ?r ?z))
            )
        :effect (and 
            (at start (not(carry_object ?r ?o)))
            (at end (object_at_zone ?o ?z))
        )
    )
)