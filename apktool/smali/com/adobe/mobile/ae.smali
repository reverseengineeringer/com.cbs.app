.class final Lcom/adobe/mobile/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/mobile/ae$a;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/Integer;

.field private static b:Lcom/adobe/mobile/o;

.field private static final c:Ljava/lang/Object;

.field private static d:I

.field private static e:I

.field private static f:Lcom/adobe/mobile/m;

.field private static final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 46
    const v0, 0xb7267

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/adobe/mobile/ae;->a:Ljava/lang/Integer;

    .line 120
    sput-object v2, Lcom/adobe/mobile/ae;->b:Lcom/adobe/mobile/o;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/ae;->c:Ljava/lang/Object;

    .line 150
    sput v1, Lcom/adobe/mobile/ae;->d:I

    .line 158
    sput v1, Lcom/adobe/mobile/ae;->e:I

    .line 166
    sput-object v2, Lcom/adobe/mobile/ae;->f:Lcom/adobe/mobile/m;

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/ae;->g:Ljava/lang/Object;

    return-void
.end method

.method protected static a()Lcom/adobe/mobile/o;
    .locals 2

    .prologue
    .line 129
    sget-object v1, Lcom/adobe/mobile/ae;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/ae;->b:Lcom/adobe/mobile/o;

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static a(Lcom/adobe/mobile/m;)V
    .locals 2

    .prologue
    .line 175
    sget-object v1, Lcom/adobe/mobile/ae;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    sput-object p0, Lcom/adobe/mobile/ae;->f:Lcom/adobe/mobile/m;

    .line 177
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static a(Lcom/adobe/mobile/o;)V
    .locals 2

    .prologue
    .line 123
    sget-object v1, Lcom/adobe/mobile/ae;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    sput-object p0, Lcom/adobe/mobile/ae;->b:Lcom/adobe/mobile/o;

    .line 125
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {}, Lcom/adobe/mobile/am;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lcom/adobe/mobile/am;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/ae$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/adobe/mobile/ae$1;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected static b()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/adobe/mobile/am;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/ae$2;

    invoke-direct {v1}, Lcom/adobe/mobile/ae$2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method protected static c()I
    .locals 1

    .prologue
    .line 155
    sget v0, Lcom/adobe/mobile/ae;->d:I

    return v0
.end method

.method protected static d()I
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/adobe/mobile/ae;->e:I

    return v0
.end method

.method protected static e()Lcom/adobe/mobile/m;
    .locals 2

    .prologue
    .line 169
    sget-object v1, Lcom/adobe/mobile/ae;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/ae;->f:Lcom/adobe/mobile/m;

    monitor-exit v1

    return-object v0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
