
void main(){
  int n = 10;
  for(int i=1;i<=n;i++){
    print(i);
  }

  int temp = n;
  while(temp != 0){
    print(temp);
    temp--;
  }
  
  temp = n;
  do{
    print(temp);
    temp--;
  }while(temp !=0);
}