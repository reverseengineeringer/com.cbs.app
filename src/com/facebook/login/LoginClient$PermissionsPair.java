package com.facebook.login;

import java.util.List;

class LoginClient$PermissionsPair
{
  List<String> declinedPermissions;
  List<String> grantedPermissions;
  
  public LoginClient$PermissionsPair(List<String> paramList1, List<String> paramList2)
  {
    grantedPermissions = paramList1;
    declinedPermissions = paramList2;
  }
  
  public List<String> getDeclinedPermissions()
  {
    return declinedPermissions;
  }
  
  public List<String> getGrantedPermissions()
  {
    return grantedPermissions;
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.LoginClient.PermissionsPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */