.class public Lcom/cbs/app/inappbilling/IABUtils/Security;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 3

    .prologue
    .line 70
    :try_start_0
    invoke-static {p0}, Lcom/cbs/app/inappbilling/IABUtils/Base64;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 71
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/cbs/app/inappbilling/IABUtils/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    const-string v0, "IABUtil/Security"

    const-string v1, "Invalid key specification."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :catch_1
    move-exception v0

    const-string v0, "IABUtil/Security"

    const-string v1, "Base64 decoding failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smtlvysHwB1vdidlUIVS7hgYtb1jfbgkLMAcblAdLHmjcuBjLOK0YW2sJyzmFF9mBnZrpGz/eSTThmBVnCgrzD1iRSplVKZNz1U768xEfc5QOuwVW0MALVaUa511OPe1bnyTITfCZUx3CFpolwPqeS3srkRbmzAF7D5/WiN/TLkCyHBA0M9Racg7CPkJb0AGY3y5Qt1sXeOXTRutUVrRGlpcekNTvQzubS3onkxltSpf5Qp3InljCd5ax3IZ1dRRfNIMQs8bGnAObX2baOVTCtW2ZGG3NljLGFlVNTt/pkjqRF7/im9Nrw0E9SNIaSR/Cohw8BQptssJH7MDLsdjbiQmZlm8WYJwCe+udmOkCV7lBkMlPHhvp37nQyTQnWVkyC5U0QZodD4="

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jDLmOsQMfjsxCBzCQ5N5JdS/SDmKhKlj0rD+8P6rwp6T8TTiPw+YptN+vKtuow/erKmHTH0Q3hUnS4T5xCVToduUJQIDAQAB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    const-string v0, "IABUtil/Security"

    const-string v1, "Purchase verification failed: missing data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_1
    invoke-static {v0}, Lcom/cbs/app/inappbilling/IABUtils/Security;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 59
    invoke-static {v0, p0, p1}, Lcom/cbs/app/inappbilling/IABUtils/Security;->a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private static a(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    if-nez p0, :cond_0

    .line 115
    :goto_0
    return v0

    .line 98
    :cond_0
    :try_start_0
    const-string v1, "SHA1withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 101
    invoke-static {p2}, Lcom/cbs/app/inappbilling/IABUtils/Base64;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    const-string v1, "IABUtil/Security"

    const-string v2, "Signature verification failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/cbs/app/inappbilling/IABUtils/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    const-string v1, "IABUtil/Security"

    const-string v2, "NoSuchAlgorithmException."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v1

    const-string v1, "IABUtil/Security"

    const-string v2, "Invalid key specification."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :catch_2
    move-exception v1

    const-string v1, "IABUtil/Security"

    const-string v2, "Signature exception."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :catch_3
    move-exception v1

    const-string v1, "IABUtil/Security"

    const-string v2, "Base64 decoding failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
