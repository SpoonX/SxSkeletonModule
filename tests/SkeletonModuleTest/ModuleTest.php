<?php

namespace {%MODULENAME%}Test;

use PHPUnit_Framework_TestCase;
use {%MODULENAME%}\Module;

/**
 * @covers {%MODULENAME%}\Module
 */
class ModuleTest extends PHPUnit_Framework_TestCase
{
    public function testGetAutoloaderConfig()
    {
        $module = new Module();
        // just testing ZF specification requirements
        $this->assertInternalType('array', $module->getAutoloaderConfig());
    }

    public function testGetConfig()
    {
        $module = new Module();
        // just testing ZF specification requirements
        $this->assertInternalType('array', $module->getConfig());
    }
}
