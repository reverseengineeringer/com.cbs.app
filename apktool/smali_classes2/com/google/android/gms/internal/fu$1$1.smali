.class final Lcom/google/android/gms/internal/fu$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fu$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/hl$c",
        "<",
        "Lcom/google/android/gms/internal/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/be;

.field final synthetic b:Lcom/google/android/gms/internal/fu$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fu$1;Lcom/google/android/gms/internal/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/fu$1$1;->b:Lcom/google/android/gms/internal/fu$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/fu$1$1;->a:Lcom/google/android/gms/internal/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/ad;

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/fu$1$1;->b:Lcom/google/android/gms/internal/fu$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fu$1;->c:Lcom/google/android/gms/internal/bg;

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$1$1;->a:Lcom/google/android/gms/internal/be;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "jsf"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/bg;->a(Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/fu$1$1;->b:Lcom/google/android/gms/internal/fu$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fu$1;->c:Lcom/google/android/gms/internal/bg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->b()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$1$1;->b:Lcom/google/android/gms/internal/fu$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/fu$1;->b:Lcom/google/android/gms/internal/fw;

    iget-object v1, v1, Lcom/google/android/gms/internal/fw;->c:Lcom/google/android/gms/internal/ci;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$1$1;->b:Lcom/google/android/gms/internal/fu$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/fu$1;->b:Lcom/google/android/gms/internal/fw;

    iget-object v1, v1, Lcom/google/android/gms/internal/fw;->d:Lcom/google/android/gms/internal/ci;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ci;)V

    :try_start_0
    const-string v0, "AFMA_buildAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/fu$1$1;->b:Lcom/google/android/gms/internal/fu$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/fu$1;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ad;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error requesting an ad url"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
