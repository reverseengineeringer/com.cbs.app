.class public abstract Lcom/google/android/gms/common/internal/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/a$c;
.implements Lcom/google/android/gms/common/internal/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/n$d;,
        Lcom/google/android/gms/common/internal/n$a;,
        Lcom/google/android/gms/common/internal/n$g;,
        Lcom/google/android/gms/common/internal/n$i;,
        Lcom/google/android/gms/common/internal/n$h;,
        Lcom/google/android/gms/common/internal/n$f;,
        Lcom/google/android/gms/common/internal/n$c;,
        Lcom/google/android/gms/common/internal/n$b;,
        Lcom/google/android/gms/common/internal/n$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/a$c;",
        "Lcom/google/android/gms/common/internal/o$a;"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field final b:Landroid/os/Handler;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lcom/google/android/gms/common/internal/j;

.field private final f:Landroid/os/Looper;

.field private final g:Lcom/google/android/gms/common/internal/p;

.field private final h:Lcom/google/android/gms/common/b;

.field private final i:Ljava/lang/Object;

.field private j:Lcom/google/android/gms/common/internal/v;

.field private k:Lcom/google/android/gms/common/api/b$e;

.field private l:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/internal/n",
            "<TT;>.c<*>;>;"
        }
    .end annotation
.end field

.field private n:Lcom/google/android/gms/common/internal/n$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/n",
            "<TT;>.e;"
        }
    .end annotation
.end field

.field private o:I

.field private final p:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Landroid/accounts/Account;

.field private final r:Lcom/google/android/gms/common/api/b$b;

.field private final s:Lcom/google/android/gms/common/api/b$c;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_esmobile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_googleme"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/internal/n;->d:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/j;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/p;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/p;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/b;->a()Lcom/google/android/gms/common/b;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/common/api/b$b;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/common/api/b$c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/n;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/p;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/j;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/p;Lcom/google/android/gms/common/b;ILcom/google/android/gms/common/internal/j;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->m:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/n;->o:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/content/Context;

    const-string v0, "Looper must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->f:Landroid/os/Looper;

    const-string v0, "Supervisor must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/p;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->g:Lcom/google/android/gms/common/internal/p;

    const-string v0, "API availability must not be null"

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/b;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->h:Lcom/google/android/gms/common/b;

    new-instance v0, Lcom/google/android/gms/common/internal/n$b;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/internal/n$b;-><init>(Lcom/google/android/gms/common/internal/n;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/n;->t:I

    invoke-static {p6}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/j;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->e:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/j;->a()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->q:Landroid/accounts/Account;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/j;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->p:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/n;->r:Lcom/google/android/gms/common/api/b$b;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/n;->s:Lcom/google/android/gms/common/api/b$c;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/n;)Lcom/google/android/gms/common/api/b$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->k:Lcom/google/android/gms/common/api/b$e;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/n;Lcom/google/android/gms/common/internal/v;)Lcom/google/android/gms/common/internal/v;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/n;->j:Lcom/google/android/gms/common/internal/v;

    return-object p1
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .prologue
    .line 0
    if-nez p0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(ILandroid/os/IInterface;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 0
    if-ne p1, v2, :cond_1

    move v3, v0

    :goto_0
    if-eqz p2, :cond_2

    move v2, v0

    :goto_1
    if-ne v3, v2, :cond_3

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/z;->b(Z)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/n;->o:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/n;->l:Landroid/os/IInterface;

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_3
    :pswitch_0
    monitor-exit v1

    return-void

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 2000
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->n:Lcom/google/android/gms/common/internal/n$e;

    if-eqz v0, :cond_4

    const-string v0, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling connect() while still connected, missing disconnect() for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->g:Lcom/google/android/gms/common/internal/p;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/n;->n:Lcom/google/android/gms/common/internal/n$e;

    .line 3000
    iget-object v4, p0, Lcom/google/android/gms/common/internal/n;->e:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/j;->g()Ljava/lang/String;

    move-result-object v4

    .line 2000
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/internal/p;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/internal/n$e;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/n$e;-><init>(Lcom/google/android/gms/common/internal/n;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->n:Lcom/google/android/gms/common/internal/n$e;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->g:Lcom/google/android/gms/common/internal/p;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/n;->n:Lcom/google/android/gms/common/internal/n$e;

    .line 4000
    iget-object v4, p0, Lcom/google/android/gms/common/internal/n;->e:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/j;->g()Ljava/lang/String;

    move-result-object v4

    .line 2000
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/internal/p;->a(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GmsClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to connect to service: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0x9

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5000
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->n:Lcom/google/android/gms/common/internal/n$e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->g:Lcom/google/android/gms/common/internal/p;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/n;->n:Lcom/google/android/gms/common/internal/n$e;

    .line 6000
    iget-object v4, p0, Lcom/google/android/gms/common/internal/n;->e:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/j;->g()Ljava/lang/String;

    move-result-object v4

    .line 5000
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/common/internal/p;->b(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->n:Lcom/google/android/gms/common/internal/n$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/n;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/n;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method private a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/n;->o:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/n;->a(ILandroid/os/IInterface;)V

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/n;IILandroid/os/IInterface;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/n;->a(IILandroid/os/IInterface;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/n;)Lcom/google/android/gms/common/api/b$b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->r:Lcom/google/android/gms/common/api/b$b;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/n;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/n;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->p:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/n;)Lcom/google/android/gms/common/api/b$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->s:Lcom/google/android/gms/common/api/b$c;

    return-object v0
.end method

.method protected static o()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, -0x1

    new-instance v4, Lcom/google/android/gms/common/internal/n$g;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/n$g;-><init>(Lcom/google/android/gms/common/internal/n;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2, p4, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/api/b$e;)V
    .locals 2

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/b$e;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/n;->k:Lcom/google/android/gms/common/api/b$e;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ILandroid/os/IInterface;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/s;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->w()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/internal/ValidateAccountRequest;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->p:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/n;->p:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3, v1}, Lcom/google/android/gms/common/internal/ValidateAccountRequest;-><init>(Lcom/google/android/gms/common/internal/s;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->j:Lcom/google/android/gms/common/internal/v;

    new-instance v1, Lcom/google/android/gms/common/internal/n$d;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/common/internal/n$d;-><init>(Lcom/google/android/gms/common/internal/n;I)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/internal/v;->a(Lcom/google/android/gms/common/internal/u;Lcom/google/android/gms/common/internal/ValidateAccountRequest;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/n;->a(I)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/internal/s;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/s;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->e()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/n;->t:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 7000
    iput-object v2, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->d:Ljava/lang/String;

    .line 8000
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->g:Landroid/os/Bundle;

    .line 0
    if-eqz p2, :cond_0

    .line 9000
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 0
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10000
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->q:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->q:Landroid/accounts/Account;

    .line 11000
    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/accounts/Account;

    .line 12000
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/s;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->e:Landroid/os/IBinder;

    .line 0
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->j:Lcom/google/android/gms/common/internal/v;

    new-instance v2, Lcom/google/android/gms/common/internal/n$d;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/common/internal/n$d;-><init>(Lcom/google/android/gms/common/internal/n;I)V

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/common/internal/v;->a(Lcom/google/android/gms/common/internal/u;Lcom/google/android/gms/common/internal/GetServiceRequest;)V

    :goto_2
    return-void

    .line 10000
    :cond_2
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "<<default account>>"

    const-string v3, "com.google"

    invoke-direct {v0, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 0
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/n;->a(I)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->q:Landroid/accounts/Account;

    .line 13000
    iput-object v0, v1, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/accounts/Account;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 0
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/n;->o:I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/n;->l:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v3, "mConnectState="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    const-string v0, " mService="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v2, :cond_0

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_0
    const-string v0, "CONNECTING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CONNECTED"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "DISCONNECTING"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "DISCONNECTED"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lcom/google/android/gms/common/internal/n;->m:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/n$c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n$c;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/internal/n;->a(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected e()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public g_()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/n;->o:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

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

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->j:Lcom/google/android/gms/common/internal/v;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->j:Lcom/google/android/gms/common/internal/v;

    invoke-interface {v0}, Lcom/google/android/gms/common/internal/v;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/n;->a(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/n$f;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/n$f;-><init>(Lcom/google/android/gms/common/internal/n;)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/n;->k:Lcom/google/android/gms/common/api/b$e;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/n;->b:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/n;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/n$f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/n$f;-><init>(Lcom/google/android/gms/common/internal/n;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/b$e;)V

    goto :goto_0
.end method

.method public final q()Z
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/n;->o:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

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

.method public final r()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final s()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->f:Landroid/os/Looper;

    return-object v0
.end method

.method protected final t()Lcom/google/android/gms/common/internal/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->e:Lcom/google/android/gms/common/internal/j;

    return-object v0
.end method

.method protected final u()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->l()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public final v()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/common/internal/n;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/internal/n;->o:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/n;->u()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->l:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/z;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/n;->l:Landroid/os/IInterface;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected w()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
