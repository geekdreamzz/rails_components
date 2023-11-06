export class WithHeroFlyout {

	static toggle() {
		let nav = document.getElementById('nav_top_with_hero_flyout')
		nav.classList.toggle('visible')
	}
}

window.RailsComponents = {
	Nav: {
		Top: {
			WithHeroFlyout: WithHeroFlyout
		}
	}
}
