.class final Lcom/google/android/gms/internal/cx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cx$e;

.field final synthetic b:Lcom/google/android/gms/internal/cx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cx;Lcom/google/android/gms/internal/cx$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$1;->b:Lcom/google/android/gms/internal/cx;

    iput-object p2, p0, Lcom/google/android/gms/internal/cx$1;->a:Lcom/google/android/gms/internal/cx$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->a(Lcom/google/android/gms/internal/cx;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/cx$1;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v1}, Lcom/google/android/gms/internal/cx;->b(Lcom/google/android/gms/internal/cx;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    .line 1000
    new-instance v2, Lcom/google/android/gms/internal/ac;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/gms/internal/ac;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/m;)V

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/cx$1$1;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/cx$1$1;-><init>(Lcom/google/android/gms/internal/cx$1;Lcom/google/android/gms/internal/aa;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/aa$a;)V

    const-string v0, "/jsLoaded"

    new-instance v1, Lcom/google/android/gms/internal/cx$1$2;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/cx$1$2;-><init>(Lcom/google/android/gms/internal/cx$1;Lcom/google/android/gms/internal/aa;)V

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/aa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    new-instance v0, Lcom/google/android/gms/internal/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/he;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/cx$1$3;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/cx$1$3;-><init>(Lcom/google/android/gms/internal/cx$1;Lcom/google/android/gms/internal/aa;Lcom/google/android/gms/internal/he;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/Object;)V

    const-string v0, "/requestReload"

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/aa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->f(Lcom/google/android/gms/internal/cx;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->f(Lcom/google/android/gms/internal/cx;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/aa;->a(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/gw;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/cx$1$4;

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/cx$1$4;-><init>(Lcom/google/android/gms/internal/cx$1;Lcom/google/android/gms/internal/aa;)V

    sget v2, Lcom/google/android/gms/internal/cx$a;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->f(Lcom/google/android/gms/internal/cx;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->f(Lcom/google/android/gms/internal/cx;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/aa;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$1;->b:Lcom/google/android/gms/internal/cx;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx;->f(Lcom/google/android/gms/internal/cx;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/aa;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
