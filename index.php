<?php

/**
 * @defgroup plugins_themes_nied_default_child Nied theme plugin
 */

/**
 * @file plugins/themes/nied-default-child/index.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @ingroup plugins_themes_nied-default-child
 * @brief Wrapper for default child theme plugin.
 *
 */

require_once('NiedDefaultChildThemePlugin.inc.php');

return new NiedDefaultChildThemePlugin();

?>
