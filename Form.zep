namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Form
//
// The <form> tag is used to create an HTML form for user input.  The <form> element can contain one
// or more of the following form elements:
//    <input>
//    <textarea>
//    <button>
//    <select>
//    <option>
//    <optgroup>
//    <fieldset>
//    <label>
//
//
// ex. <form action="/action_page.php" method="get">
//         First name: <input type="text" name="fname"><br>
//         Last name: <input type="text" name="lname"><br>
//         <input type="submit" value="Submit">
//     </form> 
//
// The <form> tag also supports the Global Attributes in HTML.
// The <form> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Form extends Component{

    const TARGET_BLANK  = 1;
    const TARGET_SELF   = 2;
    const TARGET_PARENT = 3;
    const TARGET_TOP    = 4;

    const METHOD_GET  = 1;
    const METHOD_POST = 2;

    const ENCODE_APPLICATION = 1;
    const ENCODE_MULTIPART   = 2;
    const ENCODE_PLAIN_TEXT  = 3;

    const AUTOCOMPLETE_ON  = 1;
    const AUTOCOMPLETE_OFF = 2;

    private accept_charset;  // Specifies the character encodings that are to be used for the form submission.
    private action;          // Specifies where to send the form-data when a form is submitted.
    private autocomplete;    // Specifies whether a form should have autocomplete on or off.
    private enctype;         // Specifies how the form-data should be encoded when submitting it to the server (only for method="post").
    private method;          // Specifies the HTTP method to use when sending form-data [get|post]
    private name;            // Specifies the name of a form.
    private novalidate;      // Specifies that the form should not be validated when submitted.
    private target;          // Specifies where to display the response that is received after submitting the form.


    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->accept_charset);
        unset(this->action);
        unset(this->autocomplete);
        unset(this->enctype);
        unset(this->method);
        unset(this->name);
        unset(this->novalidate);
        unset(this->target);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // AcceptCharset
    //
    // The accept-charset attribute specifies the character encodings that are to be used for the
    // form submission.  The default value is the reserved string "UNKNOWN" (indicates that the
    // encoding equals the encoding of the document containing the <form> element).
    //
    // Syntax: <form accept-charset="character_set">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAcceptCharset(){ return this->accept_charset; }
    public function setAcceptCharset(string accept_charset){ let this->accept_charset = accept_charset; }
    private function generateAcceptCharset(){ return (this->accept_charset!="") ? " accept-charset='".this->accept_charset."'" : ""; }

    ////////////////////////////////////////////
    // Action
    //
    // The action attribute specifies where to send the form-data when a form is submitted.
    //
    // Syntax: <form action="URL">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAction(){ return this->action; }
    public function setAction(string action){ let this->action = action; }
    private function generateAction(){ return (this->action!="") ? " action='".this->action."'" : ""; }

    ////////////////////////////////////////////
    // Autocomplete
    //
    // The autocomplete attribute specifies whether a form should have autocomplete on or off.  When
    // autocomplete is on, the browser automatically complete values based on values that the user has
    // entered before.  It is possible to have autocomplete "on" for the form, and "off" for specific
    // input fields, or vice versa.
    //
    // Syntax: <form autocomplete="on|off">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAutocomplete(){ return this->autocomplete; }
    public function setAutocomplete(var autocomplete){
        switch(autocomplete){
            case Form::AUTOCOMPLETE_ON:
                let this->autocomplete = "on";
                break;
            case Form::AUTOCOMPLETE_OFF:
                let this->autocomplete = "off";
                break;
            default:
                let this->autocomplete = autocomplete;
                break;
        }
    }
    private function generateAutocomplete(){ return (this->autocomplete!="") ? " autocomplete='".this->autocomplete."'" : ""; }

    ////////////////////////////////////////////
    // Enctype
    //
    // The enctype attribute specifies how the form-data should be encoded when submitting it to the
    // server.  The enctype attribute can be used only if method="post".
    //
    // Syntax: <form enctype="value">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getEnctype(){ return this->enctype; }
    public function setEnctype(var enctype){
        switch(enctype){
            case Form::ENCODE_APPLICATION:
                let this->enctype = "application/x-www-form-urlencoded";
                break;
            case Form::ENCODE_MULTIPART:
                let this->enctype = "multipart/form-data";
                break;
            case Form::ENCODE_PLAIN_TEXT:
                let this->enctype = "text/plain";
                break;
            default:
                let this->enctype = enctype;
                break;
        }
    }
    private function generateEnctype(){ return (this->enctype!="") ? " enctype='".this->enctype."'" : ""; }

    ////////////////////////////////////////////
    // Method
    //
    // The method attribute specifies how to send form-data (the form-data is sent to the page
    // specified in the action attribute).  The form-data can be sent as URL variables (with method
    // ="get") or as HTTP post transaction (with method="post").
    //
    // Syntax: <form method="get|post">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMethod(){ return this->method; }
    public function setMethod(var method){
        switch(method){
            case Form::METHOD_POST:
                let this->method = "post";
                break;
            case Form::METHOD_GET:
                let this->method = "get";
            default:
                let this->method = method;
                break;
        }
    }
    private function generateMethod(){ return (this->method!="") ? " method='".this->method."'" : ""; }

    ////////////////////////////////////////////
    // Name
    //
    // The name attribute specifies the name of a form.  The name attribute is used to reference
    // elements in a JavaScript, or to reference form data after a form is submitted.
    //
    // Syntax: <form name="text"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getName(){ return this->name; }
    public function setName(string name){ let this->name = name; }
    private function generateName(){ return (this->name!="") ? " name='".this->name."'" : ""; }

    ////////////////////////////////////////////
    // Novalidate
    //
    // The novalidate attribute is a boolean attribute.  When present, it specifies that the form-data
    // (input) should not be validated when submitted.
    //
    // Syntax: <form novalidate>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getNovalidate(){ return this->novalidate; }
    public function setNovalidate(){ let this->novalidate = "novalidate"; }
    private function generateNovalidate(){ return (this->novalidate!="") ? this->novalidate : ""; }

    ////////////////////////////////////////////
    // Target
    //
    // The target attribute specifies a name or a keyword that indicates where to display the response
    // that is received after submitting the form.  The target attribute defines a name of, or keyword
    // for, a browsing context (e.g. tab, window, or inline frame).
    //
    // Syntax: <form target="_blank|_self|_parent|_top|framename">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getTarget(){ return this->target; }
    public function setTarget(var target){
        switch(target){
            case Form::TARGET_BLANK:
                let this->target = "_blank";
                break;
            case Form::TARGET_SELF:
                let this->target = "_self";
                break;
            case Form::TARGET_PARENT:
                let this->target = "_parent";
                break;
            case Form::TARGET_TOP:
                let this->target = "_top";
                break;
            default:
                let this->target = target;
                break;
        }
    }
    private function generateTarget(){ return (this->target!="") ? " span='".this->target."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <cite></cite>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateAcceptCharset().this->generateAction().this->generateAutocomplete().
                         this->generateEnctype().this->generateMethod().this->generateName().
                         this->generateNovalidate().this->generateTarget();
        return "<form ".attributes.parent::generateAttributes().">".parent::generateComponents()."</form>";
    }
}

