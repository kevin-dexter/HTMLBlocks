namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Button
//
// The <canvas> tag is used to draw graphics, on the fly, via scripting (usually JavaScript).  The
// <canvas> tag is only a container for graphics, you must use a script to actually draw the graphics.
//
// ex.  <canvas id="myCanvas"></canvas>
//
//      <script>
//          var canvas = document.getElementById("myCanvas");
//          var ctx = canvas.getContext("2d");
//          ctx.fillStyle = "#FF0000";
//          ctx.fillRect(0, 0, 80, 80);
//      </script> 
//
// The <button> tag also supports the Global Attributes in HTML.
// The <button> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Canvas extends Component{
    
    private height;
    private width;


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->height);
        unset(this->width);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Height
    //
    // The height attribute specifies the height of the <canvas> element, in pixels.
    // Default height is "150"
    //
    // Syntax:  <canvas id="myCanvas" width="200" height="200" style="border:1px solid"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHeight(){ return this->height; }
    public function setHeight(string height){ let this->height = height; }
    private function generateHeight(){ return (this->height!="") ? " height='".this->height."'" : ""; }

    ////////////////////////////////////////////
    // Height
    //
    // The width attribute specifies the height of the <canvas> element, in pixels.
    // Default width is "300"
    //
    // Syntax:  <canvas id="myCanvas" width="200" height="200" style="border:1px solid"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getWidth(){ return this->width; }
    public function setWidth(string width){ let this->width = width; }
    private function generateWidth(){ return (this->width!="") ? " width='".this->width."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <canvas></canvas>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateHeight().this->generateWidth();
        return "<canvas ".attributes.parent::generateAttributes().">".parent::generateComponents()."</canvas>";
    }
}
