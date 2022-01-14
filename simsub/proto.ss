;; © vyzo
;; pubsub protocols

(import :std/actor)
(export #t)

(defproto pubsub
  event:
  (connect)
  (publish hop id msg))

(defproto gossipsub
  extend: pubsub
  event:
  (ihave ids)
  (iwant ids)
  (graft)
  (prune))
