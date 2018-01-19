package ;

import js.Browser;
import react.React;
import react.ReactComponent;
import react.ReactDOM;

class Main
{
	public static function main()
	{
		new Main();
	}

	public function new()
	{
		var element = Browser.document.createDivElement();
		Browser.document.body.appendChild(element);
		ReactDOM.render(React.createElement(App), element);
	}
}

class App extends ReactComponent
{
	override function render()
	{
		return React.createElement('div', {className:'foo'}, "Hello World");
	}
}
