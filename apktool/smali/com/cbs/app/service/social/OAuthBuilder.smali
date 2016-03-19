.class public Lcom/cbs/app/service/social/OAuthBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:[C

.field private static final c:Ljava/lang/String;

.field private static d:Ljava/security/SecureRandom;


# instance fields
.field a:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const/16 v0, 0x3e

    new-array v0, v0, [C

    sput-object v0, Lcom/cbs/app/service/social/OAuthBuilder;->b:[C

    .line 35
    const-class v0, Lcom/cbs/app/service/social/OAuthBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/service/social/OAuthBuilder;->c:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/cbs/app/service/social/OAuthBuilder;->d:Ljava/security/SecureRandom;

    .line 41
    const/4 v1, 0x0

    .line 42
    const/16 v0, 0x30

    :goto_0
    const/16 v2, 0x39

    if-gt v0, v2, :cond_0

    .line 43
    sget-object v3, Lcom/cbs/app/service/social/OAuthBuilder;->b:[C

    add-int/lit8 v2, v1, 0x1

    aput-char v0, v3, v1

    .line 42
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v2

    goto :goto_0

    .line 45
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1

    .line 46
    sget-object v3, Lcom/cbs/app/service/social/OAuthBuilder;->b:[C

    add-int/lit8 v2, v1, 0x1

    aput-char v0, v3, v1

    .line 45
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v2

    goto :goto_1

    .line 48
    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_2

    .line 49
    sget-object v3, Lcom/cbs/app/service/social/OAuthBuilder;->b:[C

    add-int/lit8 v2, v1, 0x1

    aput-char v0, v3, v1

    .line 48
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v2

    goto :goto_2

    .line 51
    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/cbs/app/service/social/OAuthBuilder;->e:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    .line 61
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;Ljava/lang/String;I)Lcom/cbs/app/service/social/OAuthRequestBundle;
    .locals 7

    .prologue
    .line 215
    new-instance v6, Lcom/cbs/app/service/social/OAuthRequestBundle;

    invoke-direct {v6}, Lcom/cbs/app/service/social/OAuthRequestBundle;-><init>()V

    .line 216
    iput-object p1, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    .line 217
    iput-object p2, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->b:Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Lcom/cbs/app/service/social/OAuthBuilder;->c()V

    .line 219
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v1, "oauth_token"

    iget-object v2, p3, Lcom/cbs/app/service/social/TwitterOAuthTokens;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iput-object p5, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->a:Ljava/lang/String;

    .line 221
    iget-object v1, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    iget-object v2, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->b:Ljava/lang/String;

    iget-object v3, p3, Lcom/cbs/app/service/social/TwitterOAuthTokens;->b:Ljava/lang/String;

    iget-object v5, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/cbs/app/service/social/OAuthBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->d:Ljava/lang/String;

    .line 223
    iput p6, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->f:I

    .line 224
    const-string v0, "application/x-www-form-urlencoded;charset=UTF-8"

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->e:Ljava/lang/String;

    .line 225
    if-eqz p4, :cond_0

    iget-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->a:Ljava/lang/String;

    .line 228
    :cond_0
    return-object v6
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.twitter.com/oauth/authenticate?oauth_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 66
    iget-object v2, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v3, "oauth_timestamp"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    if-nez p4, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    .line 78
    :cond_1
    if-nez p5, :cond_3

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 83
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1092
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->e:Landroid/content/Context;

    const v2, 0x7f08026c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    if-eqz p3, :cond_2

    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    :cond_2
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v3, "HmacSHA1"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 1098
    :try_start_0
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 1099
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 1100
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 1101
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v2, "oauth_signature"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1105
    :goto_3
    return-void

    .line 81
    :cond_3
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 89
    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "OAuth"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 110
    const-string v0, ""

    .line 121
    :goto_0
    return-object v0

    .line 113
    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    const-string v2, "%2A"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%7E"

    const-string v2, "~"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 147
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v1, "oauth_signature_method"

    const-string v2, "HMAC-SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v3, "oauth_nonce"

    .line 1125
    const-string v1, ""

    .line 1127
    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x20

    if-gt v0, v4, :cond_0

    .line 1128
    sget-object v4, Lcom/cbs/app/service/social/OAuthBuilder;->d:Ljava/security/SecureRandom;

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v4

    .line 1129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/cbs/app/service/social/OAuthBuilder;->b:[C

    aget-char v4, v5, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v1, "oauth_version"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->e:Landroid/content/Context;

    const v1, 0x7f08026b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v2, "oauth_consumer_key"

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-void
.end method


# virtual methods
.method public final a()Lcom/cbs/app/service/social/OAuthRequestBundle;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 161
    new-instance v6, Lcom/cbs/app/service/social/OAuthRequestBundle;

    invoke-direct {v6}, Lcom/cbs/app/service/social/OAuthRequestBundle;-><init>()V

    .line 162
    const-string v0, "POST"

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->b:Ljava/lang/String;

    .line 163
    const-string v0, "https://api.twitter.com/oauth/request_token"

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    .line 164
    invoke-direct {p0}, Lcom/cbs/app/service/social/OAuthBuilder;->c()V

    .line 165
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v1, "oauth_callback"

    const-string v2, "twitter-authorize-response://cbs-on-twitter"

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    iget-object v2, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/cbs/app/service/social/OAuthBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->d:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    iput v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->f:I

    .line 169
    const-string v0, "text/html; charset=UTF-8"

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->e:Ljava/lang/String;

    .line 170
    return-object v6
.end method

.method public final a(Lcom/cbs/app/service/social/TwitterOAuthTokens;J)Lcom/cbs/app/service/social/OAuthRequestBundle;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://api.twitter.com/1.1/statuses/retweet/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    const-string v2, "POST"

    const/4 v6, 0x4

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;Ljava/lang/String;I)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;)Lcom/cbs/app/service/social/OAuthRequestBundle;
    .locals 7

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    const-string v1, "https://api.twitter.com/1.1/statuses/update.json"

    const-string v2, "POST"

    const-string v4, "include_entities=false"

    const/4 v6, 0x2

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;Ljava/lang/String;I)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;J)Lcom/cbs/app/service/social/OAuthRequestBundle;
    .locals 7

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "in_reply_to_status_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&include_entities=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 262
    const-string v1, "https://api.twitter.com/1.1/statuses/update.json"

    const-string v2, "POST"

    const/4 v6, 0x2

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;Ljava/lang/String;I)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/cbs/app/service/social/OAuthRequestBundle;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 200
    new-instance v6, Lcom/cbs/app/service/social/OAuthRequestBundle;

    invoke-direct {v6}, Lcom/cbs/app/service/social/OAuthRequestBundle;-><init>()V

    .line 201
    const-string v0, "POST"

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->b:Ljava/lang/String;

    .line 202
    const-string v0, "https://api.twitter.com/oauth/access_token"

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    .line 203
    invoke-direct {p0}, Lcom/cbs/app/service/social/OAuthBuilder;->c()V

    .line 204
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v1, "oauth_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v0, p0, Lcom/cbs/app/service/social/OAuthBuilder;->a:Ljava/util/TreeMap;

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    iget-object v2, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->b:Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-direct {p0}, Lcom/cbs/app/service/social/OAuthBuilder;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->d:Ljava/lang/String;

    .line 208
    const/4 v0, 0x1

    iput v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->f:I

    .line 209
    const-string v0, "application/x-www-form-urlencoded;charset=UTF-8"

    iput-object v0, v6, Lcom/cbs/app/service/social/OAuthRequestBundle;->e:Ljava/lang/String;

    .line 210
    return-object v6
.end method

.method public final b(Lcom/cbs/app/service/social/TwitterOAuthTokens;J)Lcom/cbs/app/service/social/OAuthRequestBundle;
    .locals 8

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    const-string v1, "https://api.twitter.com/1.1/favorites/create.json"

    const-string v2, "POST"

    const/4 v5, 0x0

    const/4 v6, 0x6

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;Ljava/lang/String;I)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cbs/app/service/social/OAuthRequestBundle;->c:Ljava/lang/String;

    .line 256
    return-object v0
.end method

.method public final b(Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;)Lcom/cbs/app/service/social/OAuthRequestBundle;
    .locals 7

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screen_name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/cbs/app/service/social/OAuthBuilder;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 240
    const-string v1, "https://api.twitter.com/1.1/friendships/create.json"

    const-string v2, "POST"

    const-string v4, "include_entities=false"

    const/4 v6, 0x3

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/cbs/app/service/social/OAuthBuilder;->a(Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/service/social/TwitterOAuthTokens;Ljava/lang/String;Ljava/lang/String;I)Lcom/cbs/app/service/social/OAuthRequestBundle;

    move-result-object v0

    return-object v0
.end method
