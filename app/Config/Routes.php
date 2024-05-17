<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('/mydashboard', 'Generate::index');
$routes->get('/certificate/(:num)', 'Generate::detail/$1');
$routes->get('/generate', 'Generate::viewGenerate');
$routes->post('/generate/save', 'Generate::save');
$routes->delete('/certificate/delete/(:num)', 'Generate::delete/$1');
$routes->get('/certificate/download/(:num)', 'Generate::download_file/$1');
$routes->get('/tutorial', 'Generate::viewTutorial');
