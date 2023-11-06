import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"
// Import and register within the main application importmap.rb under tailwind_components/*
import { WithHeroFlyout } from "rails_components/nav/top/with_hero_flyout"

eagerLoadControllersFrom("rails_components", WithHeroFlyout)
