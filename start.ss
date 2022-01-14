#!/usr/bin/env gxi

(import :vyzo/simsub/scripts)                                                                  

(def (main . args)
    (simple-gossipsub-simulation 
      trace: void 
      nodes: 1000 
      messages: 100 
      message-delay: .1 
      fanout: 1 ))
