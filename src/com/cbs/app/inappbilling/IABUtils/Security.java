package com.cbs.app.inappbilling.IABUtils;

import android.text.TextUtils;
import android.util.Log;
import com.cbs.app.view.utils.Util;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

public class Security
{
  private static PublicKey a(String paramString)
  {
    try
    {
      paramString = Base64.a(paramString);
      paramString = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramString));
      return paramString;
    }
    catch (InvalidKeySpecException paramString)
    {
      Log.e("IABUtil/Security", "Invalid key specification.");
      return null;
    }
    catch (Base64DecoderException paramString)
    {
      for (;;)
      {
        Log.e("IABUtil/Security", "Base64 decoding failed.");
      }
    }
    catch (NoSuchAlgorithmException paramString)
    {
      for (;;) {}
    }
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    String str = Util.e("smtlvysHwB1vdidlUIVS7hgYtb1jfbgkLMAcblAdLHmjcuBjLOK0YW2sJyzmFF9mBnZrpGz/eSTThmBVnCgrzD1iRSplVKZNz1U768xEfc5QOuwVW0MALVaUa511OPe1bnyTITfCZUx3CFpolwPqeS3srkRbmzAF7D5/WiN/TLkCyHBA0M9Racg7CPkJb0AGY3y5Qt1sXeOXTRutUVrRGlpcekNTvQzubS3onkxltSpf5Qp3InljCd5ax3IZ1dRRfNIMQs8bGnAObX2baOVTCtW2ZGG3NljLGFlVNTt/pkjqRF7/im9Nrw0E9SNIaSR/Cohw8BQptssJH7MDLsdjbiQmZlm8WYJwCe+udmOkCV7lBkMlPHhvp37nQyTQnWVkyC5U0QZodD4=") + "jDLmOsQMfjsxCBzCQ5N5JdS/SDmKhKlj0rD+8P6rwp6T8TTiPw+YptN+vKtuow/erKmHTH0Q3hUnS4T5xCVToduUJQIDAQAB";
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
    {
      Log.e("IABUtil/Security", "Purchase verification failed: missing data.");
      return false;
    }
    return a(a(str), paramString1, paramString2);
  }
  
  private static boolean a(PublicKey paramPublicKey, String paramString1, String paramString2)
  {
    if (paramPublicKey == null) {
      return false;
    }
    try
    {
      Signature localSignature = Signature.getInstance("SHA1withRSA");
      localSignature.initVerify(paramPublicKey);
      localSignature.update(paramString1.getBytes());
      if (!localSignature.verify(Base64.a(paramString2)))
      {
        Log.e("IABUtil/Security", "Signature verification failed.");
        return false;
      }
    }
    catch (NoSuchAlgorithmException paramPublicKey)
    {
      Log.e("IABUtil/Security", "NoSuchAlgorithmException.");
      return false;
      return true;
    }
    catch (InvalidKeyException paramPublicKey)
    {
      Log.e("IABUtil/Security", "Invalid key specification.");
      return false;
    }
    catch (SignatureException paramPublicKey)
    {
      Log.e("IABUtil/Security", "Signature exception.");
      return false;
    }
    catch (Base64DecoderException paramPublicKey)
    {
      Log.e("IABUtil/Security", "Base64 decoding failed.");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.Security
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */