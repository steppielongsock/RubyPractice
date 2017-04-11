require "pry"

@answer_array = {
    :rock => {:rock=> "tie", :paper=> "lose", :scissors=> "win", :lizard=> "win", :spock=> "lose"},
    :paper => {:rock=> "win", :paper=> "tie", :scissors=> "lose", :lizard=> "lose", :spock=> "win"},
    :scissors => {:rock=> "lose", :paper=> "win", :scissors=> "tie", :lizard=> "win", :spock=> "lose"},
    :lizard => {:rock=> "lose", :paper=> "win", :scissors=> "lose", :lizard=> "tie", :spock=> "win"},
    :spock => {:rock=> "win", :paper=> "lose", :scissors=> "win", :lizard=> "lose", :spock=> "tie"}
    }

def winner user, comp
  ans = @answer_array[user]
  ans[comp]
end

p winner "spock".to_sym, "paper".to_sym