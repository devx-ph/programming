<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller'] = 'Front';
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

$route['employee/deleteall'] = 'Frontend/EmployeeController/deleteEmpall';

/* Login and Register for User and Admin */
$route['register']['get'] = 'Auth/RegisterController/index';
$route['register']['post'] = 'Auth/RegisterController/register';

$route['login']['get'] = 'Auth/LoginController/index';
$route['login']['post'] = 'Auth/LoginController/login';

$route['logout']['get'] = 'Auth/LogoutController/logout';

$route['userpage']['get'] = 'UserController/index';

$route['adminpage']['get'] = 'AdminController/index';

$route['403']['get'] = 'PageController/accessdenied';


/* Image CRUD - Products */
$route['products']['get'] = 'Frontend/ProductController/index';
$route['products/add']['get'] = 'Frontend/ProductController/create';
$route['products/add']['post'] = 'Frontend/ProductController/store';

$route['products/edit/(:num)']['get'] = 'Frontend/ProductController/edit/$1';
$route['products/update/(:num)']['post'] = 'Frontend/ProductController/update/$1';
$route['products/delete/(:num)']['get'] = 'Frontend/ProductController/delete/$1';
