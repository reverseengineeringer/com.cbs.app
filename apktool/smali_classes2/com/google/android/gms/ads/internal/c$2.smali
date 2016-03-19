.class final Lcom/google/android/gms/ads/internal/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/bg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/gk$a;

.field final synthetic b:Lcom/google/android/gms/internal/bg;

.field final synthetic c:Lcom/google/android/gms/ads/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/c;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/bg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/internal/gk$a;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/c$2;->b:Lcom/google/android/gms/internal/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->x:Lcom/google/android/gms/internal/bk;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/internal/gk$a;

    iget-object v1, v1, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->e()Lcom/google/android/gms/internal/gw;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/internal/gk$a;

    iget-object v0, v0, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/bh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/internal/gk$a;

    iget-object v3, v3, Lcom/google/android/gms/internal/gk$a;->b:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/bh;-><init>(Lcom/google/android/gms/ads/internal/g;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v2, 0x1

    iput v2, v0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->x:Lcom/google/android/gms/internal/bk;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/bk;->a(Lcom/google/android/gms/internal/bj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 1000
    :catch_0
    move-exception v0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    :cond_1
    new-instance v0, Lcom/google/android/gms/ads/internal/e;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/e;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/internal/gk$a;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/ads/internal/c;->a(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/ads/internal/e;)Lcom/google/android/gms/internal/hs;

    move-result-object v4

    new-instance v1, Lcom/google/android/gms/ads/internal/e$b;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/internal/gk$a;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/ads/internal/e$b;-><init>(Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/hs;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/e;->a(Lcom/google/android/gms/ads/internal/e$a;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/c$2$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/c$2$1;-><init>(Lcom/google/android/gms/ads/internal/c$2;Lcom/google/android/gms/ads/internal/e;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/hs;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/google/android/gms/ads/internal/c$2$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/ads/internal/c$2$2;-><init>(Lcom/google/android/gms/ads/internal/c$2;Lcom/google/android/gms/ads/internal/e;)V

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/hs;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzq;->C:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    invoke-static {}, Lcom/google/android/gms/ads/internal/o;->d()Lcom/google/android/gms/internal/fh;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzq;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/c$2;->a:Lcom/google/android/gms/internal/gk$a;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/c;->f:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzq;->d:Lcom/google/android/gms/internal/m;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/c;->j:Lcom/google/android/gms/internal/dl;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/c$2;->c:Lcom/google/android/gms/ads/internal/c;

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/c$2;->b:Lcom/google/android/gms/internal/bg;

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/fh;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/a;Lcom/google/android/gms/internal/gk$a;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/internal/fh$a;Lcom/google/android/gms/internal/bg;)Lcom/google/android/gms/internal/fi;

    move-result-object v0

    iput-object v0, v8, Lcom/google/android/gms/ads/internal/zzq;->h:Lcom/google/android/gms/internal/fi;

    goto :goto_0
.end method
