<?php

namespace Config;

use Bonfire\Dashboard\Config\Dashboard as BonfireDashboard;

class Dashboard extends BonfireDashboard
{
    public array $cells = [
        'Bonfire\Dashboard\DashboardCells::quickLinks',
        'Bonfire\Widgets\Cells\WidgetCells::stats',
        'Bonfire\Widgets\Cells\WidgetCells::charts',
    ];
}
