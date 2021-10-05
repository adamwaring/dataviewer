argonSidebar <- argonDash::argonDashSidebar(
  vertical = TRUE,
  skin = "light",
  background = "white",
  size = "md",
  side = "left",
  id = "my_sidebar",
  brand_url = "http://www.google.com",
  brand_logo = "https://demos.creative-tim.com/argon-design-system/assets/img/brand/blue.png",
  # dropdownMenus = argonDropNav(
  #   title = "Dropdown Menu",
  #   src = "https://demos.creative-tim.com/argon-dashboard/assets/img/theme/team-4-800x800.jpg",
  #   orientation = "right",
  #   argonDropNavTitle(title = "Welcome!"),
  #   argonDropNavItem(
  #     title = "Item 1",
  #     src = "https://www.google.com",
  #     icon = argonIcon("single-02")
  #   ),
  #   argonDropNavItem(
  #     title = "Item 2",
  #     src = NULL,
  #     icon = argonIcon("settings-gear-65")
  #   ),
  #   argonDropNavDivider(),
  #   argonDropNavItem(
  #     title = "Item 3",
  #     src = "#",
  #     icon = argonIcon("calendar-grid-58")
  #   )
  # ),
  argonDash::argonSidebarHeader(title = "Main Menu"),
  argonDash::argonSidebarMenu(
    argonDash::argonSidebarItem(
      tabName = "datasets",
      icon = argonR::argonIcon(name = "tv-2", color = "info"),
      "Datasets"
    )
    # argonSidebarItem(
    #   tabName = "tables",
    #   icon = argonIcon(name = "tv-1", color = "green"),
    #   "Tables"
    # ),
    # argonSidebarItem(
    #   tabName = "tabs",
    #   icon = argonIcon(name = "planet", color = "warning"),
    #   "Tabs"
    # )
  )
  # argonSidebarDivider(),
  # argonSidebarHeader(title = "Other Items")
)
