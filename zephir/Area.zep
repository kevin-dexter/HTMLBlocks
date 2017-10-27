namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Area
//
// The <area> tag defines an area inside an image-map (an image-map is an image with clickable areas).
// The <area> element is always nested inside a <map> tag.
// Note: The usemap attribute in the <img> tag is associated with the <map> element's name attribute,
//       and creates a relationship between the image and the map.
//
// ex.  <img src="planets.gif" width="145" height="126" alt="Planets" usemap="#planetmap">
//
//      <map name="planetmap">
//          <area shape="rect" coords="0,0,82,126" href="sun.htm" alt="Sun">
//          <area shape="circle" coords="90,58,3" href="mercur.htm" alt="Mercury">
//          <area shape="circle" coords="124,58,8" href="venus.htm" alt="Venus">
//      </map> 
//
// The <area> tag also supports the Global Attributes in HTML.
// The <area> tag also supports the Event Attributes in HTML.
//
// STATUS : Verify complete and test.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Area extends Component{

    const RELATIONSHIP_ALTERNATE  = 1;
    const RELATIONSHIP_AUTHOR     = 2;
    const RELATIONSHIP_BOOKMARK   = 3;
    const RELATIONSHIP_HELP       = 4;
    const RELATIONSHIP_LICENSE    = 5;
    const RELATIONSHIP_NEXT       = 6;
    const RELATIONSHIP_NOFOLLOW   = 7;
    const RELATIONSHIP_NOREFERRER = 8;
    const RELATIONSHIP_PREFETCH   = 9;
    const RELATIONSHIP_PREV       = 10;
    const RELATIONSHIP_SEARCH     = 11;
    const RELATIONSHIP_TAG        = 12;

    const SHAPE_DEFAULT = 1;
    const SHAPE_RECT    = 2;
    const SHAPE_CIRCLE  = 3;
    const SHAPE_POLY    = 4;

    const TARGET_BLANK  = 1;
    const TARGET_PARENT = 2;
    const TARGET_SELF   = 3;
    const TARGET_TOP    = 4;


    private alternate = ""; // Specifies an alternate text for the area. Required if the href attribute is present.
    private coords = "";    // Specifies the coordinates of the area.
    private download = "";  // Specifies that the target will be downloaded when a user clicks on the hyperlink.
    private href = "";      // Specifies the hyperlink target for the area.
    private hreflang = "";  // Specifies the language of the target URL.
    private media = "";     // Specifies what media/device the target URL is optimized for.
    private rel = null;     // Specifies the relationship between the current document and the target URL.
    private shape = "";     // Specifies the shape of the area.
    private target = "";    // Specifies where to open the target URL.
    private type = "";      // Specifies the media type of the target URL.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->alternate);
        unset(this->coords);
        unset(this->download);
        unset(this->href);
        unset(this->herflang);
        unset(this->media);
        unset(this->rel);
        unset(this->shape);
        unset(this->target);
        unset(this->type);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Alt
    //
    // Specifies an alternate text for the area. Required if the href attribute is present.
    //
    // Syntax: <area alt="character">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAlt(){ return this->alternate; }
    public function setAlt(string alternate){ let this->alternate = alternate; }
    private function generateAlt(){ return (this->alternate!="") ? " alt='".this->alternate."'" : ""; }

    ////////////////////////////////////////////
    // Coords
    //
    // Specifies the coordinates of the area
    //
    // Syntax: <area coords="character">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getCoords(){ return this->coords; }
    public function setCoords(string coords){ let this->coords = coords; }
    private function generateCoords(){ return (this->coords!="") ? " coords='".this->coords."'" : ""; }

    ////////////////////////////////////////////
    // Download
    //
    // Specifies that the target will be downloaded when a user clicks on the hyperlink.
    //
    // Syntax: <area download="character">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDownload(){ return this->download; }
    public function setDownload(string download){ let this->download = download; }
    private function generateDownload(){ return (this->download!="") ? " download='".this->download."'" : ""; }

    ////////////////////////////////////////////
    // Href
    //
    // Specifies the hyperlink target for the area.
    //
    // Syntax: <area href="character">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHref(){ return this->href; }
    public function setHref(string href){ let this->href = href; }
    private function generateHref(){ return (this->href!="") ? " href='".this->href."'" : ""; }

    ////////////////////////////////////////////
    // Hreflang
    //
    // Specifies the language of the target URL.
    //
    // Syntax: <area hreflang="character">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHreflang(){ return this->hreflang; }
    public function setHreflang(string hreflang){ let this->hreflang = hreflang; }
    private function generateHreflang(){ return (this->hreflang!="") ? " hreflang='".this->hreflang."'" : ""; }

    ////////////////////////////////////////////
    // Media
    //
    // Specifies what media/device the target URL is optimized for.
    //
    // Syntax: <area media="character">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMedia(){ return this->media; }
    public function setMedia(string media){ let this->media = media; }
    private function generateMedia(){ return (this->media!="") ? " media='".this->media."'" : ""; }

    ////////////////////////////////////////////
    // Rel
    //
    // Specifies the relationship between the current document and the target URL.
    //
    // Syntax: <area rel="bookmark">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getRel(){ return this->rel; }
    public function setRel(var rel){
        switch(rel){
            case Area::RELATIONSHIP_ALTERNATE:
                let this->rel = "alternate";
                break;
            case Area::RELATIONSHIP_AUTHOR:
                let this->rel = "author";
                break;
            case Area::RELATIONSHIP_BOOKMARK:
                let this->rel = "bookmark";
                break;
            case Area::RELATIONSHIP_HELP:
                let this->rel = "help";
                break;
            case Area::RELATIONSHIP_LICENSE:
                let this->rel = "license";
                break;
            case Area::RELATIONSHIP_NEXT:
                let this->rel = "next";
                break;
            case Area::RELATIONSHIP_NOFOLLOW:
                let this->rel = "nofollow";
                break;
            case Area::RELATIONSHIP_NOREFERRER:
                let this->rel = "noreferrer";
                break;
            case Area::RELATIONSHIP_PREFETCH:
                let this->rel = "prefetch";
                break;
            case Area::RELATIONSHIP_PREV:
                let this->rel = "prev";
                break;
            case Area::RELATIONSHIP_SEARCH:
                let this->rel = "search";
                break;
            case Area::RELATIONSHIP_TAG:
                let this->rel = "tag";
                break;
            default:
                let this->rel = rel;
                break;
        }
    }
    private function generateRel(){ return (this->rel!="") ? " rel='".this->rel."'" : ""; }

    ////////////////////////////////////////////
    // Shape
    //
    // Specifies the shape of the area.
    //
    // Syntax: <area shape="rect">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getShape(){ return this->shape; }
    public function setShape(var shape){
        switch(shape){
            case Area::SHAPE_DEFAULT:
                let this->shpae = "default";
                break;
            case Area::SHAPE_RECT:
                let this->shpae = "rect";
                break;
            case Area::SHAPE_CIRCLE:
                let this->shpae = "circle";
                break;
            case Area::SHAPE_POLY:
                let this->shpae = "poly";
                break;
            default:
                let this->shape = shape;
                break;
        }
    }
    private function generateShape(){ return (this->shape!="") ? " shape='".this->shape."'" : ""; }

    ////////////////////////////////////////////
    // Target
    //
    // Specifies where to open the target URL.
    //
    // Syntax: <area target="_self">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getTarget(){ return this->target; }
    public function setTarget(var target){
        switch(target){
            case Area::TARGET_BLANK:
                let this->target = "_blank";
                break;
            case Area::TARGET_PARENT:
                let this->target = "_parent";
                break;
            case Area::TARGET_SELF:
                let this->target = "_self";
                break;
            case Area::TARGET_TOP:
                let this->target = "_top";
                break;
            default:
                let this->target = target;
                break;
        }
    }
    private function generateTarget(){ return (this->target!="") ? " target='".this->target."'" : ""; }

    ////////////////////////////////////////////
    // Type
    //
    // Specifies the media type of the target URL.
    //
    // Syntax: <area type="character">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getType(){ return this->type; }
    public function setType(string type){ let this->type = type; }
    private function generateType(){ return (this->type!="") ? " type='".this->type."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <area>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateAlt().this->generateCoords().this->generateDownload().this->generateHref().
                            this->generateHreflang().this->generateMedia().this->generateRel().this->generateShape().
                            this->generateTarget().this->generateType();
        return "<area ".attributes.parent::generateAttributes().">";
    }
}
