<?php



use Doctrine\ORM\Mapping as ORM;

/**
 * User
 *
 * @Table(name="activite")
 * @Entity(repositoryClass="Auth_Model_ActiviteRepository")
 */
class Auth_Model_Activite
{
    /**
     * @var integer $id_activite
     *
     * @Column(name="ID_ACTIVITE", type="integer", nullable=false)
     * @Id
     * @GeneratedValue(strategy="IDENTITY")
     */
    private $id_activite;

    /**
     * @var string $libelle
     *
     * @Column(name="LIBELLE", type="string", length=50, nullable=false)
     */
    private $libelle;   
    
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
	 * @return the $id_activite
	 */
	public function getId_activite() {
		return $this->id_activite;
	}

	/**
	 * @return the $libelle
	 */
	public function getLibelle() {
		return $this->libelle;
	}
	

	

	/**
	 * @param integer $id_activite
	 */
	public function setId_activite($id_activite) {
		$this->id_activite = $id_activite;
	}

	/**
	 * @param string $libelle
	 */
	public function setLibelle($libelle) {
		$this->libelle = $libelle;
	}
	

}