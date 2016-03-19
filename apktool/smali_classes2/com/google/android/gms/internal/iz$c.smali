.class final Lcom/google/android/gms/internal/iz$c;
.super Lcom/google/android/gms/internal/iz$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/iz;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/iz$c;->a:Lcom/google/android/gms/internal/iz;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/iz$i;-><init>(Lcom/google/android/gms/internal/iz;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/iz;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/iz$c;-><init>(Lcom/google/android/gms/internal/iz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/iz$c;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v0}, Lcom/google/android/gms/internal/iz;->e(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/kz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iz$c;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v1}, Lcom/google/android/gms/internal/iz;->f(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/common/internal/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/iz$c;->a:Lcom/google/android/gms/internal/iz;

    invoke-static {v2}, Lcom/google/android/gms/internal/iz;->c(Lcom/google/android/gms/internal/iz;)Lcom/google/android/gms/internal/jb;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/jb;->f:Ljava/util/Set;

    new-instance v3, Lcom/google/android/gms/internal/iz$a;

    iget-object v4, p0, Lcom/google/android/gms/internal/iz$c;->a:Lcom/google/android/gms/internal/iz;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/iz$a;-><init>(Lcom/google/android/gms/internal/iz;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/kz;->a(Lcom/google/android/gms/common/internal/s;Ljava/util/Set;Lcom/google/android/gms/signin/internal/e;)V

    return-void
.end method
