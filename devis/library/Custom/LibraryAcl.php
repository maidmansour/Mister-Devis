<?php

class Custom_LibraryAcl extends Zend_Acl {

    function __construct() {
		
        // >>>>>>>>>>>> Adding Roles <<<<<<<<<<<<<<<
        $this->addRole(new Zend_Acl_Role('guests'));
        $this->addRole(new Zend_Acl_Role('auth'), 'guests');
		
        // >>>>>>>>>>>> Adding Resources <<<<<<<<<<<<<<<
        
        // **** Resources for module Default *****
        $this->add(new Zend_Acl_Resource('default'));
        $this->add(new Zend_Acl_Resource('default:index'), 'default');
        $this->add(new Zend_Acl_Resource('default:error'), 'default');
        $this->add(new Zend_Acl_Resource('default:cron'), 'default');
        
        // **** Resources for module Auth *****
        $this->add(new Zend_Acl_Resource('auth'));
        $this->add(new Zend_Acl_Resource('auth:index'), 'auth');
        $this->add(new Zend_Acl_Resource('auth:login'), 'auth');
        $this->add(new Zend_Acl_Resource('auth:logout'), 'auth');
        $this->add(new Zend_Acl_Resource('auth:user'), 'auth');
        $this->add(new Zend_Acl_Resource('auth:dashboard'), 'auth');
		$this->add(new Zend_Acl_Resource('auth:piscine'), 'auth');
		$this->add(new Zend_Acl_Resource('auth:climatisation'), 'auth');
		$this->add(new Zend_Acl_Resource('auth:chauffage'), 'auth');
		$this->add(new Zend_Acl_Resource('auth:cuisine'), 'auth');
		$this->add(new Zend_Acl_Resource('auth:sallebain'), 'auth');
		$this->add(new Zend_Acl_Resource('auth:fenetre'), 'auth');
        
        // >>>>>>>>>>>> Affecting Resources <<<<<<<<<<<<<<<
       	
        // -------  >> module Default  << -------
        $this->allow('auth', 'default:index');
        $this->allow('auth', 'default:error');
        $this->allow('guests', 'default:cron');
        
        // -------  >> module Auth  << -------
        $this->allow('auth', 'auth:index');
        $this->allow('guests', 'auth:login');
        $this->allow('auth', 'auth:logout');
        $this->allow('auth', 'auth:user');
        $this->allow('auth', 'auth:dashboard');
		$this->allow('auth', 'auth:piscine');
		$this->allow('auth', 'auth:climatisation');
		$this->allow('auth', 'auth:chauffage');
		$this->allow('auth', 'auth:cuisine');
		$this->allow('auth', 'auth:sallebain');
		$this->allow('auth', 'auth:fenetre');
		$this->allow('auth', 'auth:user');
        
        
    }
    
    
   
}