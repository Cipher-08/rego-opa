package github.rbac

default allow_plan = false

# List of allowed GitHub users
allowed_users = {"Sid-Lais"}

allow_plan {
    input.github.actor == user
    allowed_users[user]
}
