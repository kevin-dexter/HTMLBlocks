namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Input
//
// The <input> tag specifies an input field where the user can enter data.  <input> elements are
// used within a <form> element to declare input controls that allow users to input data.  An input
// field can vary in many ways, depending on the type attribute.
//
// ex.  <form action="/action_page.php">
//          First name: <input type="text" name="fname"><br>
//          Last name: <input type="text" name="lname"><br>
//          <input type="submit" value="Submit">
//      </form> 
//
// The <colgroup> tag also supports the Global Attributes in HTML.
// The <colgroup> tag also supports the Event Attributes in HTML.
//
// STATUS : Incomplete
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Input extends Component{
    const AUTOCOMPLETE_ON  = 1;
    const AUTOCOMPLETE_OFF = 2;
    
    const ENCODE_APPLICATION = 1;
    const ENCODE_MULTIPART   = 2;
    const ENCODE_PLAIN_TEXT  = 3;

    const METHOD_POST = 1;
    const METHOD_GET  = 2;
    
    const TARGET_BLANK  = 1;
    const TARGET_SELF   = 2;
    const TARGET_PARENT = 3;
    const TARGET_TOP    = 4;

    const TYPE_BUTTON         = 1;
    const TYPE_CHECKBOX       = 2;
    const TYPE_COLOR          = 3;
    const TYPE_DATE           = 4;
    const TYPE_DATETIME_LOCAL = 5;
    const TYPE_EMAIL          = 6;
    const TYPE_FILE           = 7;
    const TYPE_HIDDEN         = 8;
    const TYPE_IMAGE          = 9;
    const TYPE_MONTH          = 10;
    const TYPE_NUMBER         = 11;
    const TYPE_PASSWORD       = 12;
    const TYPE_RADIO          = 13;
    const TYPE_RANGE          = 14;
    const TYPE_RESET          = 15;
    const TYPE_SEARCH         = 16;
    const TYPE_SUBMIT         = 17;
    const TYPE_TEL            = 18;
    const TYPE_TEXT           = 19;
    const TYPE_TIME           = 20;
    const TYPE_URL            = 21;
    const TYPE_WEEK           = 22;
    
    
    private accept;         // Specifies the types of files that the server accepts (only for type="file").
    private alt;            // Specifies an alternate text for images (only for type="image").
    private autocomplete;   // Specifies whether an <input> element should have autocomplete enabled.
    private autofocus;      // Specifies that an <input> element should automatically get focus when the page loads.
    private checked;        // Specifies that an <input> element should be pre-selected when the page loads (for type="checkbox" or type="radio").
    private dirname;        // Specifies that the text direction will be submitted.
    private disabled;       // Specifies that an <input> element should be disabled.
    private form;           // Specifies one or more forms the <input> element belongs to.
    private formaction;     // Specifies the URL of the file that will process the input control when the form is submitted (for type="submit" and type="image").
    private formenctype;    // Specifies how the form-data should be encoded when submitting it to the server (for type="submit" and type="image").
    private formmethod;     // Defines the HTTP method for sending data to the action URL (for type="submit" and type="image").
    private formnovalidate; // Defines that form elements should not be validated when submitted.
    private formtarget;     // Specifies where to display the response that is received after submitting the form (for type="submit" and type="image").
    private height;         // Specifies the height of an <input> element (only for type="image").
    private list;           // Refers to a <datalist> element that contains pre-defined options for an <input> element.
    private max;            // Specifies the maximum value for an <input> element.
    private maxlength;      // Specifies the maximum number of characters allowed in an <input> element
    private min;            // Specifies a minimum value for an <input> element.
    private multiple;       // Specifies that a user can enter more than one value in an <input> element.
    private name;           // Specifies the name of an <input> element.
    private pattern;        // Specifies a regular expression that an <input> element's value is checked against.
    private placeholder;    // Specifies a short hint that describes the expected value of an <input> element.
    private readonly;       // Specifies that an input field is read-only.
    private required;       // Specifies that an input field must be filled out before submitting the form.
    private size;           // Specifies the width, in characters, of an <input> element.
    private src;            // Specifies the URL of the image to use as a submit button (only for type="image").
    private step;           // Specifies the legal number intervals for an input field
    private type;           // Specifies the type <input> element to display.
    private value;          // Specifies the value of an <input> element.
    private width;          // Specifies the width of an <input> element (only for type="image").


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->accept);
	    unset(this->alt);
	    unset(this->autocomplete);
	    unset(this->autofocus);
	    unset(this->checked);
	    unset(this->dirname);
	    unset(this->disabled);
	    unset(this->form);
	    unset(this->formaction);
	    unset(this->formenctype);
	    unset(this->formmethod);
	    unset(this->formnovalidate);
	    unset(this->formtarget);
	    unset(this->height);
	    unset(this->list);
	    unset(this->max);
	    unset(this->maxlength);
	    unset(this->min);
	    unset(this->multiple);
	    unset(this->name);
	    unset(this->pattern);
	    unset(this->placeholder);
	    unset(this->readonly);
	    unset(this->required);
	    unset(this->size);
	    unset(this->src);
	    unset(this->sep);
	    unset(this->type);
	    unset(this->value);
	    unset(this->width);
	    
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Accept
    //
    // The accept attribute specifies the types of files that the server accepts (that can be
    // submitted through a file upload).
    //
    // Note: The accept attribute can only be used with <input type="file">.
    //
    // Syntax: <input accept="file_extension|audio/*|video/*|image/*|media_type"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAccept(){ return this->accept; }
    public function setAccept(var accept){ let this->accept = accept; }
    private function generateAccept(){ return (this->accept!="") ? " accept='".this->accept."'" : ""; }
    
    ////////////////////////////////////////////
    // Alt
    //
    // The alt attribute provides an alternate text for the user, if he/she for some reason cannot
    // view the image (because of slow connection, an error in the src attribute, or if the user uses
    // a screen reader).
    //
    // Note: The alt attribute can only be used with <input type="image">.
    //
    // Syntax:  <input alt="text">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAlt(){ return this->alt; }
    public function setAlt(var alt){ let this->alt = alt; }
    private function generateAlt(){ return (this->alt!="") ? " alt='".this->alt."'" : ""; }
    
    ////////////////////////////////////////////
    // Autocomplete
    //
    // The autocomplete attribute specifies whether or not an input field should have autocomplete enabled.
    // Autocomplete allows the browser to predict the value. When a user starts to type in a field, the
    // browser should display options to fill in the field, based on earlier typed values.
    //
    // Note: The autocomplete attribute works with the following <input> types: text, search, url, tel, email,
    // password, datepickers, range, and color.
    //
    // Syntax: <input autocomplete="on|off"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAutocomplete(){ return this->autocomplete; }
    public function setAutocomplete(var autocomplete){ let this->autocomplete = autocomplete; }
    private function generateAutocomplete(){ return (this->autocomplete!="") ? " autocomplete='".this->autocomplete."'" : ""; }
    
    ////////////////////////////////////////////
    // Autofocus
    //
    // The autofocus attribute is a boolean attribute.  When present, it specifies that an <input>
    // element should automatically get focus when the page loads.
    //
    // Syntax: <input autofocus>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAutofocus(){ return this->autofocus; }
    public function setAutofocus(var autofocus){ let this->autofocus = autofocus; }
    private function generateAutofocus(){ return (this->autofocus) ? " autofocus" : ""; }

    ////////////////////////////////////////////
    // Checked
    //
    // The checked attribute is a boolean attribute.  When present, it specifies that an <input>
    // element should be pre-selected (checked) when the page loads.  The checked attribute can be
    // used with <input type="checkbox"> and <input type="radio">.  The checked attribute can also
    // be set after the page load, with a JavaScript.
    //
    // Syntax: <input checked>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getChecked(){ return this->checked; }
    public function setChecked(var checked){ let this->checked = checked; }
    private function generateChecked(){ return (this->checked) ? " checked" : ""; }

    ////////////////////////////////////////////
    // Dirname
    //
    // The dirname attribute enables the submission of the text direction of the input field.  The
    // dirname attribute's value is always the name of the input field, followed by ".dir".
    //
    // Syntax: <input name="myname" dirname="myname.dir">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDirname(){ return this->dirname; }
    public function setDirname(var dirname){ let this->dirname = dirname; }
    private function generateDirname(){ return (this->dirname!="") ? " dirname='".this->dirname."'" : ""; }
    
    ////////////////////////////////////////////
    // Disabled
    //
    // The disabled attribute is a boolean attribute.  When present, it specifies that the <input>
    // element should be disabled.  A disabled input element is unusable and un-clickable.  The
    // disabled attribute can be set to keep a user from using the <input> element until some other
    // condition has been met (like selecting a checkbox, etc.). Then, a JavaScript could remove the
    // disabled value, and make the <input> element usable.
    // Tip: Disabled <input> elements in a form will not be submitted.
    //
    // Syntax: <input disabled>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDisabled(){ return this->disabled; }
    public function setDisabled(var disabled){ let this->disabled = disabled; }
    private function generateDisabled(){ return (this->disabled) ? " disabled" : ""; }
    
    ////////////////////////////////////////////
    // Form
    //
    // The form attribute specifies one or more forms the <input> element belongs to.
    //
    // Syntax: <input form="form_id">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getForm(){ return this->form; }
    public function setForm(var form){ let this->form = form; }
    private function generateForm(){ return (this->form!="") ? " form='".this->form."'" : ""; }
    
    ////////////////////////////////////////////
    // Formaction
    //
    // The formaction attribute specifies the URL of the file that will process the input control
    // when the form is submitted.  The formaction attribute overrides the action attribute of the
    // <form> element.
    //
    // Note: The formaction attribute is used with type="submit" and type="image".
    //
    // Syntax: <input formaction="URL"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormaction(){ return this->formaction; }
    public function setFormaction(var formaction){ let this->formaction = formaction; }
    private function generateFormaction(){ return (this->formaction!="") ? " formaction='".this->formaction."'" : ""; }
    
    ////////////////////////////////////////////
    // Formenctype
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormenctype(){ return this->formenctype; }
    public function setFormenctype(var formenctype){ let this->formenctype = formenctype; }
    private function generateFormenctype(){ return (this->formenctype!="") ? " formenctype='".this->formenctype."'" : ""; }
    
    ////////////////////////////////////////////
    // Formmethod
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormmethod(){ return this->formmethod; }
    public function setFormmethod(var formmethod){ let this->formmethod = formmethod; }
    private function generateFormmethod(){ return (this->formmethod!="") ? " formmethod='".this->formmethod."'" : ""; }
    
    ////////////////////////////////////////////
    // Formnovalidate
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormnovalidate(){ return this->formnovalidate; }
    public function setFormnovalidate(var formnovalidate){ let this->formnovalidate = formnovalidate; }
    private function generateFormnovalidate(){ return (this->formnovalidate!="") ? " formnovalidate='".this->formnovalidate."'" : ""; }
    
    ////////////////////////////////////////////
    // Formtarget
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormtarget(){ return this->formtarget; }
    public function setFormtarget(var formtarget){ let this->formtarget = formtarget; }
    private function generateFormtarget(){ return (this->formtarget!="") ? " formtarget='".this->formtarget."'" : ""; }
    
    ////////////////////////////////////////////
    // Height
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHeight(){ return this->height; }
    public function setHeight(var height){ let this->height = height; }
    private function generateHeight(){ return (this->height!="") ? " height='".this->height."'" : ""; }
    
    ////////////////////////////////////////////
    // List
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getList(){ return this->list; }
    public function setList(var list){ let this->list = list; }
    private function generateList(){ return (this->list!="") ? " list='".this->list."'" : ""; }
    
    ////////////////////////////////////////////
    // Max
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMax(){ return this->max; }
    public function setMax(var span){ let this->max = max; }
    private function generateMax(){ return (this->max!="") ? " max='".this->max."'" : ""; }
    
    ////////////////////////////////////////////
    // Maxlength
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMaxlength(){ return this->maxlength; }
    public function setMaxlength(var maxlength){ let this->maxlength = maxlength; }
    private function generateMaxlength(){ return (this->maxlength!="") ? " maxlength='".this->maxlength."'" : ""; }
    
    ////////////////////////////////////////////
    // Min
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMin(){ return this->min; }
    public function setMin(var min){ let this->min = min; }
    private function generateMin(){ return (this->min!="") ? " min='".this->min."'" : ""; }
    
    ////////////////////////////////////////////
    // Multiple
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMultiple(){ return this->multiple; }
    public function setMultiple(var multiple){ let this->multiple = multiple; }
    private function generateMultiple(){ return (this->multiple!="") ? " multiple='".this->multiple."'" : ""; }
    
    ////////////////////////////////////////////
    // Name
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getName(){ return this->name; }
    public function setName(var name){ let this->name = name; }
    private function generateName(){ return (this->name!="") ? " name='".this->name."'" : ""; }
    
    ////////////////////////////////////////////
    // Pattern
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getPattern(){ return this->pattern; }
    public function setPattern(var pattern){ let this->pattern = pattern; }
    private function generatePattern(){ return (this->pattern!="") ? " pattern='".this->pattern."'" : ""; }
    
    ////////////////////////////////////////////
    // Placeholder
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getPlaceholder(){ return this->placeholder; }
    public function setPlaceholder(var placeholder){ let this->placeholder = placeholder; }
    private function generatePlaceholder(){ return (this->placeholder!="") ? " placeholder='".this->placeholder."'" : ""; }
    
    ////////////////////////////////////////////
    // Readonly
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getReadonly(){ return this->readonly; }
    public function setReadonly(var readonly){ let this->readonly = readonly; }
    private function generateReadonly(){ return (this->readonly!="") ? " readonly='".this->readonly."'" : ""; }
    
    ////////////////////////////////////////////
    // Required
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getRequired(){ return this->required; }
    public function setRequired(var required){ let this->required = required; }
    private function generateRequired(){ return (this->required!="") ? " required='".this->required."'" : ""; }
    
    ////////////////////////////////////////////
    // Size
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSize(){ return this->size; }
    public function setSize(var size){ let this->size = size; }
    private function generateSize(){ return (this->size!="") ? " size='".this->size."'" : ""; }
    
    ////////////////////////////////////////////
    // Src
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSrc(){ return this->src; }
    public function setSrc(var src){ let this->src = src; }
    private function generateSrc(){ return (this->src!="") ? " src='".this->src."'" : ""; }
    
    ////////////////////////////////////////////
    // Step
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getStep(){ return this->step; }
    public function setStep(var step){ let this->step = step; }
    private function generateStep(){ return (this->step!="") ? " step='".this->step."'" : ""; }
    
    ////////////////////////////////////////////
    // Type
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getType(){ return this->type; }
    public function setTYpe(var type){ let this->type = type; }
    private function generateType(){ return (this->type!="") ? " type='".this->type."'" : ""; }
    
    ////////////////////////////////////////////
    // Value
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getValue(){ return this->value; }
    public function setValue(var value){ let this->value = value; }
    private function generateValue(){ return (this->value!="") ? " value='".this->value."'" : ""; }
    
    ////////////////////////////////////////////
    // Width
    //
    // The span attribute defines the number of columns a <colgroup> element should span.
    //
    // Syntax: <colgroup span="number"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getWidth(){ return this->width; }
    public function setWidth(var width){ let this->width = width; }
    private function generateWidth(){ return (this->width!="") ? " width='".this->width."'" : ""; }


    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <input>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        var attributes = generateAccept().generateAlt().generateAutocomplete().generateAutofocus().
                         generateChecked().generateDirname().generateDisabled().generateForm().
                         generateFormaction().generateFormenctype().generateFormmethod().
                         generateFormnovalidate().generateFormtarget().generateHeight().generateList().
                         generateMax().generateMaxlength().generateMin().generateMultiple().
                         generateName().generatePattern().generatePlaceholder().generateReadonly().
                         generateRequired().generateSize().generateSrc().generateStep().
                         this->generateType().generateValue().this->generateWidth();
                         
        return "<input ".attributes.parent::generateAttributes().">";
    }
}

