(ns people-database.person-spec
  (:require [speclj.core :refer :all]
            [people-database.person :refer :all]))

(describe "construct-person"
  (it "should give me back their info"
    (let [person
      (construct-person "Jose" "Tellez" "mexicorules@gmail.com" "VA")]
      (should= "Jose" (person :first-name))
      (should= "Tellez" (person :last-name))
      (should= "mexicorules@gmail.com" (person :email))
      (should= "VA" (person :state)
      ))))


(run-specs)
