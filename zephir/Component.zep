namespace HtmlBlocks;


//
// STATUS : Incomplete.

class Component{
    const SIZE_LARGE   = 0;
    const SIZE_DEFAULT = 1;
    const SIZE_SMALL   = 2;
    const SIZE_XSMALL  = 3;

    public style = null;
    private classes = [];
    private data_xxxx = [];
    private aria_xxxx = [];
    private class_parameters = [];
    private components = "";

    public function __construct(string component_id="", string component_class=""){
        this->setId(component_id);
        this->setClass(component_class);
        let this->style = new Style();
    }

    public function __destruct(){
        unset(this->classes);
        unset(this->data_xxxx);
        unset(this->style);
        unset(this->aria_xxxx);
        unset(this->class_parameters);
        unset(this->components);
    }


    ////////////////////////////////////////////
    // addComponent
    // 
    // Adds a component to this component
    // Note: Forms cannot contain other Form objects.
    //
    // param Component component
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function addComponent(var component){
        if(!is_array(component)){
            if(component instanceof Component){ let this->components.=component->generate(); }
            else{ let this->components.=component; }
        }
        else{
            var cp = null;
            for cp in component{
                if(cp instanceof Component){ let this->components.=cp->generate(); }
                else{ let this->components.=cp; }
            }
        }
    }

    ////////////////////////////////////////////
    // clearComponents
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function clearComponents(){ let this->components = ""; }
    public function getComponents(){ return this->components; }

    ////////////////////////////////////////////
    // Class Parameters
    /////////////////////////////////////////////////////////////////////////////////////////////////
    private function getClassParameter(parameter){ return this->class_parameters[parameter]; }
    private function setClassParameter(parameter, value){ let this->class_parameters[parameter] = value; }



    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    // HTML Global Attributes
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // Access Key
    //
    // [User Defined].
    // Specifies a keyboard shortcut to access an element.
    //
    // Syntax: <element accesskey="character">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getAccessKey(){ return this->getClassParameter("accesskey"); }
    public function setAccesskey(string accesskey){ this->setClassParameter("accesskey", accesskey); }
    private function generateAccessKey(){ return (this->getAccessKey()!="") ? "accesskey='".this->getAccessKey()."'" : ""; }

    ////////////////////////////////////////////
    // Style Class(es)
    //
    // [User Defined].
    // The class attribute specifies one or more classnames for an element.
    // The class attribute is mostly used to point to a class in a style sheet. However, it can also
    // be used by a JavaScript (via the HTML DOM) to make changes to HTML elements with a specified
    // class.
    //
    // Syntax: <element class="classname"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getClass(){ return this->classes; }
    public function setClass(string element_class){ let this->classes .= element_class; }

    ////////////////////////////////////////////
    // Content Editable
    //
    // [true, false].
    // Specifies if the user can edit the element's content or not.
    // Syntax: <element contenteditable="true|false">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getContenteditable(){ return this->getClassParameter("contenteditable"); }
    public function setContenteditable(string contenteditable){ this->setClassParameter("contenteditable", contenteditable); }
    private function generateContenteditable(){ return (this->getContenteditable()!="") ? " contenteditable:'".this->getContenteditable()."'" : ""; }

    ////////////////////////////////////////////
    // Context Menu
    //
    // [Menu id].
    // Specifies the context menu for an element.
    // Syntax: <element contextmenu="menu_id">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getContextmenu(){ return this->getClassParameter("contextmenu"); }
    public function setContextmenu(string contextmenu){ $this->setClassParameter("contextmenu", contextmenu); }
    private function generateContextMenu(){ return (this->getContextmenu()!="") ? " contextmenu:'".this->getContextmenu()."'" : ""; }

    ////////////////////////////////////////////
    // Data Class(es)
    //
    // [User Defined].
    // The data-* attributes is used to store custom data private to the page or application. The
    // data-* attributes gives us the ability to embed custom data attributes on all HTML elements.
    // The stored (custom) data can then be used in the page's JavaScript to create a more engaging
    // user experience (without any Ajax calls or server-side database queries).
    //
    // Syntax: <element data-*="somevalue">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getDataClass(){ return this->data_xxxx; }
    //public function setDataClass($key, $value){
    //    $this->data_xxxx["data-$key"] = $value;
    //}

    ////////////////////////////////////////////
    // Text or Paragraph Direction
    //
    // [ltr | rtl | auto].
    // The dir attribute specifies the text direction of the element's content.
    //
    // Syntax: <element dir="ltr|rtl|auto"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDirection(){ return this->getClassParameter("dir"); }
    public function setDirection(string direction){ this->setClassParameter("dir", direction); }
    private function generateDirection(){ return (this->getDirection()!="") ? " dir='".this->getDirection()."'" : ""; }

    ////////////////////////////////////////////
    // Aria Class(es)
    //
    // [User Defined].
    // The data-* attributes is used to store custom data private to the page or application. The
    // data-* attributes gives us the ability to embed custom data attributes on all HTML elements.
    // The stored (custom) data can then be used in the page's JavaScript to create a more engaging
    // user experience (without any Ajax calls or server-side database queries).
    //
    // Syntax: <element data-*="somevalue">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getAriaClass(){
    //    if(isset($this->aria_xxxx)) return $this->aria_xxxx;
    //    else return;
    //}

    //public function setAriaClass($key, $value){
    //    $this->aria_xxxx["aria-$key"] = $value;
    //}

    ////////////////////////////////////////////
    // Dragable
    //
    // [true,false, auto].
    // Specifies whether or not a user is allowed to drag an element.
    //
    // Syntax: <element draggable="true|false|auto">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDraggable(){ return this->getClassParameter("draggable"); }
    public function setDraggable(string draggable){ this->setClassParameter("draggable", draggable); }
    private function generateDraggable(){ return (this->getDraggable()!="") ? " draggable='".this->getDraggable()."'" : ""; }

    ////////////////////////////////////////////
    // Dropzone
    //
    // Specifies whether the dragged data is copied, moved, or linked, when dropped
    //
    // Syntax: <element dropzone="copy|move|link">
    //         copy: Dropping the data will result in a copy of the dragged data.
    //         move: Dropping the data will result in that the dragged data is moved to the new location.
    //         link: Dropping the data will result in a link to the original data.
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getDropzone(){ return this->getClassParameter("dropzone"); }
    public function setDropzone(string dropzone){ this->setClassParameter("dropzone", dropzone); }
    private function generateDropzone(){ return (this->getDropzone()!="") ? " dropzone='".this->getDropzone()."'" : ""; }

    ////////////////////////////////////////////
    // Hidden
    //
    // Specifies a unique id for an element
    //
    // Syntax: <element id="id">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getHidden(){ return this->getClassParameter("hidden"); }
    public function setHidden(string hidden){ this->setClassParameter("hidden", hidden); }
    private function generateHidden(){ return (this->getHidden()==true) ? " hidden" : ""; }

    ////////////////////////////////////////////
    // Id
    //
    // Specifies a unique id for an element
    //
    // Syntax: <element id="id">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getId(){ return this->getClassParameter("id"); }
    public function setId(string id){ $this->setClassParameter("id", id); }
    private function generateId(){ return (this->getId()!="") ? " id='".this->getId()."'" : ""; }

    ////////////////////////////////////////////
    // Language
    // 
    // Specifies the language of the element's content
    //
    // Syntax: <element lang="language_code">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getLanguage(){ return this->getClassParameter("lang"); }
    public function setLanguage(string language){ this->setClassParameter("lang", language); }
    private function generateLanguage(){ return (this->getLanguage()!="") ? " lang='".this->getLanguage()."'" : ""; }

    ////////////////////////////////////////////
    // Spellcheck
    //
    // Specifies if the element must have it's spelling or grammar checked.
    //
    // Syntax: <element spellcheck="true|false">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getSpellcheck(){ return this->getClassParameter("spellcheck"); }
    public function setSpellcheck(string spellcheck){ this->setClassParameter("spellcheck", spellcheck); }
    private function generateSpellcheck(){ return (this->getSpellcheck()!="") ? " spellcheck='".this->getSpellcheck()."'" : ""; }

    ////////////////////////////////////////////
    // Style 
    //
    // Specifies an inline CSS style for an element
    //
    // Syntax: <element style="style_definitions">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getStyle(){ return this->style; }
    public function setStyle(<Style> style){ let this->style=style; }

    ////////////////////////////////////////////
    // Tab Index 
    //
    // Specifies the tabbing order of an element.
    //
    // Syntax: <element tabindex="number">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getTabindex(){ return this->getClassParameter("tabindex"); }
    public function setTabindex(int index){ $this->setClassParameter("tabindex", index); }
    private function generateTabindex(){ return (this->getTabindex()!="") ? " tabindex='".this->getTabindex()."'" : ""; }

    ////////////////////////////////////////////
    // Title
    //
    // Specifies extra information about an element
    //
    // Syntax: <element title="text"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getTitle(){ return this->getClassParameter("title"); }
    public function setTitle(string title){ this->setClassParameter("title", title); }
    private function generateTitle(){ return (this->getTitle()!="") ? " title='".this->getTitle()."'" : ""; }

    ////////////////////////////////////////////
    // Translate
    //
    // Specifies whether the content of an element should be translated or not.
    //
    // Syntax: <element translate="yes|no">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getTranslate(){ return this->getClassParameter("transalte"); }
    public function setTranslate(string translate){ this->setClassParameter("translate", translate); }
    private function generateTranslate(){ return (this->getTranslate()!="") ? " translate='".this->getTranslate()."'" : ""; }



    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    // HTML Global Event Attributes
    /////////////////////////////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////

    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Drag Events
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // On Drag
    //
    // Script to be run when an element is dragged
    //
    // Syntax: <element ondrag="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnDrag(){ return this->getClassParameter("ondrag"); }
    public function setOnDrag(string ondrag){ this->setClassParameter("ondrag", ondrag); }
    private function generateOnDrag(){ return (this->getOnDrag()!="") ? " ondrag='".this->getOnDrag()."'" : ""; }

    ////////////////////////////////////////////
    // On Drag End
    //
    // Script to be run at the end of a drag operation.
    //
    // Syntax: <element ondragend="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnDragEnd(){ return this->getClassParameter("ondragend"); }
    public function setOnDragEnd(string ondrag_end){ this->setClassParameter("ondragend", ondrag_end); }
    private function generateOnDragEnd(){ return (this->getOnDragEnd()!="") ? " ondragend='".this->getOnDragEnd()."'" : ""; }

    ////////////////////////////////////////////
    // On Drag Enter
    //
    // Script to be run when an element has been dragged to a valid drop target.
    //
    // Syntax: <element ondragenter="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnDragEnter(){ return this->getClassParameter("ondragenter"); }
    public function setOnDragEnter(string ondrag_enter){ this->setClassParameter("ondragenter", ondrag_enter); }
    private function generateOnDragEnter(){ return (this->getOnDragEnter()!="") ? " ondragenter='".this->getOnDragEnter()."'" : ""; }

    ////////////////////////////////////////////
    // On Drag Leave
    //
    // Script to be run when an element leaves a valid drop target.
    //
    // Syntax: <element ondragleave="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnDragLeave(){ return this->getClassParameter("ondragleave"); }
    public function setOnDragLeave(string ondrag_leave){ this->setClassParameter("ondragleave", ondrag_leave); }
    private function generateOnDragLeave(){ return (this->getOnDragEnter()!="") ? " ondragleave='".this->getOnDragLeave()."'" : ""; }

    ////////////////////////////////////////////
    // On Drag Over
    //
    // Script to be run when an element is being dragged over a valid drop target.
    //
    // Syntax: <element ondragover="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnDragOver(){ return this->getClassParameter("ondragover"); }
    public function setOnDragOver(string ondrag_over){ this->setClassParameter("ondragover", ondrag_over); }
    private function generateOnDragOver(){ return (this->getOnDragOver()!="") ? " ondragover='".this->getOnDragOver()."'" : ""; }

    ////////////////////////////////////////////
    // On Drag Start
    //
    // Script to be run at the start of a drag operation.
    //
    // Syntax: <element ondragstart="script"> 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnDragStart(){ return this->getClassParameter("ondragstart"); }
    public function setOnDragStart(string ondrag_start){ this->setClassParameter("ondragstart", ondrag_start); }
    private function generateOnDragStart(){ return (this->getOnDragStart()!="") ? " ondragstart='".this->getOnDragStart()."'" : ""; }

    ////////////////////////////////////////////
    // On Drop
    //
    // Script to be run when dragged element is being dropped.
    //
    // Syntax: <element ondrop="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnDrop(){ return this->getClassParameter("ondrop"); }
    public function setOnDrop(string ondrop){ this->setClassParameter("ondrop", ondrop); }
    private function generateOnDrop(){ return (this->getOnDrop()!="") ? " ondrop='".this->getOnDrop()."'" : ""; }

    ////////////////////////////////////////////
    // On Scroll
    //
    // Script to be run when an element's scrollbar is being scrolled.
    //
    // Syntax: <element onscroll="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnScroll(){ return this->getClassParameter("onscroll"); }
    public function setOnScroll(string on_scroll){ this->setClassParameter("onscroll", on_scroll); }
    private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }




    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Window Events
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // On After Print
    //
    // Script to be run after the document is printed.
    //
    // Syntax: <element onafterprint="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnAfterPrint(){ return this->getClassParameter("onafterprint"); }
    public function setOnAfterPrint(string on_after_print){ this->setClassParameter("onafterprint", on_after_print); }
    private function generateOnAfterPrint(){ return (this->getOnAfterPrint()!="") ? " onafterprint='".this->getOnAfterPrint()."'" : ""; }

    ////////////////////////////////////////////
    // On Before Print
    //
    // Script to be run before the document is printed.
    //
    // Syntax: <element onbeforeprint="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnBeforePrint(){ return this->getClassParameter("onbeforeprint"); }
    public function setOnBeforePrint(string on_before_print){ this->setClassParameter("onbeforeprint", on_before_print); }
    private function generateOnBeforePrint(){ return (this->getOnBeforePrint()!="") ? " onscroll='".this->getOnBeforePrint()."'" : ""; }

    ////////////////////////////////////////////
    // On Before Unload
    //
    // Script to be run when the document is about to be unloaded
    //
    // Syntax: <element onbeforeunload="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnBeforeUnload(){ return this->getClassParameter("onbeforeunload"); }
    public function setOnBeforeUnload(string on_before_unload){ this->setClassParameter("onbeforeunload", on_before_unload); }
    private function generateOnBeforeUnload(){ return (this->getOnBeforeUnload()!="") ? " onbeforeunload='".this->getOnBeforeUnload()."'" : ""; }

    ////////////////////////////////////////////
    // On Error
    //
    // Script to be run when an error occurs.
    //
    // Syntax: <element onerror="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnError(){ return this->getClassParameter("onerror"); }
    public function setOnError(string on_error){ this->setClassParameter("onerror", on_error); }
    private function generateOnError(){ return (this->getOnError()!="") ? " onerror='".this->getOnError()."'" : ""; }

    ////////////////////////////////////////////
    // On Hash Change
    //
    // Script to be run when there has been changes to the anchor part of the a URL
    //
    // Syntax: <element onhashchange="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnHashChange(){ return this->getClassParameter("onhashchange"); }
    public function setOnHashChange(string on_hash_change){ this->setClassParameter("onhashchange", on_hash_change); }
    private function generateOnHashChange(){ return (this->getOnHashChange()!="") ? " onhashchange='".this->getOnHashChange()."'" : ""; }

    ////////////////////////////////////////////
    // On Load
    //
    // Fires after the page is finished loading.
    //
    // Syntax: <element onload="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnLoad(){ return this->getClassParameter("onload"); }
    public function setOnLoad(string onload){ this->setClassParameter("onload", onload); }
    private function generateOnLoad(){ return (this->getOnLoad()!="") ? " onload='".this->getOnLoad()."'" : ""; }

    ////////////////////////////////////////////
    // On Message
    //
    // Script to be run when the message is triggered.
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnMessage(){ return this->getClassParameter("onmessage"); }
    //public function setOnMessage(string on_message){ this->setClassParameter("onmessage", on_message); }
    //private function generateOnMessage(){ return (this->getOnMessage()!="") ? " onscroll='".this->getOnMessage()."'" : ""; }

    ////////////////////////////////////////////
    // On Offline
    //
    // Script to be run when the browser starts to work offline.
    //
    // Syntax: <element onoffline="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnOffline(){ return this->getClassParameter("onoffline"); }
    public function setOnOffline(string on_offline){ this->setClassParameter("onoffline", on_offline); }
    private function generateOnOffline(){ return (this->getOnOffline()!="") ? " onscroll='".this->getOnOffline()."'" : ""; }

    ////////////////////////////////////////////
    // On Online
    //
    // Script to be run when the browser starts to work online.
    //
    // Syntax: <element ononline="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnOnline(){ return this->getClassParameter("ononline"); }
    public function setOnOnline(string on_online){ this->setClassParameter("ononline", on_online); }
    private function generateOnOnline(){ return (this->getOnOnline()!="") ? " onscroll='".this->getOnOnline()."'" : ""; }

    ////////////////////////////////////////////
    // On Page Hide
    //
    // Script to be run when a user navigates away from a page.
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnPageHide(){ return this->getClassParameter("onpagehide"); }
    //public function setOnPageHide(string on_page_hide){ this->setClassParameter("onpagehide", on_page_hide); }
    //private function generateOnPageHide(){ return (this->getOnPageHide()!="") ? " onpagehide'".this->getOnPageHide()."'" : ""; }

    ////////////////////////////////////////////
    // On Page Show
    //
    // Script to be run when a user navigates to a page.
    //
    // Syntax: <element onpageshow="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnPageShow(){ return this->getClassParameter("onpageshow"); }
    public function setOnPageShow(string on_page_show){ this->setClassParameter("onpageshow", on_page_show); }
    private function generateOnPageShow(){ return (this->getOnPageShow()!="") ? " onscroll='".this->getOnPageShow()."'" : ""; }

    ////////////////////////////////////////////
    // On Pop State
    //
    // Script to be run when the window's history changes.
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Resize
    //
    // Fires when the browser window is resized.
    //
    // Syntax: <element onresize="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnResize(){ return this->getClassParameter("onresize"); }
    public function setOnResize(string on_resize){ this->setClassParameter("onresize", on_resize); }
    private function generateOnResize(){ return (this->getOnResize()!="") ? " onresize='".this->getOnResize()."'" : ""; }

    ////////////////////////////////////////////
    // On Storage
    //
    // Script to be run when a Web Storage area is updated.
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Unload
    //
    // Fires once a page has unloaded (or the browser window has been closed).
    //
    // Syntax: <element onunload="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnUnload(){ return this->getClassParameter("onunload"); }
    public function setOnUnload(string on_unload){ this->setClassParameter("onunload", on_unload); }
    private function generateOnUnload(){ return (this->getOnUnload()!="") ? " onunload='".this->getOnUnload()."'" : ""; }



    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Form Events
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // On Blur
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Change
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Context Menu
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Focus
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Input
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Invalid
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Reset
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Search
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Select
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Submit
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }


    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Keyboard Events
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // On Key Down
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Key Press
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Key Up
    //
    // 
    // 
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }


    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Mouse Events
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // On Click
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnclick(){ return this->getClassParameter("onclick"); }
    public function setOnclick(string on_click){ this->setClassParameter("onclick", on_click); }
    private function generateOnclick(){ return (this->getOnclick()!="") ? " onclick='".this->getOnclick()."'" : ""; }

    ////////////////////////////////////////////
    // On Double Click
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Mouse Down
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Mouse Move
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }


    ////////////////////////////////////////////
    // On Mouse Out
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMouseout(){ return this->getClassParameter("onmouseout"); }
    public function setMouseout(string mouseout){ this->setClassParameter("onmouseout", mouseout); }
    private function generateMouseout(){ return (this->getMouseout()!="") ? " onmouseout='".this->getMouseout()."'" : ""; }

    ////////////////////////////////////////////
    // On Mouse Over
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getMouseover(){ return this->getClassParameter("onmouseover"); }
    public function setMouseover(string on_mouse_over){ this->setClassParameter("onmouseover", on_mouse_over); }
    private function generateMouseover(){ return (this->getMouseover()!="") ? " onmouseover='".this->getMouseover()."'" : ""; }

    ////////////////////////////////////////////
    // On Mouse Up
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }

    ////////////////////////////////////////////
    // On Wheel
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnScroll(){ return this->getClassParameter("ondragover"); }
    //public function setOnScroll(string on_scroll){ this->setClassParameter("ondragover", on_scroll); }
    //private function generateOnScroll(){ return (this->getOnScroll()!="") ? " onscroll='".this->getOnScroll()."'" : ""; }



    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Clipboard Events
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // On Copy
    //
    // Fires when the user copies the content of an element.
    //
    // Syntax: <element oncopy="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnCopy(){ return this->getClassParameter("oncopy"); }
    public function setOnCopy(string on_copy){ this->setClassParameter("oncopy", on_copy); }
    private function generateOnCopy(){ return (this->getOnCopy()!="") ? " onscroll='".this->getOnCopy()."'" : ""; }

    ////////////////////////////////////////////
    // On Cut
    //
    // Fires when the user cuts the content of an element.
    //
    // Syntax: <element oncut="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnCut(){ return this->getClassParameter("oncut"); }
    public function setOnCut(string on_cut){ this->setClassParameter("oncut", on_cut); }
    private function generateOnCut(){ return (this->getOnCut()!="") ? " onscroll='".this->getOnCut()."'" : ""; }

    ////////////////////////////////////////////
    // On Paste
    //
    // Fires when the user pastes some content in an element.
    //
    // Syntax: <element onpaste="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnPaste(){ return this->getClassParameter("onpaste"); }
    public function setOnPaste(string on_paste){ this->setClassParameter("onpaste", on_paste); }
    private function generateOnPaste(){ return (this->getOnPaste()!="") ? " onpaste='".this->getOnPaste()."'" : ""; }


    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Media Events
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // On Abort
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //private function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Can Play
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Can Play Through
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Cue Change
    //
    // 
    //
    // Syntax: 
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Duration Change
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Emptied
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Ended
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Error
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Loaded Data
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Loaded Metadata
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Load Start
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Pause
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Play
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Playing
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Progress
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Rate Change
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Seeked
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Seeking
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Stalled
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Suspend
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Time Update
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    ////////////////////////////////////////////
    // On Volume Change
    //
    //
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}


    ////////////////////////////////////////////
    // On Waiting
    //
    // Script to be run when the media has paused but is expected to resume (like when the media
    // pauses to buffer more data).
    //
    // Syntax:
    /////////////////////////////////////////////////////////////////////////////////////////////////
    //public function getOnDrag(){ return this->getClassParameter('ondrag'); }
    //public function setOnDrag(string ondrag){ this->setClassParameter('ondrag', ondrag); }
    //public function generateOnDrag(){
    //    if(this->getOnDrag()!=""){ return " ondragenter='".this->getOnDrag()."'"; }
    //    else{ return ""; }
    //}

    /////////////////////////////////////////////////////////////////////////////////////////////////
    // Misc Events
    /////////////////////////////////////////////////////////////////////////////////////////////////

    ////////////////////////////////////////////
    // On Show
    //
    // Fires when a <menu> element is shown as a context menu.
    //
    // Syntax: <element onshow="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnShow(){ return this->getClassParameter("onshow"); }
    public function setOnShow(string on_show){ this->setClassParameter("onshow", on_show); }
    private function generateOnShow(){ return (this->getOnShow()!="") ? " onshow='".this->getOnShow()."'" : ""; }

    ////////////////////////////////////////////
    // On Toggle
    //
    // Fires when the user opens or closes the <details> element.
    //
    // Syntax: <element ontoggle="script">
    /////////////////////////////////////////////////////////////////////////////////////////////////
    public function getOnToggle(){ return this->getClassParameter("ontoggle"); }
    public function setOnToggle(string on_toggle){ this->setClassParameter("ontoggle", on_toggle); }
    private function generateOnToggle(){ return (this->getOnToggle()!="") ? " ontoggle='".this->getOnToggle()."'" : ""; }


    public function generateAttributes(){
        string attributes = "";

        /*
        attributes .= this->generateAccessKey();

        if(isset(this->class)){
            attributes .= "class='";
            foreach(this->class as cls){
                attributes .= "cls ";
            }
            attributes .= "'";
        }

        attributes .= this->generateContenteditable();
        attributes .= this->generateContextMenu();

        foreach(this->data_xxxx as dkey=>dvalue){ attributes .= " dkey='dvalue'"; }
        foreach($this->aria_xxxx as $akey=>$avalue){ $attributes .= " $akey='$avalue'"; }

        $attributes .= $this->generateDraggable();
        $attributes .= $this->generateOnDragStart();
        $attributes .= $this->generateOnDragEnter();
        $attributes .= $this->generateOnDrop();
        $attributes .= $this->generateOnDragOver();
        $attributes .= $this->generateDropzone();
        $attributes .= $this->generateHidden();
        $attributes .= $this->generateId();
        $attributes .= $this->generateLanguage();
        $attributes .= $this->generateAccept();
        $attributes .= $this->generateCapture();
        $attributes .= $this->generateSpellcheck();
        $attributes .= $this->generateTabindex();
        $attributes .= $this->generateTitle();
        $attributes .= $this->generateTranslate();
        $attributes .= $this->generateMouseover();
        $attributes .= $this->generateMouseout();
        $attributes .= $this->generateOnclick();
        //$attributes .= $this->generateAutofocus();
        $attributes .= $this->generateOnchange();
        $attributes .= $this->generateOninput();
        $attributes .= $this->generateOnLoad();
        $attributes .= (isset($this->style)) ? " " .$this->style->generate() : "";

        */
        return attributes;
    }

    public function generateComponents(){
        return $this->components;
    }
}
