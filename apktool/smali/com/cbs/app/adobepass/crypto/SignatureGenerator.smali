.class public Lcom/cbs/app/adobepass/crypto/SignatureGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/cbs/app/adobepass/crypto/SignatureGenerator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/cbs/app/adobepass/crypto/IKeyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->b:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a:Lcom/cbs/app/adobepass/crypto/IKeyInfo;

    .line 38
    return-void
.end method

.method private constructor <init>(Lcom/cbs/app/adobepass/crypto/SigningCredential;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a:Lcom/cbs/app/adobepass/crypto/IKeyInfo;

    .line 33
    iput-object p1, p0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a:Lcom/cbs/app/adobepass/crypto/IKeyInfo;

    .line 34
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/res/Resources;)Lcom/cbs/app/adobepass/crypto/SignatureGenerator;
    .locals 5

    .prologue
    .line 41
    const-class v1, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->b:Ljava/util/HashMap;

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    const/high16 v2, 0x7f070000

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 46
    new-instance v3, Lcom/cbs/app/adobepass/crypto/SigningCredential;

    invoke-direct {v3, v2, v0}, Lcom/cbs/app/adobepass/crypto/SigningCredential;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    const-string v0, "SignatureGenerator"

    const-string v2, "Credential file loaded."

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "SignatureGenerator"

    const-string v2, "Initializing Signature generator."

    invoke-static {v0, v2}, Lcom/adobe/adobepass/accessenabler/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->b:Ljava/util/HashMap;

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;

    invoke-direct {v4, v3}, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;-><init>(Lcom/cbs/app/adobepass/crypto/SigningCredential;)V

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    sget-object v0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->b:Ljava/util/HashMap;

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a([B[B)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 118
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/cbs/app/adobepass/crypto/CryptoHelper;->getSignatureAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a:Lcom/cbs/app/adobepass/crypto/IKeyInfo;

    invoke-interface {v1}, Lcom/cbs/app/adobepass/crypto/IKeyInfo;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 64
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/cbs/app/adobepass/crypto/CryptoHelper;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v1, "SignatureGenerator"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/c;

    invoke-direct {v0}, Lcom/adobe/adobepass/accessenabler/api/c;-><init>()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v2, 0x100

    const/4 v0, 0x0

    .line 75
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 77
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    .line 78
    const/4 v1, 0x2

    iget-object v3, p0, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a:Lcom/cbs/app/adobepass/crypto/IKeyInfo;

    invoke-interface {v3}, Lcom/cbs/app/adobepass/crypto/IKeyInfo;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 81
    const/4 v1, 0x0

    new-array v3, v1, [B

    .line 84
    array-length v1, v4

    if-gt v1, v2, :cond_0

    .line 85
    invoke-virtual {v5, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 109
    :goto_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 88
    :cond_0
    const/16 v1, 0x100

    new-array v1, v1, [B

    move v8, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v8

    .line 90
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_2

    .line 91
    if-lez v3, :cond_1

    rem-int/lit16 v6, v3, 0x100

    if-nez v6, :cond_1

    .line 92
    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 93
    invoke-static {v1, v0}, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a([B[B)[B

    move-result-object v1

    .line 97
    add-int/lit16 v0, v3, 0x100

    array-length v6, v4

    if-le v0, v6, :cond_3

    .line 98
    array-length v0, v4

    sub-int/2addr v0, v3

    .line 101
    :goto_2
    new-array v0, v0, [B

    .line 103
    :cond_1
    rem-int/lit16 v6, v3, 0x100

    aget-byte v7, v4, v3

    aput-byte v7, v0, v6

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 106
    invoke-static {v1, v0}, Lcom/cbs/app/adobepass/crypto/SignatureGenerator;->a([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    const-string v1, "SignatureGenerator"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/c;

    invoke-direct {v0}, Lcom/adobe/adobepass/accessenabler/api/c;-><init>()V

    throw v0

    :cond_3
    move v0, v2

    goto :goto_2
.end method
