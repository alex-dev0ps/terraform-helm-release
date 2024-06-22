module app {
    source = "alex-dev0ps/release/helm"
    namespace = "default"
    name = "wordpress"
    wait = false
    chart = "../applcation"
    values = []
}