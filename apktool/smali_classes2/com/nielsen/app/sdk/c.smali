.class Lcom/nielsen/app/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljavax/crypto/Cipher;

.field private d:Ljavax/crypto/SecretKey;

.field private e:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    const-string v0, "AES/CBC/PKCS5Padding"

    iput-object v0, p0, Lcom/nielsen/app/sdk/c;->a:Ljava/lang/String;

    .line 325
    const-string v0, "AES"

    iput-object v0, p0, Lcom/nielsen/app/sdk/c;->b:Ljava/lang/String;

    .line 327
    iput-object v1, p0, Lcom/nielsen/app/sdk/c;->c:Ljavax/crypto/Cipher;

    .line 328
    iput-object v1, p0, Lcom/nielsen/app/sdk/c;->d:Ljavax/crypto/SecretKey;

    .line 329
    iput-object v1, p0, Lcom/nielsen/app/sdk/c;->e:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/nielsen/app/sdk/c;->c:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/c;->d:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nielsen/app/sdk/c;->e:Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 352
    :cond_0
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 363
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/nielsen/app/sdk/c;->d:Ljavax/crypto/SecretKey;

    .line 366
    const-string v0, "F1D3A567894BC2E0"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 367
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lcom/nielsen/app/sdk/c;->e:Ljavax/crypto/spec/IvParameterSpec;

    .line 369
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/c;->c:Ljavax/crypto/Cipher;

    goto :goto_0

    .line 352
    nop

    :array_0
    .array-data 1
        -0x5bt
        0x30t
        -0x11t
        -0x56t
        0x50t
        0x52t
        0x76t
        -0x69t
        -0x79t
        0x2bt
        0x17t
        -0x11t
        -0x11t
        -0xct
        -0x55t
        -0xbt
        0x38t
        -0x7et
        -0x72t
        -0x60t
        -0x24t
        -0x7at
        0x43t
        -0x47t
        0x41t
        0x40t
        0x70t
        -0x45t
        0x55t
        -0x28t
        0x18t
        0x70t
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 440
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1390
    invoke-direct {p0}, Lcom/nielsen/app/sdk/c;->a()V

    .line 1392
    iget-object v1, p0, Lcom/nielsen/app/sdk/c;->c:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nielsen/app/sdk/c;->d:Ljavax/crypto/SecretKey;

    iget-object v4, p0, Lcom/nielsen/app/sdk/c;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1393
    iget-object v1, p0, Lcom/nielsen/app/sdk/c;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 441
    if-nez v1, :cond_0

    .line 442
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not get encrypted text from plain text"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    const/4 v0, 0x0

    .line 445
    packed-switch p2, :pswitch_data_0

    .line 454
    :goto_0
    return-object v0

    .line 448
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 451
    :pswitch_1
    invoke-static {v1}, Lcom/nielsen/app/sdk/c$a;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 477
    .line 478
    packed-switch p2, :pswitch_data_0

    move-object v1, v0

    .line 487
    :goto_0
    if-nez v1, :cond_0

    .line 494
    :goto_1
    return-object v0

    .line 481
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_0

    .line 2123
    :pswitch_1
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/nielsen/app/sdk/c$a;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 484
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .line 2414
    :cond_0
    invoke-direct {p0}, Lcom/nielsen/app/sdk/c;->a()V

    .line 2416
    iget-object v0, p0, Lcom/nielsen/app/sdk/c;->c:Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/nielsen/app/sdk/c;->d:Ljavax/crypto/SecretKey;

    iget-object v4, p0, Lcom/nielsen/app/sdk/c;->e:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 2417
    iget-object v0, p0, Lcom/nielsen/app/sdk/c;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 491
    if-nez v1, :cond_1

    .line 492
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not get decrypted text from plain text"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
