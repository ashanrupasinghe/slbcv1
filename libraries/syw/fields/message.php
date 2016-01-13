<?php
/**
 * @copyright	Copyright (C) 2011 Simplify Your Web, Inc. All rights reserved.
 * @license		GNU General Public License version 3 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die ;

jimport('joomla.form.formfield');
jimport('joomla.version');

class JFormFieldMessage extends JFormField {
		
	public $type = 'Message';

	/**
	 * Method to get the field options.
	 *
	 * @return	array	The field option objects.
	 * @since	1.6
	 */
	protected function getLabel() {
				
		$html = '';
		
		$lang = JFactory::getLanguage();
		$lang->load('lib_syw.sys', JPATH_SITE);
		
		$version = new JVersion();
		$jversion = explode('.', $version->getShortVersion());
		
		$message_type = trim($this->element['style']);
		
		if ($message_type == 'example') {	
			if (intval($jversion[0]) > 2) {
				// J3+
			} else {
				$html .= '<div style="overflow: hidden; margin-bottom: 5px; clear: both">';
			}
			$html .= '<label style="visibility: hidden; margin: 0">'.JText::_('LIB_SYW_MESSAGE_EXAMPLE').'</label>';
		} else {
			$html .= '<div style="clear: both;"></div>';
		}
		
		return $html;
	}

	/**
	 * Method to get the field input markup.
	 *
	 * @return	string	The field input markup.
	 * @since	1.6
	 */
	protected function getInput() {
		
		$html = '';
		
		$lang = JFactory::getLanguage();
		$lang->load('lib_syw.sys', JPATH_SITE);
			
		$version = new JVersion();
		$jversion = explode('.', $version->getShortVersion());
		
		$message = trim($this->element['text']);
		$message_type = trim($this->element['style']);
		$message_label = '';
		if ($this->element['label']) {
			$message_label = JText::_(trim($this->element['label']));	
		}
			
		if ($message_type == 'example') {
			
			if (intval($jversion[0]) > 2) {
				if ($message_label) {
					$html .= '<span class="label">'.$message_label.'</span>&nbsp;';
				} else {
					$html .= '<span class="label">'.JText::_('LIB_SYW_MESSAGE_EXAMPLE').'</span>&nbsp;';
				}
				$html .= '<span class="muted" style="font-size: 0.8em;">';
			} else {
				$html .= '<span style="color: #999999; overflow: hidden; display: block">';
				if ($message_label) {
					$html .= '<i style="padding: 2px; border-radius: 3px; background-color: #999999; color: #FFFFFF; font-style: normal;">'.$message_label.'</i>&nbsp;';
				} else {
					$html .= '<i style="padding: 2px; border-radius: 3px; background-color: #999999; color: #FFFFFF; font-style: normal;">'.JText::_('LIB_SYW_MESSAGE_EXAMPLE').'</i>&nbsp;';
				}
			}
			if ($message) {
				$html .= JText::_($message);
			}
			$html .= '</span>';
			if (intval($jversion[0]) > 2) {
				// J3+
			} else {
				$html .= '</div>';
			}
		} else {
			$style = '';
			$style_label = '';
			switch ($message_type) {
				case 'warning':
					if (intval($jversion[0]) > 2) {
						$style = 'alert-warning';
						$style_label = ' label-warning';
					} else {
						$style = 'border: 1px solid #FBEED5; background-color: #FCF8E3; color: #C09853;';
						$style_label = 'color: #FCF8E3; background-color: #C09853;';
					}
					break;
				case 'error':
					if (intval($jversion[0]) > 2) {
						$style = 'alert-error';
						$style_label = ' label-important';
					} else {
						$style = 'border: 1px solid #EED3D7; background-color: #F2DEDE; color: #B94A48;';
						$style_label = 'color: #F2DEDE; background-color: #B94A48;';
					}
					break;
				case 'info':
					if (intval($jversion[0]) > 2) {
						$style = 'alert-info';
						$style_label = ' label-info';
					} else {
						$style = 'border: 1px solid #BCE8F1; background-color: #D9EDF7; color: #3A87AD;';
						$style_label = 'color: #D9EDF7; background-color: #3A87AD;';
					}
					break;
				default: /* message/success */
					if (intval($jversion[0]) > 2) {
						$style = 'alert-success';
						$style_label = ' label-success';
					} else {
						$style = 'border: 1px solid #D6E9C6; background-color: #DFF0D8; color: #468847;';
						$style_label = 'color: #DFF0D8; background-color: #468847;';
					}
					break;
			}
			
			if (intval($jversion[0]) > 2) {
				$html .= '<div style="margin-bottom:0" class="alert '.$style.'">';
				if ($message_label) {
					$html .= '<span class="label'.$style_label.'">'.$message_label.'</span>&nbsp;';
				}
			} else {
				$html .= '<div style="margin: 5px 0; padding: 8px 35px 8px 14px; border-radius: 4px; '.$style.'">';
				if ($message_label) {
					$html .= '<span style="padding: 1px 4px 2px; border-radius: 3px; '.$style_label.'">'.$message_label.'</span>&nbsp;';
				}
			}
			$html .= '<span>';
			if ($message) {
				$html .= JText::_($message);
			}
			$html .= '</span>';
			$html .= '</div>';
		}
		
		return $html;
	}

}
?>