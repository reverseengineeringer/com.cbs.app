.class final Lcom/google/android/gms/internal/cx$d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cx$d;->a()V
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
.field final synthetic a:Lcom/google/android/gms/internal/cx$d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cx$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$d$2;->a:Lcom/google/android/gms/internal/cx$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 0
    .line 2000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 1000
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$d$2;->a:Lcom/google/android/gms/internal/cx$d;

    invoke-static {v0}, Lcom/google/android/gms/internal/cx$d;->a(Lcom/google/android/gms/internal/cx$d;)Lcom/google/android/gms/internal/cx$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$e;->b()V

    .line 0
    return-void
.end method
