.class public Lcom/flurry/sdk/fj;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/fj$a;
    }
.end annotation


# static fields
.field private static c:Lcom/flurry/sdk/fj;


# instance fields
.field a:Z

.field b:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/flurry/sdk/fj;->d:Z

    .line 68
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v1

    .line 69
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/flurry/sdk/fj;->d:Z

    .line 71
    invoke-direct {p0, v1}, Lcom/flurry/sdk/fj;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/fj;->b:Z

    .line 73
    iget-boolean v0, p0, Lcom/flurry/sdk/fj;->d:Z

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/flurry/sdk/fj;->c()V

    .line 76
    :cond_1
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/fj;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/flurry/sdk/fj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fj;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/flurry/sdk/fj;

    invoke-direct {v0}, Lcom/flurry/sdk/fj;-><init>()V

    sput-object v0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fj;

    .line 25
    :cond_0
    sget-object v0, Lcom/flurry/sdk/fj;->c:Lcom/flurry/sdk/fj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 120
    iget-boolean v1, p0, Lcom/flurry/sdk/fj;->d:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/fj;->d()Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized c()V
    .locals 3

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/fj;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/flurry/sdk/fj;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flurry/sdk/fj;->b:Z

    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/fj;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/y;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/flurry/sdk/fj$a;
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/flurry/sdk/fj;->d:Z

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/flurry/sdk/fj$a;->a:Lcom/flurry/sdk/fj$a;

    .line 165
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/fj;->d()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    :cond_1
    sget-object v0, Lcom/flurry/sdk/fj$a;->a:Lcom/flurry/sdk/fj$a;

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 162
    :pswitch_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    sget-object v0, Lcom/flurry/sdk/fj$a;->b:Lcom/flurry/sdk/fj$a;

    goto :goto_0

    .line 149
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/fj$a;->c:Lcom/flurry/sdk/fj$a;

    goto :goto_0

    .line 156
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/fj$a;->d:Lcom/flurry/sdk/fj$a;

    goto :goto_0

    .line 159
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/fj$a;->a:Lcom/flurry/sdk/fj$a;

    goto :goto_0

    .line 165
    :cond_3
    sget-object v0, Lcom/flurry/sdk/fj$a;->a:Lcom/flurry/sdk/fj$a;

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/flurry/sdk/fj;->a(Landroid/content/Context;)Z

    move-result v0

    .line 109
    iget-boolean v1, p0, Lcom/flurry/sdk/fj;->b:Z

    if-eq v1, v0, :cond_0

    .line 110
    iput-boolean v0, p0, Lcom/flurry/sdk/fj;->b:Z

    .line 112
    new-instance v1, Lcom/flurry/sdk/s;

    invoke-direct {v1}, Lcom/flurry/sdk/s;-><init>()V

    .line 113
    iput-boolean v0, v1, Lcom/flurry/sdk/s;->a:Z

    .line 114
    invoke-virtual {p0}, Lcom/flurry/sdk/fj;->b()Lcom/flurry/sdk/fj$a;

    move-result-object v0

    iput-object v0, v1, Lcom/flurry/sdk/s;->b:Lcom/flurry/sdk/fj$a;

    .line 1025
    invoke-static {}, Lcom/flurry/sdk/ai;->a()Lcom/flurry/sdk/ai;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ai;->a(Lcom/flurry/sdk/ag;)V

    .line 117
    :cond_0
    return-void
.end method
