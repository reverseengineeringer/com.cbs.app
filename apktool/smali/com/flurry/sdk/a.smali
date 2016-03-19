.class public Lcom/flurry/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ap;


# instance fields
.field private a:Lcom/flurry/sdk/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/a;
    .locals 3

    .prologue
    .line 19
    const-class v1, Lcom/flurry/sdk/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object v0

    const-class v2, Lcom/flurry/sdk/a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/y;->a(Ljava/lang/Class;)Lcom/flurry/sdk/ap;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static f()Lcom/flurry/sdk/l;
    .locals 2

    .prologue
    .line 180
    invoke-static {}, Lcom/flurry/sdk/bf;->a()Lcom/flurry/sdk/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/bf;->c()Lcom/flurry/sdk/be;

    move-result-object v0

    .line 1184
    if-nez v0, :cond_0

    .line 1185
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1188
    :cond_0
    const-class v1, Lcom/flurry/sdk/l;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/be;->b(Ljava/lang/Class;)Lcom/flurry/sdk/bi;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/l;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/android/b;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/flurry/sdk/a;->f()Lcom/flurry/sdk/l;

    move-result-object v1

    .line 67
    sget-object v0, Lcom/flurry/android/b;->a:Lcom/flurry/android/b;

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/l;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/flurry/android/b;

    move-result-object v0

    .line 71
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 128
    invoke-static {}, Lcom/flurry/sdk/a;->f()Lcom/flurry/sdk/l;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/flurry/sdk/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/flurry/sdk/l;

    invoke-static {v0}, Lcom/flurry/sdk/be;->a(Ljava/lang/Class;)V

    .line 32
    new-instance v0, Lcom/flurry/sdk/i;

    invoke-direct {v0}, Lcom/flurry/sdk/i;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/i;

    .line 33
    return-void
.end method

.method public final c()Lcom/flurry/sdk/i;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/a;->a:Lcom/flurry/sdk/i;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/flurry/sdk/a;->f()Lcom/flurry/sdk/l;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/flurry/sdk/l;->d()V

    .line 54
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/flurry/sdk/a;->f()Lcom/flurry/sdk/l;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/flurry/sdk/l;->f()V

    .line 153
    :cond_0
    return-void
.end method
