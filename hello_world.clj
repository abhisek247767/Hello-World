; Hello World program in Clojure
; This is a comment

(ns hello-world) ;creates a namespace (like a package in Java)

; creating -main function
(defn -main
  "A simple Hello World function"
  []
  (println "Hello, World!"))

; Execute the main function
(-main)
