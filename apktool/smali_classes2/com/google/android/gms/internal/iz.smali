.class public final Lcom/google/android/gms/internal/iz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/jc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/iz$a;,
        Lcom/google/android/gms/internal/iz$d;,
        Lcom/google/android/gms/internal/iz$g;,
        Lcom/google/android/gms/internal/iz$b;,
        Lcom/google/android/gms/internal/iz$f;,
        Lcom/google/android/gms/internal/iz$c;,
        Lcom/google/android/gms/internal/iz$h;,
        Lcom/google/android/gms/internal/iz$e;,
        Lcom/google/android/gms/internal/iz$i;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/jb;

.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/common/b;

.field private e:Lcom/google/android/gms/common/ConnectionResult;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private final j:Landroid/os/Bundle;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/gms/internal/kz;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Lcom/google/android/gms/common/internal/s;

.field private q:Z

.field private r:Z

.field private final s:Lcom/google/android/gms/common/internal/j;

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/kz;",
            "Lcom/google/android/gms/internal/la;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jb;Lcom/google/android/gms/common/internal/j;Ljava/util/Map;Lcom/google/android/gms/common/b;Lcom/google/android/gms/common/api/a$b;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/jb;",
            "Lcom/google/android/gms/common/internal/j;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/a",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/common/b;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/kz;",
            "Lcom/google/android/gms/internal/la;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/iz;->g:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/iz;->h:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/iz;->j:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/iz;->k:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/iz;->v:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iput-object p2, p0, Lcom/google/android/gms/internal/iz;->s:Lcom/google/android/gms/common/internal/j;

    iput-object p3, p0, Lcom/google/android/gms/internal/iz;->t:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/iz;->d:Lcom/google/android/gms/common/b;

    iput-object p5, p0, Lcom/google/android/gms/internal/iz;->u:Lcom/google/android/gms/common/api/a$b;

    iput-object p6, p0, Lcom/google/android/gms/internal/iz;->b:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/iz;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/internal/ResolveAccountResponse;)V
    .locals 2

    .prologue
    .line 0
    .line 5000
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->b()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->a()Lcom/google/android/gms/common/internal/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/iz;->p:Lcom/google/android/gms/common/internal/s;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/iz;->o:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/iz;->q:Z

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/iz;->r:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->f()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->j()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->f()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->l:Lcom/google/android/gms/internal/kz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->l:Lcom/google/android/gms/internal/kz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kz;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->l:Lcom/google/android/gms/internal/kz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kz;->d()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->l:Lcom/google/android/gms/internal/kz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/kz;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/iz;->p:Lcom/google/android/gms/common/internal/s;

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/iz;->m:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/iz;->m:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/iz;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iz;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/iz;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->b:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->k()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->c:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->l()Z

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/iz;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->j()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/o;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/iz;->h:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/o;->a()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 0
    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a$b;->a()I

    move-result v3

    .line 3000
    if-ne p3, v0, :cond_0

    .line 4000
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 3000
    :goto_0
    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/iz;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/iz;->f:I

    if-ge v3, v2, :cond_5

    .line 0
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/iz;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v3, p0, Lcom/google/android/gms/internal/iz;->f:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4000
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/iz;->d:Lcom/google/android/gms/common/b;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->c()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/common/b;->b(I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 3000
    goto :goto_1
.end method

.method private b(I)Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/iz;->g:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->m()Ljava/lang/String;

    const-string v0, "GoogleApiClientConnecting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleApiClient connecting is in step "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/iz;->g:I

    invoke-static {v2}, Lcom/google/android/gms/internal/iz;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but received callback for step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/internal/iz;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/jb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    return-object v0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STEP_GETTING_SERVICE_BINDINGS"

    goto :goto_0

    :pswitch_1
    const-string v0, "STEP_VALIDATING_ACCOUNT"

    goto :goto_0

    :pswitch_2
    const-string v0, "STEP_AUTHENTICATING"

    goto :goto_0

    :pswitch_3
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .prologue
    .line 0
    .line 6000
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->h()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iz;->a(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->j()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->h()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/google/android/gms/internal/iz;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/iz;->n:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/kz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->l:Lcom/google/android/gms/internal/kz;

    return-object v0
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/iz;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/iz;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/iz;->i:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/iz;->i:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/jb;->m()Ljava/lang/String;

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/iz;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/iz;->e:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic f(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/common/internal/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->p:Lcom/google/android/gms/common/internal/s;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/iz;->i:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/iz;->n:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/iz;->o:Z

    if-eqz v0, :cond_0

    .line 2000
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/iz;->g:I

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/iz;->i:I

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v3, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v3, v3, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->g()V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v3, v3, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->v:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/jd;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/iz$h;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/iz$h;-><init>(Lcom/google/android/gms/internal/iz;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 0
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->h()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/google/android/gms/internal/iz;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->l()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/iz;->g:I

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->l()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/jb;->f:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->v:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/jd;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/iz$c;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/iz$c;-><init>(Lcom/google/android/gms/internal/iz;B)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private h()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/iz;->g:I

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/iz;->i:I

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v3, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v3, v3, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->i()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v3, v3, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->v:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/jd;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/iz$f;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/iz$f;-><init>(Lcom/google/android/gms/internal/iz;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method static synthetic h(Lcom/google/android/gms/internal/iz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->j()V

    return-void
.end method

.method private i()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->i()V

    invoke-static {}, Lcom/google/android/gms/internal/jd;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/iz$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/iz$1;-><init>(Lcom/google/android/gms/internal/iz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->l:Lcom/google/android/gms/internal/kz;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/iz;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->l:Lcom/google/android/gms/internal/kz;

    iget-object v1, p0, Lcom/google/android/gms/internal/iz;->p:Lcom/google/android/gms/common/internal/s;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/iz;->r:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/common/internal/s;Z)V

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/iz;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v2, v2, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$c;->c()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/iz;->h:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/google/android/gms/internal/iz;->h:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/iz;->b()V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v1, v1, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/o;->a(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->j:Landroid/os/Bundle;

    goto :goto_2
.end method

.method static synthetic i(Lcom/google/android/gms/internal/iz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->h()V

    return-void
.end method

.method private j()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/iz;->n:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/jb;->f:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$d;

    iget-object v2, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v2, v2, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v2, v2, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/internal/iz;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->e()Z

    move-result v0

    return v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/gms/internal/iz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->f()V

    return-void
.end method

.method private l()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->s:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->c()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->s:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v4, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v4, v4, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/j$a;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/j$a;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic l(Lcom/google/android/gms/internal/iz;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->g()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "R::",
            "Lcom/google/android/gms/common/api/e;",
            "T:",
            "Lcom/google/android/gms/internal/iw$a",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public final a()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/o;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v4, p0, Lcom/google/android/gms/internal/iz;->h:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/iz;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/iz;->e:Lcom/google/android/gms/common/ConnectionResult;

    iput v4, p0, Lcom/google/android/gms/internal/iz;->g:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/iz;->m:I

    iput-boolean v4, p0, Lcom/google/android/gms/internal/iz;->o:Z

    iput-boolean v4, p0, Lcom/google/android/gms/internal/iz;->q:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v1, v1, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$c;

    iget-object v2, p0, Lcom/google/android/gms/internal/iz;->t:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->a()Lcom/google/android/gms/common/api/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/a$b;->a()I

    move-result v2

    if-ne v2, v5, :cond_2

    move v2, v5

    :goto_1
    or-int/2addr v2, v3

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$c;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/google/android/gms/internal/iz;->n:Z

    iget v3, p0, Lcom/google/android/gms/internal/iz;->m:I

    if-ge v8, v3, :cond_0

    iput v8, p0, Lcom/google/android/gms/internal/iz;->m:I

    :cond_0
    if-eqz v8, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/iz;->k:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->c()Lcom/google/android/gms/common/api/a$d;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/iz$d;

    invoke-direct {v3, p0, v0, v8}, Lcom/google/android/gms/internal/iz$d;-><init>(Lcom/google/android/gms/internal/iz;Lcom/google/android/gms/common/api/a;I)V

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    iput-boolean v4, p0, Lcom/google/android/gms/internal/iz;->n:Z

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/iz;->n:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->s:Lcom/google/android/gms/common/internal/j;

    iget-object v1, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    .line 1000
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/internal/iz$g;

    invoke-direct {v5, p0, v4}, Lcom/google/android/gms/internal/iz$g;-><init>(Lcom/google/android/gms/internal/iz;B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->u:Lcom/google/android/gms/common/api/a$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/iz;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/jb;->b()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/iz;->s:Lcom/google/android/gms/common/internal/j;

    iget-object v4, p0, Lcom/google/android/gms/internal/iz;->s:Lcom/google/android/gms/common/internal/j;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/j;->h()Lcom/google/android/gms/internal/la;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/a$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Ljava/lang/Object;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)Lcom/google/android/gms/common/api/a$c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kz;

    iput-object v0, p0, Lcom/google/android/gms/internal/iz;->l:Lcom/google/android/gms/internal/kz;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/iz;->i:I

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->v:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/jd;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/iz$e;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/internal/iz$e;-><init>(Lcom/google/android/gms/internal/iz;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->j:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->i()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/a",
            "<*>;I)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/iz;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/iz;->b(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/a;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->i()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/internal/iw$a;)Lcom/google/android/gms/internal/iw$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/internal/iw$a",
            "<+",
            "Lcom/google/android/gms/common/api/e;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jb$f;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jb$f;->g()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->e:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/iz;->h:Z

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/iz;->k()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/iz;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jb;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iz;->a:Lcom/google/android/gms/internal/jb;

    iget-object v0, v0, Lcom/google/android/gms/internal/jb;->a:Lcom/google/android/gms/common/internal/o;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/o;->a()V

    goto :goto_1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/iz;->h:Z

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "CONNECTING"

    return-object v0
.end method
