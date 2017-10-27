namespace HtmlBlocks;

class Style{
    const POSITION_STATIC   = 0;  // Default value. Elements render in order, as they appear in the document flow.
    const POSITION_ABSOLUTE = 1;  // The element is positioned relative to its first positioned (not static) ancestor element.
    const POSITION_FIXED    = 2;  // The element is positioned relative to the browser window.
    const POSITION_RELATIVE = 3;  // The element is positioned relative to its normal position, so "left:20px" adds 20 pixels to the element's LEFT position.
    const POSITION_INITIAL  = 4;  // Sets this property to its default value.
    const POSITION_INHERIT  = 3;  // Inherits this property from its parent element.

    const ANCHOR_TOP    = 0;
    const ANCHOR_BOTTOM = 1;
    const ANCHOR_LEFT   = 2;
    const ANCHOR_RIGHT  = 3;

    const SIZE_LARGE   = 0;
    const SIZE_DEFAULT = 1;
    const SIZE_SMALL   = 2;
    const SIZE_XSMALL  = 3;

    const FLOAT_LEFT  = 0;
    const FLOAT_RITHT = 1;

    const BORDER_COLLAPSE_SEPARATE = 1;
    const BORDER_COLLAPSE_COLLAPSE = 2;
    const BORDER_COLLAPSE_INITIAL  = 3;
    const BORDER_COLLAPSE_INHERIT  = 4;


    private class_parameters = [];


    private function getClassParameterValue(parameter){
        return this->class_parameters[parameter];
    }

    private function setClassParameter(parameter, value){
        let this->class_parameters[parameter] = value;
    }


    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Element Fonts and Text
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // Element Font Family
    //
    // The font-family property specifies the font for an element.
    //
    // ex. font-family: "Times New Roman", Georgia, Serif;
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFontFamily(){ return this->getClassParameterValue("font_family"); }
    public function setFontFamily(font_family){ this->setClassParameter("font_family", font_family); }
    private function generateFontFamily(){
        if(this->getFontFamily()!=""){ return "font-family:".this->getFontFamily().";"; }
        else{ return ""; }
    }


    ////////////////////////////////////////////
    // Font Color
    //
    // The color property specifies the color of text
    //
    // ex. color: rgb(0,0,255);
    // ex. color: #00ff00;
    // ex. color: red;
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFontColor(){ return this->getClassParameterValue("font_color"); }
    public function setFontColor(string font_color){ this->setClassParameter("font_color", font_color); }
    private function generateFontColor(){
        if(this->getFontColor()!=""){ return "color:".this->getFontColor().";"; }
        else{ return ""; }
    }


    ////////////////////////////////////////////
    // Font Size
    //
    // The font-size property sets the size of a font.
    //
    // ex. font-size: 10px;
    // ex. font-size: 10%;
    // ex. font-size:medium|xx-small|x-small|small|large|x-large|xx-large|smaller|larger|length|initial|inherit;
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFontSize(){ return this->getClassParameterValue("font_size"); }
    public function setFontSize(string font_size){ this->setClassParameter("font_size", font_size); }
    private function generateFontSize(){
        if(this->getFontSize()!=""){ return "font-size:".this->getFontSize().";"; }
        else{ return ""; }
    }


    ////////////////////////////////////////////
    // Font Weight
    //
    // The font-weight property sets how thick or thin characters in text should be displayed.
    //
    // ex. font-weight: bold;
    // ex. font-weight: 900;
    // ex. font-weight: normal|bold|bolder|lighter|number|initial|inherit;
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFontWeight(){ return this->getClassParameterValue("font_weight"); }
    public function setFontWeight(string font_weight){ this->setClassParameter("font_weight", font_weight); }
    private function generateFontWeight(){
        if(this->getFontWeight()!=""){ return "font-weight:".this->getFontWeight().";"; }
        else{ return ""; }
    }


    ////////////////////////////////////////////
    // Text Align
    //
    // The text-align property specifies the horizontal alignment of text in an element.
    //
    // ex. text-align: center;
    // ex. text-align: justify;
    // ex. text-align: left|right|center|justify|initial|inherit;
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getTextAlign(){ return this->getClassParameterValue("text_align"); }
    public function setTextAlign(string text_align){ this->setClassParameter("text_align", text_align); }
    private function generateTextAlign(){
        if(this->getTextAlign()!=""){ return "text-align:".this->getTextAlign().";"; }
        else{ return ""; }
    }

   
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Element Margin
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // Element Margin
    //
    // The margin shorthand property sets all the margin properties in one declaration. This property can have from one to four values.
    //
    // ex. margin:10px 5px 15px 20px;
    // ex. margin: length|auto|initial|inherit;
    //             -- length specifies a margin in px, pt, cm, etc. Default value is 0.
    //             -- % is also an option as a margin unit of measure.
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function setMargin(string top, string right, string bottom, string left){
        this->setClassParameter("margin_top", top);
        this->setClassParameter("margin_right", right);
        this->setClassParameter("margin_bottom", bottom);
        this->setClassParameter("margin_left", left);
    }

    public function getMarginTop(){ return this->getClassParameterValue("margin_top"); }
    public function setMarginTop(string margin_top){ this->setClassParameter("margin_top", margin_top); }

    public function getMarginRight(){ return this->getClassParameterValue("margin_right"); }
    public function setMarginRight(string margin_right){ this->setClassParameter("margin_right", margin_right); }

    public function getMarginBottom(){ return this->getClassParameterValue("margin_bottom"); }
    public function setMarginBottom(string margin_bottom){ this->setClassParameter("margin_bottom", margin_bottom); }

    public function getMarginLeft(){ return this->getClassParameterValue("margin_left"); }
    public function setMarginLeft(string margin_left){ this->setClassParameter("margin_left", margin_left); }

    private function generateMargin(){
        var margin_top = this->getMarginTop();
        var margin_right = this->getMarginRight();
        var margin_bottom = this->getMarginBottom();
        var margin_left = this->getMarginLeft();

        if(margin_top!="" && margin_right!="" && margin_bottom!="" && margin_left!=""){
            return "margin:".margin_top." ".margin_right." ".margin_bottom." ".margin_left.";";
        }
        else{ return ""; }
    } 


    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Element Padding
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // Element Padding
    //
    // The padding shorthand property sets all the padding properties in one declaration. This property can have from one to four values.
    //
    // ex. padding:10px 5px 15px 20px;
    // ex. padding: length|initial|inherit;
    //             -- length specifies padding in px, pt, cm, etc. Default value is 0.
    //             -- % is also an option as a padding unit of measure.
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function setPadding(string top, string right, string bottom, string left){
        this->setClassParameter("padding_top", top);
        this->setClassParameter("padding_right", right);
        this->setClassParameter("padding_bottom", bottom);
        this->setClassParameter("padding_left", left);
    }

    public function getPaddingTop(){ return this->getClassParameterValue("padding_top"); }
    public function setPaddingTop(string padding_top){ this->setClassParameter("padding_top", padding_top); }

    public function getPaddingRight(){ return this->getClassParameterValue("padding_right"); }
    public function setPaddingRight(string padding_right){ this->setClassParameter("padding_right", padding_right); }

    public function getPaddingBottom(){ return this->getClassParameterValue("padding_bottom"); }
    public function setPaddingBottom(string padding_bottom){ this->setClassParameter("padding_bottom", padding_bottom); }

    public function getPaddingLeft(){ return this->getClassParameterValue("padding_left"); }
    public function setPaddingLeft(string padding_left){ this->setClassParameter("padding_left", padding_left); }

    private function generatePadding(){
        var padding_top = this->getPaddingTop();
        var padding_right = this->getPaddingRight();
        var padding_bottom = this->getPaddingBottom();
        var padding_left = this->getPaddingLeft();

        if(padding_top!="" && padding_right!="" && padding_bottom!="" && padding_left!=""){
            return "padding:".padding_top." ".padding_right." ".padding_bottom." ".padding_left.";";
        }
        else{ return ""; }
    }


    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Element Position
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
/*
    ////////////////////////////////////////////
    // Element Position
    //
    // The position property specifies the type of positioning method used for an element
    // (static, relative, absolute or fixed).
    //
    // ex. padding:10px 5px 15px 20px 22px;
    // ex. position: static|absolute|fixed|relative|initial|inherit;
    //             -- length specifies padding in px, pt, cm, etc. Default value is 0.
    //             -- % is also an option as a padding unit of measure.
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function setPosition(string top, string right, string bottom, string left){
        this->setClassParameter("position_top", top);
        this->setClassParameter("position_right", right);
        this->setClassParameter("position_bottom", bottom);
        this->setClassParameter("position_left", left);
    }

    public function getPositionTop(){ return this->getClassParameterValue("position_top"); }
    public function setPositionTop(string position_top){ this->setClassParameter("position_top", position_top); }

    public function getPositionRight(){ return this->getClassParameterValue("position_right"); }
    public function setPositionRight(string position_right){ this->setClassParameter("position_right", position_right); }

    public function getPositionBottom(){ return this->getClassParameterValue("position_bottom"); }
    public function setPositionBottom(string position_bottom){ this->setClassParameter("position_bottom", position_bottom); }

    public function getPositionLeft(){ return this->getClassParameterValue("position_left"); }
    public function setPositionLeft(string position_left){ this->setClassParameter("position_left", position_left); }

    private function generatePosition(){
        var position_top = this->getPositionTop();
        var position_right = this->getPositionRight();
        var position_bottom = this->getPositionBottom();
        var position_left = this->getPositionLeft();

        if(position_top!="" && position_right!="" && position_bottom!="" && position_left!=""){
            return "position:absolute:".position_top." ".position_right." ".position_bottom." ".position_left.";";
        }
        else{ return ""; }
    }
*/

    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Element Dimentions
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // Element Width
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getWidth(){ return this->getClassParameterValue("dimention_width"); }
    public function setWidth(string width){ this->setClassParameter("dimention_width", width); }
    private function generateWidth(){
        if(this->getWidth()!=""){ return "width:".this->getWidth().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Minimum Width
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMinWidth(){ return this->getClassParameterValue("dimention_min_width"); }
    public function setMinWidth(string min_width){ this->setClassParameter("dimention_min_width", min_width); }
    private function generateMinWidth(){
        if(this->getMinWidth()!=""){ return "min-width:".this->getMinWidth().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Maximum Width
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMaxWidth(){ return this->getClassParameterValue("dimention_max_width"); }
    public function setMaxWidth(string max_width){ this->setClassParameter("dimention_max_width", max_width); }
    private function generateMaxWidth(){
        if(this->getMaxWidth()!=""){ return "max-width:".this->getMaxWidth().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Height
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHeight(){ return this->getClassParameterValue("dimention_height"); }
    public function setHeight(string height){ this->setClassParameter("dimention_height", height); }
    private function generateHeight(){
        if(this->getHeight()!=""){ return "height:".this->getHeight().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Minimum Height
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMinHeight(){ return this->getClassParameterValue("dimention_min_height"); }
    public function setMinHeight(string min_height){ this->setClassParameter("dimention_min_height", min_height); }
    private function generateMinHeight(){
        if(this->getMinHeight()!=""){ return "min-height:".this->getMinHeight().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Maximum Height
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMaxHeight(){ return this->getClassParameterValue("dimention_max_height"); }
    public function setMaxHeight(string max_height){ this->setClassParameter("dimention_max_height", max_height); }
    private function generateMaxHeight(){
        if(this->getMaxHeight()!=""){ return "max-height:".this->getMaxHeight().";"; }
        else{ return ""; }
    }


    ////////////////////////////////////////////
    // Element Vertical Align
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getVerticalAlign(){ return this->getClassParameterValue("vertical_align"); }
    public function setVerticalAlign(string valign){ this->setClassParameter("vertical_align", valign); }
    private function generateVerticalAlign(){
        if(this->getVerticalAlign()!=""){ return "vertical-align:".this->getVerticalAlign().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Cursor
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getCursor(){ return this->getClassParameterValue("cursor"); }
    public function setCursor(string cursor_style){ this->setClassParameter("cursor", cursor_style); }
    private function generateCursor(){
        if(this->getCursor()!=""){ return "cursor:".this->getCursor().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Background Color
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBackgroundColor(){ return this->getClassParameterValue("background_color"); }
    public function setBackgroundColor(string color){ this->setClassParameter("background_color", color); }
    private function generateBackgroundColor(){
        if(this->getBackgroundColor()!=""){ return "background-color:".this->getBackgroundColor().";"; }
        else{ return ""; }
    }


    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Element Borders 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // Element Border Radius
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderRadius(){ return this->getClassParameterValue("border_radius"); }
    public function setBorderRadius(string radius){ this->setClassParameter("border_radius", radius); }
    private function generateBorderRadius(){
        if(this->getBorderRadius()!=""){ return "border-radius:".this->getBorderRadius().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Width
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderWidth(){ return this->getClassParameterValue("border_width"); }
    public function setBorderWidth(string width){ this->setClassParameter("border_width", width); }
    private function generateBorderWidth(){
        if(this->getBorderWidth()!=""){ return "border-width:".this->getBorderWidth().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Color
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderColor(){ return this->getClassParameterValue("border_color"); }
    public function setBorderColor(string color){ this->setClassParameter("border_color", color); }
    private function generateBorderColor(){
        if(this->getBorderColor()!=""){ return "border-color:".this->getBorderColor().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Style
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderStyle(){ return this->getClassParameterValue("border_style"); }
    public function setBorderStyle(string style){ this->setClassParameter("border_style", style); }
    private function generateBorderStyle(){
        if(this->getBorderStyle()!=""){ return "border-style:".this->getBorderStyle().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Collapse
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderCollapse(){ return this->getClassParameterValue("border_collapse"); }
    public function setBorderCollapse(int collapse_type){
        switch(collapse_type){
            case Style::BORDER_COLLAPSE_SEPARATE: this->setClassParameter("border_collapse", "separate"); break;
            case Style::BORDER_COLLAPSE_COLLAPSE: this->setClassParameter("border_collapse", "collapse"); break;
            case Style::BORDER_COLLAPSE_INITIAL:  this->setClassParameter("border_collapse", "initial"); break;
            case Style::BORDER_COLLAPSE_INHERIT:  this->setClassParameter("border_collapse", "inherit"); break;
            default: this->setClassParameter("border_collapse", collapse_type); break;
        }
    }
    private function generateBorderCollapse(){
        if(this->getBorderCollapse()!=""){ return "border-collapse:".this->getBorderCollapse().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Spacing
    //
    // 
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderSpacing(){ return this->getClassParameterValue("border_spacing"); }
    public function setBorderSpacing(string gap){ this->setClassParameter("border_spacing", gap); }
    private function generateBorderSpacing(){
        if(this->getBorderSpacing()!=""){ return "border-spacing:".this->getBorderSpacing().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Image
    //
    // The border-image property allows you to specify an image to be used instead of the normal
    // border around an element.
    //
    // The border-image property is a shorthand property for setting the border-image-source,
    // border-image-slice, border-image-width, border-image-outset and border-image-repeat properties.
    // Omitted values are set to their default values.
    //
    // ex. 
    // ex. 
    //             --
    //             -- 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderImage(){ return this->getClassParameterValue("border_style"); }
    public function setBorderImage(string image){ this->setClassParameter("border_style", image); }
    private function generateBorderImage(){
        if(this->getBorderImage()!=""){ return "border-image:".this->getBorderImage().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Image Outset
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderImageOutset(){ return this->getClassParameterValue("border_image_outset"); }
    public function setBorderImageOutset(string outset){ this->setClassParameter("border_image_outset", outset); }
    private function generateBorderImageOutset(){
        if(this->getBorderImageOutset()!=""){ return "border-image-outset:".this->getBorderImageOutset().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Image Repeat
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderImageRepeat(){ return this->getClassParameterValue("border_image_repeat"); }
    public function setBorderImageRepeat(string image_repeat){ this->setClassParameter("border_image_repeat", image_repeat); }
    private function generateBorderImageRepeat(){
        if(this->getBorderImageRepeat()!=""){ return "border-image-repeat:".this->getBorderImageRepeat().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Image Slice
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderImageSlice(){ return this->getClassParameterValue("border_image_slice"); }
    public function setBorderImageSlice(string slice){ this->setClassParameter("border_image_slice", slice); }
    private function generateBorderImageSlice(){
        if(this->getBorderImageSlice()!=""){ return "border-image-slice:".this->getBorderImageSlice().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Image Source
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderImageSource(){ return this->getClassParameterValue("border_image_source"); }
    public function setBorderImageSource(string source){ this->setClassParameter("border_image_source", source); }
    private function generateBorderImageSource(){
        if(this->getBorderImageSource()!=""){ return "border-image-source:".this->getBorderImageSource().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Border Image Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderImageWidth(){ return this->getClassParameterValue("border_image_width"); }
    public function setBorderImageWidth(string width){ this->setClassParameter("border_image_width", width); }
    private function generateBorderImageWidth(){
        if(this->getBorderImageWidth()!=""){ return "border-image-width:".this->getBorderImageWidth().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderTop(){ return this->getClassParameterValue("border_top"); }
    public function setBorderTop(string width, string style, string color){
        this->setClassParameter("border_top", width." ".style." ".color);
    }
    private function generateBorderTop(){
        if(this->getBorderTop()!=""){ return "border-top:".this->getBorderTop().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderTopColor(){ return this->getClassParameterValue("border_top_color"); }
    public function setBorderTopColor(string color){ this->setClassParameter("border_top_color", color); }
    private function generateBorderTopColor(){
        if(this->getBorderTopColor()!=""){ return "border-top-color:".this->getBorderTopColor().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderTopLeftRadius(){ return this->getClassParameterValue("border_top_left_radius"); }
    public function setBorderTopLeftRadius(string radius){ this->setClassParameter("border_top_left_radius", radius); }
    private function generateBorderTopLeftRadius(){
        if(this->getBorderTopLeftRadius()!=""){ return "border-top-left-radius:".this->getBorderTopLeftRadius().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderTopRightRadius(){ return this->getClassParameterValue("border_top_right_radius"); }
    public function setBorderTopRightRadius(string radius){ this->setClassParameter("border_top_right_radius", radius); }
    private function generateBorderTopRightRadius(){
        if(this->getBorderTopRightRadius()!=""){ return "border-top-right-radius:".this->getBorderTopRightRadius().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderTopStyle(){ return this->getClassParameterValue("border_top_style"); }
    public function setBorderTopStyle(string style){ this->setClassParameter("border_top_style", style); }
    private function generateBorderTopStyle(){
        if(this->getBorderTopStyle()!=""){ return "border-top-style:".this->getBorderTopStyle().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderTopWidth(){ return this->getClassParameterValue("border_top_width"); }
    public function setBorderTopWidth(string width){ this->setClassParameter("border_top_width", width); }
    private function generateBorderTopWidth(){
        if(this->getBorderTopWidth()!=""){ return "border-top-width:".this->getBorderTopWidth().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderRight(){ return this->getClassParameterValue("border_right"); }
    public function setBorderRight(string width, string style, string color){
        this->setClassParameter("border_right", width." ".style." ".color);
    }
    private function generateBorderRight(){
        if(this->getBorderRight()!=""){ return "border-right:".this->getBorderRight().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderRightColor(){ return this->getClassParameterValue("border_right_color"); }
    public function setBorderRightColor(string color){ this->setClassParameter("border_right_color", color); }
    private function generateBorderRightColor(){
        if(this->getBorderRightColor()!=""){ return "border-right-color:".this->getBorderRightColor().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderRightStyle(){ return this->getClassParameterValue("border_right_style"); }
    public function setBorderRightStyle(string style){ this->setClassParameter("border_right_style", style); }
    private function generateBorderRightStyle(){
        if(this->getBorderRightStyle()!=""){ return "border-right-style:".this->getBorderRightStyle().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderRightWidth(){ return this->getClassParameterValue("border_right_width"); }
    public function setBorderRightWidth(string width){ this->setClassParameter("border_right_color", width); }
    private function generateBorderRightWidth(){
        if(this->getBorderRightWidth()!=""){ return "border-right-width:".this->getBorderRightWidth().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderBottom(){ return this->getClassParameterValue("border_bottom"); }
    public function setBorderBottom(string width, string style, string color){
        this->setClassParameter("border_bottom", width." ".style." ".color);
    }
    private function generateBorderBottom(){
        if(this->getBorderBottom()!=""){ return "border-bottom:".this->getBorderBottom().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderBottomColor(){ return this->getClassParameterValue("border_bottom_color"); }
    public function setBorderBottomColor(string color){ this->setClassParameter("border_bottom_color", color); }
    private function generateBorderBottomColor(){
        if(this->getBorderBottomColor()!=""){ return "border-bottom-color:".this->getBorderBottomColor().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderBottomLeftRadius(){ return this->getClassParameterValue("border_bottom_left_radius"); }
    public function setBorderBottomLeftRadius(string radius){ this->setClassParameter("border_bottom_left_radius", radius); }
    private function generateBorderBottomLeftRadius(){
        if(this->getBorderBottomLeftRadius()!=""){ return "border-bottom-left-radius:".this->getBorderBottomLeftRadius().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderBottomRightRadius(){ return this->getClassParameterValue("border_bottom_right_radius"); }
    public function setBorderBottomRightRadius(string radius){ this->setClassParameter("border_bottom_right_radius", radius); }
    private function generateBorderBottomRightRadius(){
        if(this->getBorderBottomRightRadius()!=""){ return "border-bottom-right-radius:".this->getBorderBottomRightRadius().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderBottomStyle(){ return this->getClassParameterValue("border_bottom_style"); }
    public function setBorderBottomStyle(string style){ this->setClassParameter("border_bottom_style", style); }
    private function generateBorderBottomStyle(){
        if(this->getBorderBottomStyle()!=""){ return "border-bottom-style:".this->getBorderBottomStyle().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderBottomWidth(){ return this->getClassParameterValue("border_bottom_width"); }
    public function setBorderBottomWidth(string width){ this->setClassParameter("border_bottom_width", width); }
    private function generateBorderBottomWidth(){
        if(this->getBorderBottomWidth()!=""){ return "border-bottom-width:".this->getBorderBottomWidth().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderLeft(){ return this->getClassParameterValue("border_left"); }
    public function setBorderLeft(string width, string style, string color){
        this->setClassParameter("border_left", width." ".style." ".color);
    }
    private function generateBorderLeft(){
        if(this->getBorderLeft()!=""){ return "border-left:".this->getBorderLeft().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderLeftColor(){ return this->getClassParameterValue("border_left_color"); }
    public function setBorderLeftColor(string color){ this->setClassParameter("border_left_color", color); }
    private function generateBorderLeftColor(){
        if(this->getBorderLeftColor()!=""){ return "border-left-color:".this->getBorderLeftColor().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderLeftStyle(){ return this->getClassParameterValue("border_left_style"); }
    public function setBorderLeftStyle(string style){ this->setClassParameter("border_left_style", style); }
    private function generateBorderLeftStyle(){
        if(this->getBorderLeftStyle()!=""){ return "border-left-style:".this->getBorderLeftStyle().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getBorderLeftWidth(){ return this->getClassParameterValue("border_left_width"); }
    public function setBorderLeftWidth(string width){ this->setClassParameter("border_left_color", width); }
    private function generateBorderLeftWidth(){
        if(this->getBorderLeftWidth()!=""){ return "border-left-width:".this->getBorderLeftWidth().";"; }
        else{ return ""; }
    }


    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOverflow(){ return this->getClassParameterValue("overflow"); }
    public function setOverflow(string overflow){ this->setClassParameter("overflow", overflow); }
    private function generateOverflow(){
        if(this->getOverflow()!=""){ return "overflow:".this->getOverflow().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOverflowY(){ return this->getClassParameterValue("overflow_y"); }
    public function setOverflowY(string overflow_y){ this->setClassParameter("overflow_y", overflow_y); }
    private function generateOverflowY(){
        if(this->getOverflowY()!=""){ return "overflow-y:".this->getOverflowY().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOverflowX(){ return this->getClassParameterValue("overflow_x"); }
    public function setOverflowX(string overflow_x){ this->setClassParameter("overflow_x", overflow_x); }
    private function generateOverflowX(){
        if(this->getOverflowX()!=""){ return "overflow-x:".this->getOverflowX().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFloat(){ return this->getClassParameterValue("element_float"); }
    public function setFloat(string ffloat){ this->setClassParameter("element_float", ffloat); }
    private function generateFloat(){
        if(this->getFloat()!=""){ return "float:".this->getFloat().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getClear(){ return this->getClassParameterValue("element_clear"); }
    public function setClear(string clear){ this->setClassParameter("element_clear", clear); }
    private function generateClear(){
        if(this->getClear()!=""){ return "clear:".this->getClear().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getZoom(){ return this->getClassParameterValue("element_zoom"); }
    public function setZoom(string width){ this->setClassParameter("element_zoom", width); }
    private function generateZoom(){
        if(this->getZoom()!=""){ return "zoom:".this->getZoom().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDisplay(){ return this->getClassParameterValue("element_display"); }
    public function setDisplay(string display){ this->setClassParameter("element_display", display); }
    private function generateDisplay(){
        if(this->getDisplay()!=""){ return "display:".this->getDisplay().";"; }
        else{ return ""; }
    }

    ////////////////////////////////////////////
    // Element Width
    //
    //
    //
    // ex.
    // ex.
    //             --
    //             --
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var style = "";
        let style = this->generateFontFamily().
                    this->generateFontColor().
                    this->generateFontSize().
                    this->generateFontWeight().
                    this->generateTextAlign().
                    this->generatePadding().
                    this->generateMargin().
                    //this->generatePosition().
                    //this->generateLeft().
                    //this->generateRight().
                    this->generateCursor().
                    this->generateWidth().
                    this->generateHeight().
                    this->generateMinWidth().
                    this->generateMaxWidth().
                    this->generateMinHeight().
                    this->generateMaxHeight().
                    this->generateVerticalAlign().
                    this->generateCursor().
                    this->generateBackgroundColor().
                    this->generateBorderColor().
                    this->generateBorderWidth().
                    this->generateBorderStyle().
                    this->generateBorderCollapse().
                    this->generateBorderSpacing().
                    this->generateBorderTop().
                    this->generateBorderRight().
                    this->generateBorderBottom().
                    this->generateBorderLeft().
                    this->generateOverflow().
                    this->generateOverflowX().
                    this->generateOverflowY().
                    this->generateFloat().
                    this->generateZoom().
                    this->generateClear().
                    this->generateDisplay();

        if(style!=""){ return "style='".style."'";}
        else{ return "";}
    }
}
