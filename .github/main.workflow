workflow "Test workflow" {
  on = "push"
  resolves = ["Check master"]
}

action "Check master" {
  uses = "actions/bin/filter@master"
  runs = "branch master"
}
