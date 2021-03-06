ActionController::Routing::Routes.draw do |map|
  map.auto_completes 'auto_completes/:resource', :controller => 'auto_completes', :resource => /\w+/, :grammatical_number => 'plural'

  map.rank 'rank/:id', :controller => 'ranks', :id => /\d+/, :grammatical_number => 'singular'
  map.ranks 'ranks', :controller => 'ranks', :grammatical_number => 'plural'
  map.collection_of_ranks 'ranks/:ids', :controller => 'ranks', :ids => /(\d,)+/, :grammatical_number => 'plural'

  map.idea 'idea/:id', :controller => 'ideas', :id => /\d+/, :grammatical_number => 'singular'
  map.ideas 'ideas', :controller => 'ideas', :grammatical_number => 'plural'
  map.collection_of_ideas 'ideas/:ids', :controller => 'ideas', :ids => /(\d,)+/, :grammatical_number => 'plural'

  map.user 'user/:id', :controller => 'users', :id => /\d+/, :grammatical_number => 'singular'
  map.users 'users', :controller => 'users', :grammatical_number => 'plural'
  map.collection_of_users 'users/:ids', :controller => 'users', :ids => /(\d,)+/, :grammatical_number => 'plural'

  map.idea_ranking 'idea_ranking/:id', :controller => 'idea_rankings', :id => /\d+/, :grammatical_number => 'singular'

  map.comment 'comment/:id', :controller => 'comments', :id => /\d+/, :grammatical_number => 'singular'

  map.root :controller => 'ideas', :grammatical_number => 'plural'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
