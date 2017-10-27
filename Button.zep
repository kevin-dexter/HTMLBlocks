namespace HtmlBlocks;

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Button
//
// 
//
// ex. <button type="button">Click Me!</button> 
//
// The <button> tag also supports the Global Attributes in HTML.
// The <button> tag also supports the Event Attributes in HTML.
/////////////////////////////////////////////////////////////////////////////////////////////////////
class Button extends Component{

    const TARGET_BLANK  = 1;
    const TARGET_SELF   = 2;
    const TARGET_PARENT = 3;
    const TARGET_TOP    = 4;

    const ENCODE_APPLICATION = 1;
    const ENCODE_MULTIPART   = 2;
    const ENCODE_PLAIN_TEXT  = 3;

    const METHOD_GET  = 1;
    const METHOD_POST = 2;

    const TYPE_BUTTON = 1;
    const TYPE_RESET  = 2;
    const TYPE_SUBMIT = 3;


    private autofocus = "";      // Specifies that a button should automatically get focus when the page loads.
    private disabled  = "";      // Specifies that a button should be disabled.
    private form = "";           // Specifies one or more forms the button belongs to.
    private formaction = "";     // Specifies where to send the form-data when a form is submitted. Only for type="submit".
    private formenctype = "";    // Specifies how form-data should be encoded before sending it to a server. Only for type="submit".
    private formmethod = "";     // Specifies how to send the form-data (which HTTP method to use). Only for type="submit".
    private formnovalidate = ""; // Specifies that the form-data should not be validated on submission. Only for type="submit".
    private formtarget = "";     // Specifies where to display the response after submitting the form. Only for type="submit".
    private name = "";           // Specifies a name for the button.
    private type = "";           // Specifies the type of button.
    private value = "";          // Specifies an initial value for the button.




    ////////////////////////////////////////////
    // __destruct
    //  
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function __destruct(){
        unset(this->autofocus);
        unset(this->disabled);
        unset(this->form);
        unset(this->formaction);
        unset(this->formenctype);
        unset(this->formmethod);
        unset(this->formnovalidate);
        unset(this->formtarget);
        unset(this->name);
        unset(this->type);
        unset(this->value);
        
        parent::__destruct();
    }

    ////////////////////////////////////////////
    // Autofocus
    //
    // The autofocus attribute is a boolean attribute.  When present, it specifies that a button
    // should automatically get focus when the page loads.
    //
    // Syntax:  <button type="button" autofocus>Click Me!</button> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAutofocus(){ return this->autofocus; }
    public function setAutofocus(){ let this->autofocus = "autofocus"; }
    private function generateAutofocus(){ return (this->autofocus!="") ? " this->autofocus" : ""; }

    ////////////////////////////////////////////
    // Disabled
    //
    // The disabled attribute is a boolean attribute.  When present, it specifies that the button
    // should be disabled.  A disabled button is unusable and un-clickable.  The disabled attribute
    // can be set to keep a user from clicking on the button until some other condition has been met
    // (like selecting a checkbox, etc.). Then, a JavaScript could remove the disabled value, and make
    // the button usable.
    //
    // Syntax:  <button type="button" disabled>Click Me!</button> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDisabled(){ return this->disabled; }
    public function setDisabled(){ let this->disabled = "disabled"; }
    private function generateDisabled(){ return (this->disabled!="") ? " this->disabled" : ""; }

    ////////////////////////////////////////////
    // Form
    //
    // The form attribute specifies one or more forms the button belongs to.
    //
    // Syntax: <form action="/action_page.php" method="get" id="form1">
    //             First name: <input type="text" name="fname"><br>
    //             Last name: <input type="text" name="lname"><br>
    //         </form>
    //
    //         <button type="submit" form="form1" value="Submit">Submit</button> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getForm(){ return this->form; }
    public function setForm(string form){ let this->form = form; }
    private function generateForm(){ return (this->form!="") ? " form='".this->form."'" : ""; }

    ////////////////////////////////////////////
    // FormAction
    //
    // The formaction attribute specifies where to send the form-data when a form is submitted.  This
    // attribute overrides the form's action attribute.  The formaction attribute is only used for
    // buttons with type="submit".
    //
    // Syntax: <button type="submit" formaction="URL">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormAction(){ return this->formaction; }
    public function setFormAction(string formaction){ let this->formaction = formaction; }
    private function generateFormAction(){ return (this->formaction!="") ? " formaction='".this->formaction."'" : ""; }

    ////////////////////////////////////////////
    // FormEncodeType
    //
    // The formenctype attribute specifies how form-data should be encoded before sending it to a
    // server. This attribute overrides the form's enctype attribute.  The formenctype attribute
    // is only used for buttons with type="submit".
    //
    // Syntax: <button type="submit" formenctype="value">
    //
    //         application/x-www-form-urlencoded    Default. All characters will be encoded before sent.
    //         multipart/form-data                  No characters are encoded (use this when you are
    //                                              using forms that have a file upload control).
    //         text/plain                           Spaces are converted to "+" symbols, but no
    //                                              characters are encoded.
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormEncodeType(){ return this->formenctype; }
    public function setFormEncodeType(var formenctype){
        switch(formenctype){
            case Button::ENCODE_APPLICATION:
                let this->formenctype = "application/x-www-form-urlencoded";
                break;
            case Button::ENCODE_MULTIPART:
                let this->formenctype = "multipart/form-data";
                break;
            case Button::ENCODE_PLAIN_TEXT:
                let this->formenctype = "text/plain";
                break;
            default:
                let this->formenctype = formenctype;
                break;
        }
    }
    private function generateFormEncodeType(){ return (this->formenctype!="") ? " formenctype='".this->formenctype."'" : ""; }

    ////////////////////////////////////////////
    // FormMethod
    //
    // The formmethod attribute specifies which HTTP method to use when sending the form-data. This
    // attribute overrides the form's method attribute.  The formmethod attribute is only used for
    // buttons with type="submit".  The form-data can be sent as URL variables (with method="get")
    // or as HTTP post (with method="post").
    //
    // Notes on the "get" method:
    //     it appends the form-data to the URL in name/value pairs
    //     it is useful for form submissions where a user want to bookmark the result
    //     There is a limit to how much data you can place in a URL (varies between browsers),
    //         therefore, you cannot be sure that all of the form-data will be correctly transferred
    //     Never use the "get" method to pass sensitive information! (password or other sensitive
    //         information will be visible in the browser's address bar)
    //
    // Notes on the "post" method:
    //     it sends the form-data as an HTTP post transaction
    //     Form submissions with the "post" method cannot be bookmarked
    //     it is more robust and secure than "get"
    //     it does not have size limitations
    //
    // Syntax: <button type="submit" formmethod="get|post">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormMethod(){ return this->formmethod; }
    public function setFormMethod(var formmethod){
        switch(formmethod){
            case Button::METHOD_GET:
                let this->formmethod = "get";
                break;
            case Button::METHOD_POST:
                let this->formmethod = "post";
                break;
            default:
                let this->formmethod = formmethod;
                break;
        }
    }
    private function generateFormMethod(){ return (this->formmethod!="") ? " formmethod='".this->formmethod."'" : ""; }

    ////////////////////////////////////////////
    // FormNoValidate
    //
    // The formnovalidate attribute is a boolean attribute.  When present, it specifies that the
    // form-data should not be validated on submission. This attribute overrides the form's novalidate
    // attribute.  The formnovalidate attribute is only used for buttons with type="submit".
    //
    // Syntax: <button type="submit" formnovalidate>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormNoValidate(){ return this->formnovalidate; }
    public function setFormNoValidate(){ let this->formnovalidate = "formnovalidate"; }
    private function generateFormNoValidate(){ return (this->formnovalidate!="") ? " ".this->formnovalidate : ""; }

    ////////////////////////////////////////////
    // FormTarget
    //
    // The formtarget attribute specifies where to display the response after submitting the form.
    // This attribute overrides the form's target attribute.  The formtarget attribute is only used
    // for buttons with type="submit".
    //
    // Syntax: <button type="submit" formtarget="_blank|_self|_parent|_top|framename">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getFormTarget(){ return this->formtarget; }
    public function setFormTarget(var formtarget){
        switch(formtarget){
            case Button::TARGET_BLANK:
                let this->formtarget = "_blank";
                break;
            case Button::TARGET_SELF:
                let this->formtarget = "_self";
                break;
            case Button::TARGET_PARENT:
                let this->formtarget = "_parent";
                break;
            case Button::TARGET_TOP:
                let this->formtarget = "_top";
                break;
            default:
                let this->formtarget = formtarget;
                break;
        }
    }
    private function generateFormTarget(){ return (this->formtarget!="") ? " formtarget='".this->formtarget."'" : ""; }

    ////////////////////////////////////////////
    // Name
    //
    // The name attribute specifies the name for a <button> element.  The name attribute is used to
    // reference form-data after the form has been submitted, or to reference the element in a JavaScript.
    // Several <button> elements can share the same name. This allows you to have several buttons with
    // equal names, which can submit different values when used in a form.
    //
    // Syntax: <button name="name">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getName(){ return this->name; }
    public function setName(string name){ let this->name = name; }
    private function generateName(){ return (this->name!="") ? " name='".this->name."'" : ""; }

    ////////////////////////////////////////////
    // Type
    //
    // The type attribute specifies the type of button.  Always specify the type attribute for the
    // <button> element. Different browsers may use different default types for the <button> element.
    //
    // Syntax: <button type="button|submit|reset">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getType(){ return this->type; }
    public function setType(var type){
        switch(type){
            case Button::TYPE_BUTTON:
                let this->type = "button";
                break;
            case Button::TYPE_SUBMIT:
                let this->type = "submit";
                break;
            case Button::TYPE_RESET:
                let this->type = "reset";
                break;
            default:
                let this->type = type;
                break;
        }
    }
    private function generateType(){ return (this->type!="") ? " type='".this->type."'" : ""; }

    ////////////////////////////////////////////
    // Value
    //
    // The value attribute specifies the initial value for a <button> in a <form>.  In a form, the
    // button and its value is only submitted if the button itself was used to submit the form.
    //
    // Syntax: <button value="value">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getValue(){ return this->value; }
    public function setValue(string value){ let this->value = value; }
    private function generateValue(){ return (this->value!="") ? " value='".this->value."'" : ""; }

    ////////////////////////////////////////////
    // generate
    //
    // Generate component as a string.
    //
    // Syntax: <header></header>
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function generate(){
        string attributes = this->generateAutofocus().this->generateDisabled().this->generateForm().
                            this->generateFormAction().this->generateFormEncodeType().
                            this->generateFormMethod().this->generateFormNoValidate().
                            this->generateFormTarget().this->generateName().this->generateType().
                            this->generateValue();
        return "<button ".attributes.parent::generateAttributes().">".parent::generateComponents()."</button>";
    }
}

