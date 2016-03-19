.class final Lcom/nielsen/app/sdk/p;
.super Lcom/nielsen/app/sdk/g;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static c:Lcom/nielsen/app/sdk/p;


# instance fields
.field a:Lorg/json/JSONObject;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/p;->c:Lcom/nielsen/app/sdk/p;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/g;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    .line 114
    const-string v0, "Nls_Keychain"

    iput-object v0, p0, Lcom/nielsen/app/sdk/p;->b:Ljava/lang/String;

    .line 1092
    iget-object v0, p0, Lcom/nielsen/app/sdk/p;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/nielsen/app/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    .line 56
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/nielsen/app/sdk/p;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/nielsen/app/sdk/p;->c:Lcom/nielsen/app/sdk/p;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/nielsen/app/sdk/p;

    invoke-direct {v0, p0, p1}, Lcom/nielsen/app/sdk/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/nielsen/app/sdk/p;->c:Lcom/nielsen/app/sdk/p;

    .line 137
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/p;->c:Lcom/nielsen/app/sdk/p;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/p;->a()Lcom/nielsen/app/sdk/g$a;

    move-result-object v1

    iget-object v2, p0, Lcom/nielsen/app/sdk/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/nielsen/app/sdk/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/nielsen/app/sdk/g$a;

    .line 112
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/p;->a()Lcom/nielsen/app/sdk/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/g$a;->a()V

    .line 113
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 206
    const-wide/16 v0, 0x3e8

    .line 208
    iget-object v2, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    .line 209
    if-nez v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    const-string v3, "1000"

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    invoke-direct {p0}, Lcom/nielsen/app/sdk/p;->b()V

    .line 218
    :goto_0
    return-wide v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;J)Z
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-direct {p0}, Lcom/nielsen/app/sdk/p;->b()V

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    invoke-direct {p0}, Lcom/nielsen/app/sdk/p;->b()V

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    .line 192
    iget-object v0, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    .line 193
    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-direct {p0}, Lcom/nielsen/app/sdk/p;->b()V

    .line 202
    :goto_0
    return-object p2

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/p;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/nielsen/app/sdk/p;->b()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    .line 77
    :catch_2
    move-exception v0

    goto :goto_0
.end method
