<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * User
 *
 * @Table(name="artisan")
 * @Entity(repositoryClass="Auth_Model_ArtisanRepository")
 */
class Auth_Model_Artisan
{
    /**
     * @var integer $id_artisan
     *
     * @Column(name="ID_ARTISAN", type="integer", nullable=false)
     * @Id
     * @GeneratedValue(strategy="IDENTITY")
     */
    private $id_artisan;

    /**
     * @var string $code_artisan
     *
     * @Column(name="CODE_ARTISAN", type="string", length=50, nullable=false)
     */
    private $code_artisan;
	
	/**
     * @var string $nom_artisan
     *
     * @Column(name="NOM_ARTISAN", type="string", length=50, nullable=false)
     */
    private $nom_artisan;
	
	/**
     * @var string $prenom_artisan
     *
     * @Column(name="PRENOM_ARTISAN", type="string", length=50, nullable=false)
     */
    private $prenom_artisan;
	
	/**
     * @var string $raison_sociale
     *
     * @Column(name="RAISON_SOCIALE", type="string", length=50, nullable=false)
     */
    private $raison_sociale;


    /**
     * @var string $email_artisan
     *
     * @Column(name="EMAIL_ARTISAN", type="string", length=200, nullable=false)
     */
    private $email_artisan;
	
	/**
     * @var string $telephone_fixe
     *
     * @Column(name="TELEPHONE_FIXE", type="string", length=200, nullable=false)
     */
    private $telephone_fixe;
	
	/**
     * @var string $telephone_portable
     *
     * @Column(name="TELEPHONE_PORTABLE", type="string", length=200, nullable=false)
     */
    private $telephone_portable;
	
	/**
     * @var string $fax
     *
     * @Column(name="FAX", type="string", length=200, nullable=false)
     */
    private $fax;
	
	/**
     * @var string $rcs
     *
     * @Column(name="RCS", type="string", length=200, nullable=false)
     */
    private $rcs;
	
	/**
     * @var string $ville
     *
     * @Column(name="VILLE", type="string", length=200, nullable=false)
     */
    private $ville;
	
	/**
     * @var string $siret
     *
     * @Column(name="SIRET", type="string", length=200, nullable=false)
     */
    private $siret;
	
	/**
     * @var string $code_NAF
     *
     * @Column(name="CODE_NAF", type="string", length=200, nullable=false)
     */
    private $code_NAF;
	
	/**
     * @var string $horaireRDV
     *
     * @Column(name="HORAIRERDV", type="string", length=200, nullable=false)
     */
    private $horaireRDV;
	
	/**
     * @var string $adresse
     *
     * @Column(name="ADRESSE", type="string", length=200, nullable=false)
     */
    private $adresse;
	
	/**
     * @var string $adresse2
     *
     * @Column(name="ADRESSE2", type="boolean",  nullable=false)
     */
    private $adresse2;
	
	/**
     * @var string $code_postal
     *
     * @Column(name="CODE_POSTAL", type="string", length=200,  nullable=false)
     */
    private $code_postal;
	
	/**
     * @var string $description
     *
     * @Column(name="DESCRIPTION", type="string", length=200,  nullable=false)
     */
    private $description;
	
	/**
     * @var string $qualification
     *
     * @Column(name="QUALIFICATION", type="string", length=200,  nullable=false)
     */
    private $qualification;

    
    
    
	 /**
	 * @return the attribute
	 */
    public function __set($attr, $val)
    {
    	$this->$attr = $val;
    }
    
    /**
	 * @param the attribute
	 */
    public function __get($attr)
    {
    	return $this->$attr;
    }
        
    /**
	 * @return toArray
	 */
 	public function toArray() {
        return get_object_vars($this);
    }
    
	/**
	 * @return the $id_artisan
	 */
	public function getId_artisan() {
		return $this->id_artisan;
	}

	/**
	 * @return the $code_artisan
	 */
	public function getCode_artisan() {
		return $this->code_artisan;
	}
	
	/**
	 * @return the $nom_artisan
	 */
	public function getNom_artisan() {
		return $this->nom_artisan;
	}
	
	/**
	 * @return the $prenom_artisan
	 */
	public function getPrenom_artisan() {
		return $this->prenom_artisan;
	}

	/**
	 * @return the $raison_sociale
	 */
	public function getRaison_sociale() {
		return $this->raison_sociale;
	}

	/**
	 * @return the $email_artisan
	 */
	public function getEmail_artisan() {
		return $this->email_artisan;
	}
	
	/**
	 * @return the $telephone_fixe
	 */
	public function getTelephone_fixe() {
		return $this->telephone_fixe;
	}
	
	/**
	 * @return the $telephone_portable
	 */
	public function getTelephone_portable() {
		return $this->telephone_portable;
	}
	
	/**
	 * @return the $fax
	 */
	public function getFax() {
		return $this->fax;
	}
	
	/**
	 * @return the $rcs
	 */
	public function getRcs() {
		return $this->rcs;
	}
	
	/**
	 * @return the $ville
	 */
	public function getVille() {
		return $this->ville;
	}
	
	/**
	 * @return the $siret
	 */
	public function getSiret() {
		return $this->siret;
	}
	
	/**
	 * @return the $code_NAF
	 */
	public function getCode_NAF() {
		return $this->code_NAF;
	}
	
	/**
	 * @return the $horaireRDV
	 */
	public function getHoraireRDV() {
		return $this->horaireRDV;
	}
	
	/**
	 * @return the $adresse
	 */
	public function getAdresse() {
		return $this->adresse;
	}
	
	/**
	 * @return the $adresse2
	 */
	public function getAdresse2() {
		return $this->adresse2;
	}
	
	/**
	 * @return the $code_postal
	 */
	public function getCode_postal() {
		return $this->code_postal;
	}
	
	/**
	 * @return the $description
	 */
	public function getDescription() {
		return $this->description;
	}
	
	/**
	 * @return the $qualification
	 */
	public function getQualification() {
		return $this->qualification;
	}

	/**
	 * @param integer $id_artisan
	 */
	public function setId_artisan($id_artisan) {
		$this->id_artisan = $id_artisan;
	}

	/**
	 * @param string $code_artisan
	 */
	public function setCode_artisan($code_artisan) {
		$this->code_artisan = $code_artisan;
	}
	
	
	/**
	 * @param string $nom_artisan
	 */
	public function setNom_artisan($nom_artisan) {
		$this->nom_artisan = $nom_artisan;
	}
	
	/**
	 * @param string $prenom_artisan
	 */
	public function setPrenom_artisan($prenom_artisan) {
		$this->prenom_artisan = $prenom_artisan;
	}

	/**
	 * @param string $raison_sociale
	 */
	public function setRaison_sociale($raison_sociale) {
		$this->raison_sociale = $raison_sociale;
	}
	
	/**
	 * @param string $email_artisan
	 */
	public function setEmail_artisan($email_artisan) {
		$this->email_artisan = $email_artisan;
	}
	
	/**
	 * @param string $telephone_fixe
	 */
	public function setTelephone_fixe($telephone_fixe) {
		$this->telephone_fixe = $telephone_fixe;
	}
	
	/**
	 * @param string $telephone_portable
	 */
	public function setTelephone_portable($telephone_portable) {
		$this->telephone_portable = $telephone_portable;
	}
	
	/**
	 * @param string $fax
	 */
	public function setFax($fax) {
		$this->fax = $fax;
	}
	
	/**
	 * @param string $rcs
	 */
	public function setRcs($rcs) {
		$this->rcs = $rcs;
	}
	
	/**
	 * @param string $ville
	 */
	public function setVille($ville) {
		$this->ville = $ville;
	}
	
	/**
	 * @param string $siret
	 */
	public function setSiret($siret) {
		$this->siret = $siret;
	}
	
	/**
	 * @param string $code_NAF
	 */
	public function setCode_NAF($code_NAF) {
		$this->code_NAF = $code_NAF;
	}
	
	/**
	 * @param string $horaireRDV
	 */
	public function setHoraireRDV($horaireRDV) {
		$this->horaireRDV = $horaireRDV;
	}
	
	/**
	 * @param string $adresse
	 */
	public function setAdresse($adresse) {
		$this->adresse = $adresse;
	}
	
	/**
	 * @param string $adresse2
	 */
	public function setAdresse2($adresse2) {
		$this->adresse2 = $adresse2;
	}
	
	/**
	 * @param string $code_postal
	 */
	public function setCode_postal($code_postal) {
		$this->code_postal = $code_postal;
	}
	

	/**
	 * @param string $description
	 */
	public function setDescription($description) {
		$this->description = $description;
	}
	
	/**
	 * @param string $qualification
	 */
	public function setQualification($qualification) {
		$this->qualification = $qualification;
	}

}