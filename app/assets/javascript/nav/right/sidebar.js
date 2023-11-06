export class Sidebar {

	static close() {
		let nav = document.getElementById('right-sidebar')
		nav.classList.add('hidden')
	}

	static open() {
		let nav = document.getElementById('right-sidebar')
		nav.classList.remove('hidden')
	}
}

window.RailsComponents = {
	Nav: {
		Right: {
			Sidebar: Sidebar
		}
	}
}
