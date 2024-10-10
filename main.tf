module "name" {
    source = "./dashboards"
    dashboard_pages = var.dashboard_pages
    id = var.id
    api = var.api
    
}