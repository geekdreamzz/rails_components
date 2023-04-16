export class Sidebar {

	static close() {
		let nav = document.getElementById('right-sidebar')
		nav.classList.add('hidden')
	}
}

window.RailsComponents = {
	Nav: {
		Right: {
			Sidebar: Sidebar
		}
	}
}
