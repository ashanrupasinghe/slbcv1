<?php
/**
 * Joomla! component creativeimageslider
 *
 * @version $Id: default.php 2012-04-05 14:30:25 svn $
 * @author Creative-Solutions.net
 * @package Creative Image Slider
 * @subpackage com_creativeimageslider
 * @license GNU/GPL
 *
 */

// no direct access
defined('_JEXEC') or die('Restircted access');

jimport('joomla.application.component.controllerform');

class CreativeimagesliderControllerCreativeimage extends JControllerForm
{
	function __construct($default = array()) {
		parent::__construct($default);
	
		$this->registerTask('save', 'saveImage');
		$this->registerTask('apply', 'saveImage');
	}
	
	function saveImage() {
		$id = JRequest::getInt('id',0);
		$model = $this->getModel('creativeimage');
	
		$msg_string = $model->saveImage();
		if ($msg_string == 'no') {
			$msg = JText::_( 'COM_CREATIVEIMAGESLIDER_IMAGE_SAVED' );
			$msg_type = 'message';
		} else {
			$msg = JText::_( $msg_string );
			$msg_type = 'error';
		}
		
		if($_REQUEST['task'] == 'apply' && $id != 0)
			$link = 'index.php?option=com_creativeimageslider&view=creativeimage&layout=edit&id='.$id;
		else
			$link = 'index.php?option=com_creativeimageslider&view=creativeimages';
		$this->setRedirect($link, $msg, $msg_type);
	}
}
