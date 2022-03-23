(define (domain hotel-domain)
    (:requirements :durative-actions :fluents :typing)

    ;;TODO:
        ;; Abrir puertas
        ;; Implementar ascensor (similar a puerta)
        ;; Objeto
        ;; Putear un poco el sistema

    (:types robot object location door elevator)
    (:predicates
        (robot_at ?r - robot ?l - location)
        (object_at ?o - object ?l - location)
        (closed_door ?d - door)
        (opened_door ?d - door)
        (door_joins ?d - door ?l1 - location ?l2 - location)
        (pick ?o - object ?l - location)
        (elevator_joins ?e - elevator ?l1 - location ?l2 - location)
        ;;(can_move ?from - location ?to - location)
    )

    (:durative-action move
        :parameters
            (?r - robot
            ?fromloc - location
            ?toloc - location
            ?d - door)
        :duration 
            (= ?duration 3)
        :condition 
            (and
                (at start (robot_at ?r ?fromloc))
                (at start (door_joins ?d ?fromloc ?toloc))
                (at start (opened_door ?d))
            )
        :effect (and 
            (at end (not(robot_at ?r ?fromloc)))
            (at end (robot_at ?r ?toloc))
        )
    )
)