<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['abouts'] = 'Welcome/demo';

$route['home'] = 'PageController/index';
$route['about'] = 'PageController/aboutus';

$route['blog/(:any)'] = 'PageController/blog/$1';
$route['blog-edit/(:num)'] = 'PageController/blogedit/$1';

/* ----------------------------------- */
/* 	Employee routes */

$route['employee'] = 'Frontend/EmployeeController/index';
$route['employee/add'] = 'Frontend/EmployeeController/create';
$route['employee/store'] = 'Frontend/EmployeeController/store';
$route['employee/edit/(:num)'] = 'Frontend/EmployeeController/edit/$1';
$route['employee/update/(:num)'] = 'Frontend/EmployeeController/update/$1';
$route['employee/delete/(:num)'] = 'Frontend/EmployeeController/delete/$1';

$route['employee/confirmdelete/(:num)']['delete'] = 'Frontend/EmployeeController/delete/$1';

/* Login and Register for User and Admin */
$route['register']['get'] = 'Auth/RegisterController/index';
$route['register']['post'] = 'Auth/RegisterController/register';

$route['login']['get'] = 'Auth/LoginController/index';
$route['login']['post'] = 'Auth/LoginController/login';

$route['logout']['get'] = 'Auth/LogoutController/logout';

$route['userpage']['get'] = 'UserController/index';

$route['adminpage']['get'] = 'AdminController/index';

$route['403']['get'] = 'PageController/accessdenied';
