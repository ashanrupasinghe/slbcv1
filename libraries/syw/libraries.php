<?php
/**
 * @copyright	Copyright (C) 2011 Simplify Your Web, Inc. All rights reserved.
 * @license		GNU General Public License version 3 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

class SYWLibraries {
	
	static $jqLoaded = false;
	static $jqncLoaded = false;
	
	static $jqpLoaded = false;
	
	static $jqcLoaded = false;
	static $jqcthrottleLoaded = false;
	static $jqctouchLoaded = false;
	static $jqcmousewheelLoaded = false;
	static $jqctransitLoaded = false;
	
	static $jqhighres = array();
		
	/**
	 * Load the jQuery library if needed
	 */
	static function loadJQuery($local, $version)
	{
		if (self::$jqLoaded) {
			return;
		}
		
		$doc = JFactory::getDocument();	
			
		if ($local) {
			$doc->addScript(JURI::root(true).'/media/syw/js/jquery/jquery-'.$version.'.min.js');
		} else {
			$doc->addScript('//ajax.googleapis.com/ajax/libs/jquery/'.$version.'/jquery.min.js');
		}
			
		// add script instead of declaration to make sure the two files follow each other
		//$doc->addScript(JURI::root(true).'/media/syw/js/jquery/syw.noconflict.js'); 
			
		self::$jqLoaded = true;
	}
	
	/**
	 * Load the jQuery library if needed
	 */
	static function loadJQueryNoConflict()
	{		
		if (self::$jqncLoaded) {
			return;
		}
		
		$doc = JFactory::getDocument();
					
		$doc->addScript(JURI::root(true).'/media/syw/js/jquery/syw.noconflict.js');
			
		self::$jqncLoaded = true;
	}
	
	/**
	 * Load Pajinate jQuery plugin if needed
	 */
	static function loadPagination()
	{
		if (self::$jqpLoaded) {
			return;
		}
		
		$doc = JFactory::getDocument();
			
		$doc->addScript(JURI::root(true).'/media/syw/js/pagination/jquery.pajinate.min.js');
		
		self::$jqpLoaded = true;
	}
	
	/**
	 * Load the carousel library (and its plugins) if needed
	 * jQuery v1.7+
	 */
	static function loadCarousel($throttle = true, $touch = true, $mousewheel = false, $transit = false)
	{	
		if ($throttle) {
			self::loadCarousel_throttle();
		}
		
		if ($touch) {
			self::loadCarousel_touch();
		}
		
		if ($mousewheel) {
			self::loadCarousel_mousewheel();
		}
		
		if ($transit) {
			self::loadCarousel_transit();
		}
	
		if (self::$jqcLoaded) {
			return;
		}
		
		$doc = JFactory::getDocument();
		
		$doc->addScript(JURI::root(true).'/media/syw/js/carousel/jquery.carouFredSel-6.2.1-packed.js');
	
		self::$jqcLoaded = true;
	}
	
	static function loadCarousel_throttle()
	{	
		if (self::$jqcthrottleLoaded) {
			return;
		}
		
		$doc = JFactory::getDocument();
			
		$doc->addScript(JURI::root(true).'/media/syw/js/carousel/jquery.ba-throttle-debounce.min.js');
	
		self::$jqcthrottleLoaded = true;
	}
	
	static function loadCarousel_touch()
	{	
		if (self::$jqctouchLoaded) {
			return;
		}
		
		$doc = JFactory::getDocument();
			
		$doc->addScript(JURI::root(true).'/media/syw/js/carousel/jquery.touchSwipe.min.js');
	
		self::$jqctouchLoaded = true;
	}
	
	static function loadCarousel_mousewheel()
	{	
		if (self::$jqcmousewheelLoaded) {
			return;
		}
		
		$doc = JFactory::getDocument();
		
		$doc->addScript(JURI::root(true).'/media/syw/js/carousel/jquery.mousewheel.min.js');
	
		self::$jqcmousewheelLoaded = true;
	}
	
	static function loadCarousel_transit()
	{	
		if (self::$jqctransitLoaded) {
			return;
		}
		
		$doc = JFactory::getDocument();
		
		$doc->addScript(JURI::root(true).'/media/syw/js/carousel/jquery.transit.min.js');

		self::$jqctransitLoaded = true;
	}
	
	static function load_high_res_images($jQuery_path = 'img') 
	{		
		if (in_array($jQuery_path, self::$jqhighres)) {
			return;
		}
		
		$doc = JFactory::getDocument();
		
		$javascript = 'jQuery(window).on("load", function() { ';
			$javascript .= 'if (window.devicePixelRatio > 1) { ';
				$javascript .= 'jQuery("'.$jQuery_path.'").each(function() { ';
					$javascript .= 'var lowres = jQuery(this).attr("src"); ';
					$javascript .= 'var highres = lowres.replace(".", "@2x."); ';
					$javascript .= 'jQuery(this).attr("src", highres); ';
				$javascript .= '});';
			$javascript .= '}';
		$javascript .= '});';
		
		$doc->addScriptDeclaration($javascript);
		
		self::$jqhighres[] = $jQuery_path;
	}
	
}
?>
