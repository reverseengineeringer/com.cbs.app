.class final Lcom/google/android/gms/cast/i$2;
.super Lcom/google/android/gms/cast/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/i;->a(Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/d;ZJ[JLorg/json/JSONObject;)Lcom/google/android/gms/common/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/b;

.field final synthetic b:Lcom/google/android/gms/cast/d;

.field final synthetic c:Z

.field final synthetic d:J

.field final synthetic e:[J

.field final synthetic f:Lorg/json/JSONObject;

.field final synthetic g:Lcom/google/android/gms/cast/i;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/i;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/common/api/b;Lcom/google/android/gms/cast/d;ZJ[JLorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/i$2;->g:Lcom/google/android/gms/cast/i;

    iput-object p3, p0, Lcom/google/android/gms/cast/i$2;->a:Lcom/google/android/gms/common/api/b;

    iput-object p4, p0, Lcom/google/android/gms/cast/i$2;->b:Lcom/google/android/gms/cast/d;

    iput-boolean p5, p0, Lcom/google/android/gms/cast/i$2;->c:Z

    iput-wide p6, p0, Lcom/google/android/gms/cast/i$2;->d:J

    iput-object p8, p0, Lcom/google/android/gms/cast/i$2;->e:[J

    iput-object p9, p0, Lcom/google/android/gms/cast/i$2;->f:Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lcom/google/android/gms/cast/i$e;-><init>(Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 9

    .prologue
    .line 0
    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/cast/i$2;->g:Lcom/google/android/gms/cast/i;

    invoke-static {v0}, Lcom/google/android/gms/cast/i;->c(Lcom/google/android/gms/cast/i;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/i$2;->g:Lcom/google/android/gms/cast/i;

    invoke-static {v0}, Lcom/google/android/gms/cast/i;->d(Lcom/google/android/gms/cast/i;)Lcom/google/android/gms/cast/i$d;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/i$2;->a:Lcom/google/android/gms/common/api/b;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/i$d;->a(Lcom/google/android/gms/common/api/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/cast/i$2;->g:Lcom/google/android/gms/cast/i;

    invoke-static {v0}, Lcom/google/android/gms/cast/i;->e(Lcom/google/android/gms/cast/i;)Lcom/google/android/gms/cast/internal/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/i$2;->h:Lcom/google/android/gms/cast/internal/o;

    iget-object v2, p0, Lcom/google/android/gms/cast/i$2;->b:Lcom/google/android/gms/cast/d;

    iget-boolean v3, p0, Lcom/google/android/gms/cast/i$2;->c:Z

    iget-wide v4, p0, Lcom/google/android/gms/cast/i$2;->d:J

    iget-object v6, p0, Lcom/google/android/gms/cast/i$2;->e:[J

    iget-object v7, p0, Lcom/google/android/gms/cast/i$2;->f:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/cast/internal/m;->a(Lcom/google/android/gms/cast/internal/o;Lcom/google/android/gms/cast/d;ZJ[JLorg/json/JSONObject;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/cast/i$2;->g:Lcom/google/android/gms/cast/i;

    invoke-static {v0}, Lcom/google/android/gms/cast/i;->d(Lcom/google/android/gms/cast/i;)Lcom/google/android/gms/cast/i$d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/i$d;->a(Lcom/google/android/gms/common/api/b;)V

    :goto_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x834

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/i$2;->b(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/i$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/i$2;->a(Lcom/google/android/gms/common/api/e;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/cast/i$2;->g:Lcom/google/android/gms/cast/i;

    invoke-static {v0}, Lcom/google/android/gms/cast/i;->d(Lcom/google/android/gms/cast/i;)Lcom/google/android/gms/cast/i$d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/i$d;->a(Lcom/google/android/gms/common/api/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/cast/i$2;->g:Lcom/google/android/gms/cast/i;

    invoke-static {v1}, Lcom/google/android/gms/cast/i;->d(Lcom/google/android/gms/cast/i;)Lcom/google/android/gms/cast/i$d;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/i$d;->a(Lcom/google/android/gms/common/api/b;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
