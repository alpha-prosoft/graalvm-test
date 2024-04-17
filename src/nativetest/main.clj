(ns nativetest.main
  (:gen-class)
  (:require [clojure.data :as data]
            [clojure.java.io :as io]))


(defn diff []
  (println
    (data/diff {:a #uuid "a485727e-ec3a-4eb3-8df3-ed2af33fff13"
                :d :e
                :f :g}
               {:d :e})))

(defn file-load-from-classpath
  []
  (with-open [in (io/input-stream (io/resource "conf/res/sample1.txt"))]
    (if (not (= (slurp in)
                "1"))
      (throw (ex-info "conf/res/sample1.txt failed" {:in in}))
      (println "conf/res/sample1.txt success")))

  (with-open [in (io/input-stream (io/resource "conf/sample2.txt"))]
    (if (not (= (slurp in)
                "2"))
      (throw (ex-info "conf/sample2.txt failed" {:in in}))
      (println "conf/sample2.txt success"))))

(defn -main [& args]
  (diff)
  (println "Checking schema")
  (file-load-from-classpath))
