Class Dict : Hashtable{

   [System.Object[]] Get ([string]$Key, [System.Object[]]$Values) {

       if( -not ($this.get_Keys() -contains $Key) ) {

           Return $Values

       }



       Return $this[$key]

   }

   [Void] SetDefault ([string]$Key, [System.Object]$Values) {

       if( $this[$Key] -eq $Null ) {

           $this[$Key] = $Values

       }



   }
}
