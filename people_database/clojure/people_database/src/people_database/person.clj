(ns people-database.person)

(defn construct-person [ first-name last-name email state ]
  { :first-name first-name :last-name last-name :email email :state state })
