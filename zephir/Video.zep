namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Video
//
// The <video> tag specifies video, such as a movie clip or other video streams.  Currently, there
// are 3 supported video formats for the <video> element: MP4, WebM, and Ogg.
//
// ex. <video width="320" height="240" controls>
//         <source src="movie.mp4" type="video/mp4">
//         <source src="movie.ogg" type="video/ogg">
//         Your browser does not support the video tag.
//     </video> 
//
// The <video> tag also supports the Global Attributes in HTML.
// The <video> tag also supports the Event Attributes in HTML.
//
// STATUS : Incomplete.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Video extends Component{
/*
    private autoplay;
    private controls;
    private height;
    private loop;
    private muted;
    private poster;
    private preload;
    private src;
    private width;

    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        call_user_func(["parent", "__destruct()"]);
        unset(autoplay);
        unset(controls);
        unset(height);
        unset(loop);
        unset(muted);
        unset(poster);
        unset(preload);
        unset(src);
        unset(width);
    }

    ////////////////////////////////////////////
    // Autoplay
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAutoplay(){ return this->autoplay; }
    public function setAutoplay(string autoplay){ let this->autoplay = autoplay; }
    private function generateAutoplay(){ return (this->autoplay!="") ? " autoplay='".this->autoplay."'" : ""; }
    
    ////////////////////////////////////////////
    // Controls
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getControls(){ return this->controls; }
    public function setControls(string controls){ let this->controls = controls; }
    private function generateControls(){ return (this->controls!="") ? " controls='".this->controls."'" : ""; }
    
    ////////////////////////////////////////////
    // Height
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHeight(){ return this->height; }
    public function setHeight(string height){ let this->height = height; }
    private function generateHeight(){ return (this->height!="") ? " height='".this->height."'" : ""; }

    ////////////////////////////////////////////
    // Loop
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getLoop(){ return this->loop; }
    public function setLoop(string loop){ let this->loop = loop; }
    private function generateLoop(){ return (this->loop!="") ? " loop='".this->loop."'" : ""; }
    
    ////////////////////////////////////////////
    // Muted
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMuted(){ return this->muted; }
    public function setMuted(string muted){ let this->muted = muted; }
    private function generateMuted(){ return (this->muted!="") ? " muted='".this->muted."'" : ""; }
    
    ////////////////////////////////////////////
    // Preload
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getPoster(){ return this->poster; }
    public function setPoster(string poster){ let this->poster = poster; }
    private function generatePoster(){ return (this->poster!="") ? " poster='".this->poster."'" : ""; }
    
    ////////////////////////////////////////////
    // Preload
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getPreload(){ return this->preload; }
    public function setPreload(string preload){ let this->preload = preload; }
    private function generatePreload(){ return (this->preload!="") ? " preload='".this->preload."'" : ""; }

    ////////////////////////////////////////////
    // Src
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSrc(){ return this->src; }
    public function setSrc(string src){ let this->src = scr; }
    private function generateSrc(){ return (this->src!="") ? " src='".this->scr."'" : ""; }
    
    ////////////////////////////////////////////
    // Width
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getWidth(){ return this->width; }
    public function setWidth(string width){ let this->width = width; }
    private function generateWidth(){ return (this->width!="") ? " width='".this->width."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <video></video>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateAutoplay().this->generateControls().this->generateHeight().
                            this->generateWidth().this->generateLoop().this->generateMuted().
                            this->generatePoster().this->generatePreload().this->generateSrc();
        return "<video ".attributes.parent::generateAttributes().">".parent::generateComponents()."</video>";
    }*/
}

