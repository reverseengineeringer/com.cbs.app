.class public abstract Lcom/google/android/gms/internal/io;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/io$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/io",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/li$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/jk$a;

.field private f:Ljava/lang/Integer;

.field private g:Lcom/google/android/gms/internal/iu;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:Lcom/google/android/gms/internal/kg;

.field private m:Lcom/google/android/gms/internal/y$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/jk$a;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/gms/internal/li$a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/li$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/li$a;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/io;->a:Lcom/google/android/gms/internal/li$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/io;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/io;->i:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/io;->j:Z

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/io;->k:J

    iput-object v1, p0, Lcom/google/android/gms/internal/io;->m:Lcom/google/android/gms/internal/y$a;

    iput v2, p0, Lcom/google/android/gms/internal/io;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/io;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/io;->e:Lcom/google/android/gms/internal/jk$a;

    new-instance v0, Lcom/google/android/gms/internal/bz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bz;-><init>()V

    .line 1000
    iput-object v0, p0, Lcom/google/android/gms/internal/io;->l:Lcom/google/android/gms/internal/kg;

    .line 2000
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 0
    :goto_1
    iput v0, p0, Lcom/google/android/gms/internal/io;->d:I

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2000
    goto :goto_1
.end method

.method protected static a(Lcom/google/android/gms/internal/lc;)Lcom/google/android/gms/internal/lc;
    .locals 0

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/io;)Lcom/google/android/gms/internal/li$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->a:Lcom/google/android/gms/internal/li$a;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/io;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/io",
            "<*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/io;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/iu;)Lcom/google/android/gms/internal/io;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/iu;",
            ")",
            "Lcom/google/android/gms/internal/io",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/io;->g:Lcom/google/android/gms/internal/iu;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/y$a;)Lcom/google/android/gms/internal/io;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/y$a;",
            ")",
            "Lcom/google/android/gms/internal/io",
            "<*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/io;->m:Lcom/google/android/gms/internal/y$a;

    return-object p0
.end method

.method protected abstract a(Lcom/google/android/gms/internal/gs;)Lcom/google/android/gms/internal/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/gs;",
            ")",
            "Lcom/google/android/gms/internal/jk",
            "<TT;>;"
        }
    .end annotation
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/google/android/gms/internal/li$a;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->a:Lcom/google/android/gms/internal/li$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/li$a;->a(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/io;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/io;->k:J

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/io;->b:I

    return v0
.end method

.method public final b(Lcom/google/android/gms/internal/lc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->e:Lcom/google/android/gms/internal/jk$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->e:Lcom/google/android/gms/internal/jk$a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/jk$a;->a(Lcom/google/android/gms/internal/lc;)V

    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->g:Lcom/google/android/gms/internal/iu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->g:Lcom/google/android/gms/internal/iu;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/iu;->b(Lcom/google/android/gms/internal/io;)V

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/li$a;->a:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/internal/io$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/io$1;-><init>(Lcom/google/android/gms/internal/io;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/io;->a:Lcom/google/android/gms/internal/li$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/li$a;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->a:Lcom/google/android/gms/internal/li$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/io;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/li$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/io;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-string v2, "%d ms: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/io;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/li;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/io;->d:I

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/io;

    .line 9000
    sget-object v0, Lcom/google/android/gms/internal/io$a;->b:Lcom/google/android/gms/internal/io$a;

    .line 10000
    sget-object v1, Lcom/google/android/gms/internal/io$a;->b:Lcom/google/android/gms/internal/io$a;

    .line 8000
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/google/android/gms/internal/io;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/io$a;->ordinal()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/io$a;->ordinal()I

    move-result v0

    sub-int v0, v1, v0

    .line 0
    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 0
    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/internal/io;->c:Ljava/lang/String;

    .line 0
    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/y$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->m:Lcom/google/android/gms/internal/y$a;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/io;->i:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/io;->h:Z

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->l:Lcom/google/android/gms/internal/kg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kg;->a()I

    move-result v0

    return v0
.end method

.method public final k()Lcom/google/android/gms/internal/kg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/io;->l:Lcom/google/android/gms/internal/kg;

    return-object v0
.end method

.method public final l()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/io;->j:Z

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/io;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5000
    iget v1, p0, Lcom/google/android/gms/internal/io;->d:I

    .line 0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/io;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "[X] "

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6000
    iget-object v2, p0, Lcom/google/android/gms/internal/io;->c:Ljava/lang/String;

    .line 0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7000
    sget-object v1, Lcom/google/android/gms/internal/io$a;->b:Lcom/google/android/gms/internal/io$a;

    .line 0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/io;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "[ ] "

    goto :goto_0
.end method
