<?php
/**
 * @version     1.0.0
 * @package     com_carshopping
 * @copyright   Copyright (C) 2014. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @author      aldo <aldopraherda@gmail.com> - http://www.aldoapp.com
 */

// No direct access
defined('_JEXEC') or die;

jimport('joomla.application.component.controllerform');

/**
 * Survey controller class.
 */
class CarshoppingControllerSurvey extends JControllerForm
{

    function __construct() {
        $this->view_list = 'surveys';
        parent::__construct();
    }

}