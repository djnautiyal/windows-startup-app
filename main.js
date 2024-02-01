const { app, BrowserWindow, ipcMain } = require('electron/main');
const { shell } = require('electron');

let mainWindow;

const createWindow = () => {
	const mainWindow = new BrowserWindow({
		width: 800,
		height: 600,
		webPreferences: {
			nodeIntegration: true,
			enableRemoteModule: true,
			contextIsolation: false,
			sandbox: false
		}
	})

	mainWindow.loadFile('index.html')
	mainWindow.on('closed', function () {
		app.quit();
	  });
}

app.whenReady().then(() => {
	createWindow()
	shell.beep()
	app.on('activate', () => {
		if (BrowserWindow.getAllWindows().length === 0) createWindow()
	})

})

app.on('window-all-closed', () => {
	if (process.platform !== 'darwin') {
		app.quit()
	}
})