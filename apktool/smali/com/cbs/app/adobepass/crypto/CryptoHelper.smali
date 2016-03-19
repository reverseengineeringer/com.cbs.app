.class public Lcom/cbs/app/adobepass/crypto/CryptoHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 33
    :goto_0
    return-object v0

    .line 27
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    const-string v2, "CryptoHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSignatureAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "SHA256WithRSA"

    return-object v0
.end method

.method public static getSymmetricEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "AES/CBC/PKCS5Padding"

    return-object v0
.end method
