
Class Dict : Hashtable{
   [System.Object[]] Get ([system.object]$Key,[System.Object[]]$Values) {
       if( -not ($this.get_Keys() -contains $Key) ) {
           Return $Values
       }
       Return $this[$key]
   }
   Dict($Hash) : base($Hash) {}  
}

$PicnicItems = [Dict]@{apples=5}
Write-Host "I will bring" ($PicnicItems.Get('apples', 0)) "apples" 
Write-Host "I will bring" ($PicnicItems.Get('bananas', 0)) "bananas" 
