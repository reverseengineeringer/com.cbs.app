.class public final Lcom/google/android/gms/internal/cx$e;
.super Lcom/google/android/gms/internal/hm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hm",
        "<",
        "Lcom/google/android/gms/internal/aa;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:Lcom/google/android/gms/internal/cx$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cx$b",
            "<",
            "Lcom/google/android/gms/internal/aa;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cx$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/cx$b",
            "<",
            "Lcom/google/android/gms/internal/aa;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/hm;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/cx$e;->d:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$e;->e:Lcom/google/android/gms/internal/cx$b;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/cx$e;->f:Z

    iput v1, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/cx$e;)Lcom/google/android/gms/internal/cx$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$e;->e:Lcom/google/android/gms/internal/cx$b;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/cx$e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->a(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/cx$e;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    if-nez v0, :cond_1

    .line 3000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/cx$e$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cx$e$3;-><init>(Lcom/google/android/gms/internal/cx$e;)V

    new-instance v2, Lcom/google/android/gms/internal/hl$b;

    invoke-direct {v2}, Lcom/google/android/gms/internal/hl$b;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/cx$e;->a(Lcom/google/android/gms/internal/hl$c;Lcom/google/android/gms/internal/hl$a;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4000
    :cond_1
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    goto :goto_1

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/cx$d;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/cx$d;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/cx$d;-><init>(Lcom/google/android/gms/internal/cx$e;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/cx$e;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/cx$e$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/cx$e$1;-><init>(Lcom/google/android/gms/internal/cx$e;Lcom/google/android/gms/internal/cx$d;)V

    new-instance v3, Lcom/google/android/gms/internal/cx$e$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/cx$e$2;-><init>(Lcom/google/android/gms/internal/cx$e;Lcom/google/android/gms/internal/cx$d;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/cx$e;->a(Lcom/google/android/gms/internal/hl$c;Lcom/google/android/gms/internal/hl$a;)V

    iget v0, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->a(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/cx$e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->a(Z)V

    .line 1000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/cx$e;->f()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/cx$e;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/cx$e;->g:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->a(Z)V

    .line 2000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/cx$e;->f:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/cx$e;->f()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
