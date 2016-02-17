(ns people-database.people-database-spec
  (:require [speclj.core :refer :all]
            [people-database.people-database :refer :all])
  (:require [speclj.core :refer :all]
            [people-database.person :refer :all]))

(describe "add-to-db"
  (it "should add a person"
    (let [person
      (construct-person "Jose" "Tellez" "mexicorules@gmail.com" "VA")]
      (let [db
      (add person)]
      (should= person (get db 0))
      ))))


(run-specs)
