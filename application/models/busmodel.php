<?php 
   class busmodel extends CI_Model {

/*
    var $table = 'routetbl';
    var $column_order = array('r_slno','start_place','via_place','end_place'); //set column field database for datatable orderable
    var $column_search = array('r_slno','start_place','via_place','end_place'); //set column field database for datatable searchable just firstname , lastname , address are searchable
    var $order = array('r_slno' => 'desc'); // default order 
  
	*/
      function __construct() { 
         parent::__construct(); 
      } 

/*
  public function get_datatables()
       {
           $this->_get_datatables_query();
           if(intval($this->input->get("length"))!= -1)
           $this->db->limit(intval($this->input->get("length")), intval($this->input->get("start")));
           $query = $this->db->get();
           return $query->result();
       }

 private function _get_datatables_query()
      {
         
        $this->db->from($this->table);
 
        $i = 0;
     
        foreach ($this->column_search as $item) // loop column 
        {   $search=$this->input->get("search");
            if($search['value']) // if datatable send POST for search
            {
                 
                if($i===0) // first loop
                {
                    $this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
                    $this->db->like($item, $_GET['search']['value']);
                }
                else
                {
                    $this->db->or_like($item, $_GET['search']['value']);
                }
 
                if(count($this->column_search) - 1 == $i) //last loop
                    $this->db->group_end(); //close bracket
            }
            $i++;
        }
         
        if(isset($_GET['order'])) // here order processing
        {
            $this->db->order_by($this->column_order[$_GET['order']['0']['column']], $_GET['order']['0']['dir']);
        } 
        else if(isset($this->order))
        {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
      }
      
     public  function count_filtered()
       {
           $this->_get_datatables_query();
           $query = $this->db->get();
           return $query->num_rows();
       }
 
    public function count_all()
       {
           $this->db->from($this->table);
           return $this->db->count_all_results();
       }


*/

          public function addbus($data) { 
         if ($this->db->insert("bustbl", $data)) { 
            return true; 
       
        }
      }

        public function addroute($data) { 
         if ($this->db->insert("routetbl", $data)) { 
            return true; 
         }  
      } 

      public function assignroute($data) { 
         if ($this->db->insert("busrouteassigntbl", $data)) { 
            return true; 
         }  
      } 



      public function trial($data) { 
         if ($this->db->insert("routetbl", $data)) { 
            return true; 
         }  
      } 

      public function bustime_data($data) { 

         if ($this->db->insert("bustimeassigntbl", $data)) { 
           $insertid=$this->db->insert_id();
            return $insertid; 
         }  
      }


       public function busrouteassign_data($data)
      {
        $f_bt_slno = $data['f_bt_slno'];
       
        foreach( $data['f_r_slno']as $key => $value){

          $data = array( 
            'f_bt_slno' => $f_bt_slno,
            'f_r_slno' => $value, 
            ); 
         
          //print_r($data);
          $this->db->insert("busrouteassigntbl", $data);
           
        }
        return true;
        /*$query = $this->db->query('SELECT * FROM connectivity_tbl');
         return $query->result();*/
        
      }










     } 
    
?> 