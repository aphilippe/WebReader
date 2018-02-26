import js.Browser.console;
import js.Browser.document;
import js.Browser.window;
import js.Node.process;
import js.node.ChildProcess.spawn;

class App {

    static function main() {

        window.onload = function() {

            document.getElementById( 'webview' ).addEventListener('did-navigate', function(e) {
                js.Browser.console.log(e.url);
            });
        }
    }

}