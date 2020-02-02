class WALD{

  BAUM [] johannes;
  
  WALD(){
    johannes = new BAUM [5];
    
    for(int i = 0; i<5;i++){
      johannes[i] = new BAUM(20,20 + 60 * i);
    }
  }

void BewegeAlles(){
     for(int i = 0; i<5;i++){
      johannes[i].BewegeBaum();
    } 
}


void ZeichneAlles(){
     for(int i = 0; i<5;i++){
      johannes[i].ZeichneBaum();
    } 
}
}
