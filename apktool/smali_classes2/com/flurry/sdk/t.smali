.class public Lcom/flurry/sdk/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/flurry/sdk/t;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/flurry/sdk/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/t;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/t;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/flurry/sdk/t;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/t;->a:Lcom/flurry/sdk/t;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/flurry/sdk/t;

    invoke-direct {v0}, Lcom/flurry/sdk/t;-><init>()V

    sput-object v0, Lcom/flurry/sdk/t;->a:Lcom/flurry/sdk/t;

    .line 21
    :cond_0
    sget-object v0, Lcom/flurry/sdk/t;->a:Lcom/flurry/sdk/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 35
    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 44
    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
