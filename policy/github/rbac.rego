package github.rbac

default allow_plan = false

# List of allowed GitHub users
allowed_users = {"Sid-Lais"}

# Allow plan if the GitHub actor matches an allowed user
allow_plan {
    input.github.actor == user
    allowed_users[user]
}
