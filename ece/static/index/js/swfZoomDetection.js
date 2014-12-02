/**
 * @classdescription:
 * @author: Sebastian Martens; sebastian@sebastian-martens.de: blog.sebastian-martens.de
 * @copyright: Creative Commons. Free to use "as is"
 * @svn: $Id: swfInputs.js 23 2009-05-29 19:17:36Z dinnerout $
 * @uses: jQuery, swfObject
 */
var swfZoomDetection = {

	_nodeId: 'swfZoomDetectionNode2',

	_detectSWFWidth:100, // width of test flash
	_detectSWFHeight:100, // height of test flash
	_flashVersion:"9.0.0", // minimum version of test flash

	_flashVars:{}, // flash vars
	_params:{ menu:false, wmode:'transparent', scale:'noScale' }, // flash parameters
	_attributes:{ id: this._nodeId, name: this._nodeId, style:'position:absolute;right:0px;bottom:0px' }, // flash atributes

	onZoomChange: null,
	getInitIfOne: false, // if true zoomChange handler will initial be triggered if zoomlevel is 1
	initCallOnly: false, // if true, flash node will be deleted after initial call

	currentScale: null,

	/**
	 * constructor
	 */
	init:function( obj ){
		// mixes given parameter into this
		this.mixIn( obj );

		this._isInitialized = false;
		this.createNode();
	},

	/**
	 * mix a given object into this object
	 * @param {Object} obj - given object with parameters
	 */
	mixIn: function( obj, scope ){
		if(!scope) scope = this;
		for(item in obj){
			scope[ item ] = obj[item];
		}
	},

	/**
	 * load handler, called after document is fully loaded
	 * adds flash node via swfObjects into DOM
	 *
	 * @param {Object} obj - event parameter
	 */
	createNode:function( obj ){
		var node = document.createElement('DIV');
		node.setAttribute('id',this._nodeId);

		$('body')[0].appendChild( node );
		this._zoomDetectSWF = node;

		console.info("createNode");
		swfobject.embedSWF("swfZoomDetection.swf", this._nodeId, this._detectSWFWidth, this._detectSWFHeight, this._flashVersion,"expressInstall.swf", this._flashvars, this._params, this._attributes);
	},

	/**
	 * init function called from flash, passes init parameters to flash
	 * @param {Object} obj
	 */
	swfZoomDetectInit:function( obj ){
		var obj = {
			'setHeight':this._detectSWFHeight,
			'setWidth':this._detectSWFWidth,
			'isOnZoomChangeSet': (this.onZoomChange!=null)
		}

		return obj;
	},

	/**
	 * zoom change handler, called from flash when browser zoom changes
	 * @param {Object} obj - object from flash containing the scale value
	 */
	zoomChangeHandler:function( obj ){
		this.currentScale = obj.scale;
		if(obj.scale!=1||!obj.init||this.getInitIfOne) this.onZoomChange(obj);

		// remove node if initCall only
		if(obj.init&&this.initCallOnly){
			var node = $('#'+this._nodeId)[0];
			node.parentNode.removeChild( node );
		}

		// move node out of viewport
		if(obj.init&&!this.initCallOnly){
			var node = $('#'+this._nodeId)[0];
			node.setAttribute('style','position:absolute;left:-'+(this._detectSWFWidth-1)+'px;bottom:-'+(this._detectSWFHeight-1)+'px');
		}
	},

	/**
	 * getter method for browser is in zoom method, true if browser is zoomed
	 * @return Boolean, true if browser is zoomed, return null if not ready
	 */
	isBrowserZoom:function(){
		if( this.currentScale==null ) return null;
		return (this.currentScale==1);
	},

	/**
	 * return the current scale mode
	 * @return Number the current scale value, null if not ready
	 */
	getZoomLevel: function(){
		return this.currentScale;
	}

};

$(document).ready( function(){
	swfZoomDetection.init.apply( swfZoomDetection,[swfZoomDetectionConfig]);
});


