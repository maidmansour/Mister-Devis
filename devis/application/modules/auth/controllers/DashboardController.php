<?php

class Auth_DashboardController extends Zend_Controller_Action
{

    public function indexAction()
    {
    	$this->_helper->layout->setLayout ( 'layout_fo_ehcg' );
		
		$piscine=$this->getRequest()->_em->getRepository('Auth_Model_Piscine')->findAll();
		$countpiscine=count($piscine);
		
		$chauffage=$this->getRequest()->_em->getRepository('Auth_Model_Chauffage')->findAll();
		$countchauffage=count($chauffage);
		
		$climatisation=$this->getRequest()->_em->getRepository('Auth_Model_Climatisation')->findAll();
		$countclimatisation=count($climatisation);
		
		$fenetre=$this->getRequest()->_em->getRepository('Auth_Model_Fenetre')->findAll();
		$countfenetre=count($fenetre);
		
		$devisqualifie = $this->getRequest()->_em->getRepository('Auth_Model_Demandedevis')->findBy(array('qualification' => '3'));
		$countdevisqualifie=count($devisqualifie);
		
		$devisnonqualifie = $this->getRequest()->_em->getRepository('Auth_Model_Demandedevis')->findBy(array('qualification' => '0'));
		$countdevisnonqualifie=count($devisnonqualifie);
		
		$devisnrp = $this->getRequest()->_em->getRepository('Auth_Model_Demandedevis')->findBy(array('qualification' => '1'));
		$countdevisnrp=count($devisnrp);
		
		$devistard = $this->getRequest()->_em->getRepository('Auth_Model_Demandedevis')->findBy(array('qualification' => '4'));
		$countdevistard=count($devistard);
		
		$this->view->countpiscine=$countpiscine;
		$this->view->countchauffage=$countchauffage;
		$this->view->countclimatisation=$countclimatisation;
		$this->view->countfenetre=$countfenetre;
		$this->view->countdevisqualifie=$countdevisqualifie;
		$this->view->countdevisnonqualifie=$countdevisnonqualifie;
		$this->view->countdevisnrp=$countdevisnrp;
		$this->view->countdevistard=$countdevistard;
		
		
    }
    
	
    
}

