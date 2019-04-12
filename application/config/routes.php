<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'indexController';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['indexroute'] = 'indexRoutingController';
$route['indexroute/login'] = 'indexRoutingController/login';
$route['indexroute/register'] = 'indexRoutingController/register';


$route['login'] = 'loginController';

$route['indexoption/login'] = 'indexoptionController/login';
$route['indexoption/register'] = 'indexoptionController/register';

$route['menu'] = 'menuController';

$route['menu/add_bus_no'] = 'menuController/add_bus_no';
$route['menu/add_route'] = 'menuController/add_route';
$route['menu/assign_bus_to_route'] = 'menuController/assign_bus_to_route';
$route['menu/view_user'] = 'menuController/view_user';
$route['menu/view_bus'] = 'menuController/view_bus';

$route['menu/addroute'] = 'dataController/addroute';
$route['menu/addbus'] = 'dataController/addbus';
$route['menu/assignBusroute'] = 'dataController/addassignBusroute';

$route['menu/invoice'] = 'menuController/invoice';
$route['menu/profile'] = 'menuController/profile';
$route['menu/login'] = 'menuController/login';
$route['menu/register'] = 'menuController/register';
$route['menu/f404'] = 'menuController/f404';
$route['menu/f500'] = 'menuController/f500';
$route['menu/blank'] = 'menuController/blank';
$route['menu/pace'] = 'menuController/pace';

$route['menudata/singletable'] = 'dataController/singletable';
$route['datacollection/datatablegetconnectivitydata'] = 'dataController/datatablegetconnectivitydata';

$route['menudata/multipletable'] = 'Crud';
$route['datacollection/datatablegetbusconnectivitydatatest'] = 'Crud/get_product_json';

$route['datacollection/datatablegetbusconnectivitydata'] = 'dataController/get_product_json';


$route['menudata/get_place'] = 'dataController/get_place';

