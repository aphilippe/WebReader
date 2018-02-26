import electron.main.App;
import electron.main.BrowserWindow;
import electron.renderer.Remote;

class Main {

	static function main() {

		electron.main.App.on( 'ready', function(e) {
			var win = new BrowserWindow( { width: 720, height: 480 } );
			win.on( closed, function() {
				if( js.Node.process.platform != 'darwin' )
					electron.main.App.quit();
			});
			// win.loadURL( 'file://' + js.Node.__dirname + '/app.html' );
			win.loadURL( 'file://' + js.Node.__dirname + '/index.html' );
			
		});
	}

}