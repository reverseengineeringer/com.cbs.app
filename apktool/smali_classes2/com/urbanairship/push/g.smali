.class public final Lcom/urbanairship/push/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/urbanairship/l;


# direct methods
.method constructor <init>(Lcom/urbanairship/l;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/urbanairship/push/g;->a:Lcom/urbanairship/l;

    .line 71
    return-void
.end method

.method static d()V
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 174
    return-void
.end method

.method static e()V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    const-string v2, "com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    return-void
.end method

.method private declared-synchronized f()V
    .locals 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 114
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/urbanairship/push/g;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/g;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.nameduser.NAMED_USER_ID_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/urbanairship/push/g;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-static {}, Lcom/urbanairship/p;->h()Landroid/content/Context;

    move-result-object v0

    .line 1181
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/urbanairship/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1182
    const-string v2, "com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 125
    invoke-static {}, Lcom/urbanairship/push/g;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_1
    monitor-exit p0

    return-void

    .line 111
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NamedUser - Skipping update. Named user ID trimmed already matches existing named user: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/urbanairship/push/g;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.nameduser.NAMED_USER_ID_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/urbanairship/push/g;->a:Lcom/urbanairship/l;

    const-string v1, "com.urbanairship.nameduser.CHANGE_TOKEN_KEY"

    invoke-virtual {v0, v1}, Lcom/urbanairship/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final declared-synchronized c()V
    .locals 2

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/urbanairship/push/g;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/urbanairship/push/g;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
