.class public Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/BroadcastReceiver;

.field private c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Z

.field private f:Ljava/util/Timer;

.field private g:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)J
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 158
    const-string v0, "setUpEndTimer(): setting up a timer for the end of current media"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->d()J

    move-result-wide v0

    .line 160
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->stopSelf()V

    .line 175
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c()V

    .line 165
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->f:Ljava/util/Timer;

    .line 166
    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$3;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    iput-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->g:Ljava/util/TimerTask;

    .line 174
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->f:Ljava/util/Timer;

    iget-object v3, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->g:Ljava/util/TimerTask;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 51
    .line 1196
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->V()V

    .line 1198
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h(I)V

    .line 1199
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->stopSelf()V

    .line 1214
    :goto_0
    return-void

    .line 1205
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 1212
    :goto_1
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1214
    invoke-virtual {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->stopSelf()V

    goto :goto_0

    .line 1205
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->N()J
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 1208
    :catch_0
    move-exception v2

    .line 1209
    :goto_2
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->a:Ljava/lang/String;

    const-string v4, "Failed to calculate the time left for media due to lack of connectivity"

    invoke-static {v3, v4, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1217
    :cond_2
    iget-object v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v2

    const-string v3, "media-end"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1220
    const-string v0, "handleTermination(): resetting the timer"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 1221
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b()V

    goto :goto_0

    .line 1208
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->g:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 180
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->g:Ljava/util/TimerTask;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->f:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 185
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->f:Ljava/util/Timer;

    .line 187
    :cond_1
    return-void
.end method

.method private d()J
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    const-string v1, "media-end"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "WIFI connectivity changed to "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 122
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->e:Z

    if-nez v0, :cond_2

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->e:Z

    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->i()V

    .line 126
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(ILjava/lang/String;)V

    .line 132
    :cond_0
    :goto_1
    return-void

    .line 121
    :cond_1
    const-string v0, "disabled"

    goto :goto_0

    .line 130
    :cond_2
    iput-boolean p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->e:Z

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "onCreate() is called"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 75
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->v()V

    .line 80
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$1;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    .line 93
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$2;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService$2;-><init>(Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;)V

    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    .line 111
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 114
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    const-string v0, "onDestroy()"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 145
    iput-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->c()V

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 150
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 66
    const-string v0, "onStartCommand() is called"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0}, Lcom/google/android/libraries/cast/companionlibrary/cast/reconnection/ReconnectionService;->b()V

    .line 68
    const/4 v0, 0x1

    return v0
.end method
