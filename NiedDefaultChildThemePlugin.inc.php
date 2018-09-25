<?php

/**
 * @file plugins/themes/nied-default-child/NiedDefaultChildThemePlugin.inc.php
 *
 * Copyright (c) 2014-2016 Simon Fraser University Library
 * Copyright (c) 2003-2016 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class NiedDefaultChildThemePlugin
 * @ingroup plugins_themes_default
 *
 * @brief Nied Default theme
 */
import('lib.pkp.classes.plugins.ThemePlugin');

class NiedDefaultChildThemePlugin extends ThemePlugin {
	/**
	 * Initialize the theme's styles, scripts and hooks. This is only run for
	 * the currently active theme.
	 *
	 * @return null
	 */
	public function init() {
		$this->setParent('defaultthemeplugin');
		$this->modifyStyle('stylesheet', array('addLess' => array('styles/index.less')));
	}

	/**
	 * Get the display name of this plugin
	 * @return string
	 */
	function getDisplayName() {
		return __('plugins.themes.nied-default-child.name');
	}

	/**
	 * Get the description of this plugin
	 * @return string
	 */
	function getDescription() {
		return __('plugins.themes.nied-default-child.description');
	}
}

?>
