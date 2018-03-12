//
//  StateMachine.swift
//  TurboZakatApp
//
//  Created by Muhammad Ali Lakhani on 2018-02-26.
//  Copyright © 2018 Hamza Lakhani. All rights reserved.
//

import UIKit

public class SimpleStateMachine<State, Event> where State: Hashable, Event: Hashable {
    private(set) var currentState: State
    private var states: [State : [Event : State]] = [:]

    // MARK: - Init
    public init(initialState: State) {
        currentState = initialState
    }
    
    /**
     This simply uses the subscripting syntax to utilize shorthand notation to assign transitions to a given state.
     
     - parameter state: the state we want to get/set
     
     - returns: the associated transitions (event -> state) for the state parameter
     */
    public subscript(state: State) -> [Event : State]? {
        get {
            return states[state]
        }
        set(transitions) {
            states[state] = transitions
        }
    }
    
    
    /**
     This determines if the given event can trigger a transition to a new state for currentState.
     Note that it does not actually perform the transition and save it to currentState
     
     - parameter event: the Event to trigger a transition
     
     - returns: the State we can transition to for the given Event
     */
    public subscript(event: Event) -> State? {
        if let transitions = states[currentState] {
            if let nextState = transitions[event] {
                return nextState
            }
        }
        return nil
    }
    
    /**
     This attempts to transition from the currentState to the next state
     
     - parameter event: the Event used to look up the destination State for currentState
     
     - returns: the new state saved to currentState, if the lookup was successful
     */
    public func transition(event: Event) -> State? {
        if let nextState = self[event] {
            currentState = nextState
            return nextState
        }
        return nil
    }
}

