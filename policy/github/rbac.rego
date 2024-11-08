package github.rbac

default allow_plan = false

# List of allowed GitHub users
allowed_users = {"Sid-Lais", "Cipher-08"}

allow_plan {
    input.github.actor == user
    allowed_users[user]
}
