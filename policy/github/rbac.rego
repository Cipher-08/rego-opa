package github.rbac

default allow_plan = false

# List of allowed GitHub users and team slugs (could be loaded from external data)
allowed_users = {"Sid-Lais", "Cipher-08"}
allowed_teams = {"team-slug1", "team-slug2"}

# Allow plan if the GitHub actor matches an allowed user or is part of an allowed team
allow_plan {
    input.github.actor == user
    user_allowed(user)
}

user_allowed(user) {
    allowed_users[user]
}

# Use input data to check if the actor is part of an allowed team (requires prior data retrieval)
user_allowed(user) {
    input.github.teams[_] == team
    allowed_teams[team]
}
