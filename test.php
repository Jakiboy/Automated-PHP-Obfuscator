<?php

// Automated PHP Obfuscator Test

interface testInt {
	function get();
}

abstract class testMain {
	abstract protected function todo($thing = 1);
}

class test extends testMain implements testInt {
	
	private $test;

	public function __construct($test){
		$this->test = $test;
		$this->todo(5);
	}

	protected function todo($thing = 1){
		$this->test = $this->test + $thing;
	}

	public function get(){
		return (int)$this->test;
	}
}

$test = new test(10);
echo $test->get();