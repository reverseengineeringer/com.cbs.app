.class final Lcom/nielsen/app/sdk/k;
.super Ljava/util/Timer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nielsen/app/sdk/k$a;
    }
.end annotation


# static fields
.field private static b:Lcom/nielsen/app/sdk/k;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nielsen/app/sdk/k$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    sput-object v0, Lcom/nielsen/app/sdk/k;->b:Lcom/nielsen/app/sdk/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/k;->a:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public static declared-synchronized a()Lcom/nielsen/app/sdk/k;
    .locals 3

    .prologue
    .line 133
    const-class v1, Lcom/nielsen/app/sdk/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nielsen/app/sdk/k;->b:Lcom/nielsen/app/sdk/k;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/nielsen/app/sdk/k;

    invoke-direct {v0}, Lcom/nielsen/app/sdk/k;-><init>()V

    .line 136
    sput-object v0, Lcom/nielsen/app/sdk/k;->b:Lcom/nielsen/app/sdk/k;

    .line 1120
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/nielsen/app/sdk/k;->a:Ljava/util/Map;

    .line 138
    :cond_0
    sget-object v0, Lcom/nielsen/app/sdk/k;->b:Lcom/nielsen/app/sdk/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/nielsen/app/sdk/k;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nielsen/app/sdk/k;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b()Lcom/nielsen/app/sdk/k;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/nielsen/app/sdk/k;->b:Lcom/nielsen/app/sdk/k;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 153
    iget-object v0, p0, Lcom/nielsen/app/sdk/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/k$a;

    .line 154
    if-eqz v0, :cond_1

    .line 156
    invoke-static {v0}, Lcom/nielsen/app/sdk/k$a;->a(Lcom/nielsen/app/sdk/k$a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-static {v0, v1}, Lcom/nielsen/app/sdk/k$a;->a(Lcom/nielsen/app/sdk/k$a;Z)Z

    :cond_0
    move v0, v1

    .line 161
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 216
    iget-object v0, p0, Lcom/nielsen/app/sdk/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/k$a;

    .line 217
    if-eqz v0, :cond_0

    .line 219
    invoke-static {v0}, Lcom/nielsen/app/sdk/k$a;->b(Lcom/nielsen/app/sdk/k$a;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 221
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lcom/nielsen/app/sdk/k$a;->a(Lcom/nielsen/app/sdk/k$a;Z)Z

    .line 222
    invoke-virtual {v0}, Lcom/nielsen/app/sdk/k$a;->cancel()Z

    .line 223
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget-object v0, p0, Lcom/nielsen/app/sdk/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-super {p0}, Ljava/util/Timer;->purge()I

    .line 227
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move v0, v1

    .line 229
    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/nielsen/app/sdk/k$a;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nielsen/app/sdk/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nielsen/app/sdk/k$a;

    return-object v0
.end method
