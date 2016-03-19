.class public Lcom/cbs/app/adobepass/crypto/SigningCredential;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/adobepass/crypto/ICertificateInfo;
.implements Lcom/cbs/app/adobepass/crypto/IKeyInfo;


# instance fields
.field protected a:Ljava/security/KeyStore$PrivateKeyEntry;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a:Ljava/security/KeyStore$PrivateKeyEntry;

    .line 30
    invoke-static {p1, p2}, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a:Ljava/security/KeyStore$PrivateKeyEntry;

    .line 31
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore$PrivateKeyEntry;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 34
    if-nez p0, :cond_0

    move-object v0, v1

    .line 64
    :goto_0
    return-object v0

    .line 38
    :cond_0
    :try_start_0
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "KS provider : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 44
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    move-object v0, v1

    .line 45
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 46
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    :cond_2
    if-eqz v0, :cond_3

    .line 52
    new-instance v3, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v2, "SigningCredential"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    .line 64
    goto :goto_0
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a:Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a:Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a:Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a:Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a:Ljava/security/KeyStore$PrivateKeyEntry;

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/adobepass/crypto/SigningCredential;->a:Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method
