.class public final Lcom/google/android/gms/cast/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/a$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/i$e;,
        Lcom/google/android/gms/cast/i$f;,
        Lcom/google/android/gms/cast/i$a;,
        Lcom/google/android/gms/cast/i$d;,
        Lcom/google/android/gms/cast/i$b;,
        Lcom/google/android/gms/cast/i$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/android/gms/cast/internal/m;

.field private final c:Lcom/google/android/gms/cast/i$d;

.field private d:Lcom/google/android/gms/cast/i$b;

.field private e:Lcom/google/android/gms/cast/i$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/i;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/cast/i$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/i$d;-><init>(Lcom/google/android/gms/cast/i;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/i;->c:Lcom/google/android/gms/cast/i$d;

    new-instance v0, Lcom/google/android/gms/cast/i$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/cast/i$1;-><init>(Lcom/google/android/gms/cast/i;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    iget-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    iget-object v1, p0, Lcom/google/android/gms/cast/i;->c:Lcom/google/android/gms/cast/i$d;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/internal/m;->a(Lcom/google/android/gms/cast/internal/n;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/cast/i;)V
    .locals 1

    .prologue
    .line 0
    .line 4000
    iget-object v0, p0, Lcom/google/android/gms/cast/i;->e:Lcom/google/android/gms/cast/i$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/i;->e:Lcom/google/android/gms/cast/i$c;

    invoke-interface {v0}, Lcom/google/android/gms/cast/i$c;->a()V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/cast/i;)V
    .locals 1

    .prologue
    .line 0
    .line 5000
    iget-object v0, p0, Lcom/google/android/gms/cast/i;->d:Lcom/google/android/gms/cast/i$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/i;->d:Lcom/google/android/gms/cast/i$b;

    invoke-interface {v0}, Lcom/google/android/gms/cast/i$b;->a()V

    .line 0
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/cast/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/i;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/cast/i;)Lcom/google/android/gms/cast/i$d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/i;->c:Lcom/google/android/gms/cast/i$d;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/cast/i;)Lcom/google/android/gms/cast/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/cast/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/m;->f()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/i$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/i$8;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/cast/i$8;-><init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;D)Lcom/google/android/gms/common/api/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "D)",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/i$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 2000
    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Volume cannot be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/cast/i$7;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/cast/i$7;-><init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;DLorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;JI)Lcom/google/android/gms/common/api/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "JI)",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/i$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    .line 1000
    new-instance v0, Lcom/google/android/gms/cast/i$6;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/i$6;-><init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;JILorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    .line 0
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/d;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Lcom/google/android/gms/cast/d;",
            "ZJ[J",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/i$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/i$2;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/cast/i$2;-><init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/d;ZJ[JLorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/j;)Lcom/google/android/gms/common/api/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Lcom/google/android/gms/cast/j;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/i$a;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackStyle cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/i$9;

    invoke-direct {v0, p0, p1, p1, p2}, Lcom/google/android/gms/cast/i$9;-><init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/j;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/i$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/i$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p1, v1}, Lcom/google/android/gms/cast/i$3;-><init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/common/api/b;[J)Lcom/google/android/gms/common/api/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "[J)",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/i$a;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trackIds cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/i$5;

    invoke-direct {v0, p0, p1, p1, p2}, Lcom/google/android/gms/cast/i$5;-><init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;[J)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/cast/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/i;->d:Lcom/google/android/gms/cast/i$b;

    return-void
.end method

.method public final a(Lcom/google/android/gms/cast/i$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/i;->e:Lcom/google/android/gms/cast/i$c;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/internal/m;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b()J
    .locals 3

    .prologue
    .line 0
    iget-object v2, p0, Lcom/google/android/gms/cast/i;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    .line 3000
    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/m;->h()Lcom/google/android/gms/cast/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->e()J

    move-result-wide v0

    .line 0
    :goto_0
    monitor-exit v2

    return-wide v0

    .line 3000
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lcom/google/android/gms/common/api/b;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/common/api/c",
            "<",
            "Lcom/google/android/gms/cast/i$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/cast/i$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p1, v1}, Lcom/google/android/gms/cast/i$4;-><init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/b;->b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/cast/g;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/m;->g()Lcom/google/android/gms/cast/g;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Lcom/google/android/gms/cast/d;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/cast/i;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/m;->h()Lcom/google/android/gms/cast/d;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/i;->b:Lcom/google/android/gms/cast/internal/m;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/internal/m;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
