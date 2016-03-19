.class public Lcom/cbs/app/cast/ReconnectionService;
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
    .line 52
    const-class v0, Lcom/cbs/app/cast/ReconnectionService;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/cast/ReconnectionService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/cast/ReconnectionService;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/cast/ReconnectionService;)J
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/cbs/app/cast/ReconnectionService;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/cbs/app/cast/ReconnectionService;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 162
    const-string v0, "setUpEndTimer(): setting up a timer for the end of current media"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/cbs/app/cast/ReconnectionService;->d()J

    move-result-wide v0

    .line 164
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/cbs/app/cast/ReconnectionService;->stopSelf()V

    .line 179
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/cbs/app/cast/ReconnectionService;->c()V

    .line 169
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/cbs/app/cast/ReconnectionService;->f:Ljava/util/Timer;

    .line 170
    new-instance v2, Lcom/cbs/app/cast/ReconnectionService$3;

    invoke-direct {v2, p0}, Lcom/cbs/app/cast/ReconnectionService$3;-><init>(Lcom/cbs/app/cast/ReconnectionService;)V

    iput-object v2, p0, Lcom/cbs/app/cast/ReconnectionService;->g:Ljava/util/TimerTask;

    .line 178
    iget-object v2, p0, Lcom/cbs/app/cast/ReconnectionService;->f:Ljava/util/Timer;

    iget-object v3, p0, Lcom/cbs/app/cast/ReconnectionService;->g:Ljava/util/TimerTask;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/cbs/app/cast/ReconnectionService;)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 50
    .line 2200
    iget-object v2, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2201
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->V()V

    .line 2202
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->h(I)V

    .line 2203
    invoke-virtual {p0}, Lcom/cbs/app/cast/ReconnectionService;->stopSelf()V

    .line 2218
    :goto_0
    return-void

    .line 2209
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->G()Z
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 2216
    :goto_1
    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 2218
    invoke-virtual {p0}, Lcom/cbs/app/cast/ReconnectionService;->stopSelf()V

    goto :goto_0

    .line 2209
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->N()J
    :try_end_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 2212
    :catch_0
    move-exception v2

    .line 2213
    :goto_2
    sget-object v3, Lcom/cbs/app/cast/ReconnectionService;->a:Ljava/lang/String;

    const-string v4, "Failed to calculate the time left for media due to lack of connectivity"

    invoke-static {v3, v4, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2221
    :cond_2
    iget-object v2, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v2

    const-string v3, "media-end"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2224
    const-string v0, "handleTermination(): resetting the timer"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 2225
    invoke-direct {p0}, Lcom/cbs/app/cast/ReconnectionService;->b()V

    goto :goto_0

    .line 2212
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->g:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->g:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 184
    iput-object v1, p0, Lcom/cbs/app/cast/ReconnectionService;->g:Ljava/util/TimerTask;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->f:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 189
    iput-object v1, p0, Lcom/cbs/app/cast/ReconnectionService;->f:Ljava/util/Timer;

    .line 191
    :cond_1
    return-void
.end method

.method private d()J
    .locals 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    const-string v1, "media-end"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 123
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

    .line 124
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/cbs/app/cast/ReconnectionService;->e:Z

    if-nez v0, :cond_2

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/cast/ReconnectionService;->e:Z

    .line 126
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->i()V

    .line 128
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(ILjava/lang/String;)V

    .line 134
    :cond_0
    :goto_1
    return-void

    .line 123
    :cond_1
    const-string v0, "disabled"

    goto :goto_0

    .line 132
    :cond_2
    iput-boolean p1, p0, Lcom/cbs/app/cast/ReconnectionService;->e:Z

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "onCreate() is called"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 76
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->c:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 1741
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->g(I)V

    .line 81
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/cbs/app/cast/ReconnectionService$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/ReconnectionService$1;-><init>(Lcom/cbs/app/cast/ReconnectionService;)V

    iput-object v1, p0, Lcom/cbs/app/cast/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    .line 94
    iget-object v1, p0, Lcom/cbs/app/cast/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cbs/app/cast/ReconnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v1, Lcom/cbs/app/cast/ReconnectionService$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/cast/ReconnectionService$2;-><init>(Lcom/cbs/app/cast/ReconnectionService;)V

    iput-object v1, p0, Lcom/cbs/app/cast/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    .line 112
    iget-object v1, p0, Lcom/cbs/app/cast/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/cbs/app/cast/ReconnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 116
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    const-string v0, "onDestroy()"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 140
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/ReconnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    iput-object v1, p0, Lcom/cbs/app/cast/ReconnectionService;->b:Landroid/content/BroadcastReceiver;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/cbs/app/cast/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/ReconnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iput-object v1, p0, Lcom/cbs/app/cast/ReconnectionService;->d:Landroid/content/BroadcastReceiver;

    .line 151
    :cond_1
    invoke-direct {p0}, Lcom/cbs/app/cast/ReconnectionService;->c()V

    .line 153
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 154
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 65
    const-string v0, "onStartCommand() is called"

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Lcom/cbs/app/cast/ReconnectionService;->b()V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
