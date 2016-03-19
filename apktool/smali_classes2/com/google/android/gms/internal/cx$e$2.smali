.class final Lcom/google/android/gms/internal/cx$e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/hl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cx$e;->a()Lcom/google/android/gms/internal/cx$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cx$d;

.field final synthetic b:Lcom/google/android/gms/internal/cx$e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cx$e;Lcom/google/android/gms/internal/cx$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cx$e$2;->b:Lcom/google/android/gms/internal/cx$e;

    iput-object p2, p0, Lcom/google/android/gms/internal/cx$e$2;->a:Lcom/google/android/gms/internal/cx$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/b;->a(I)Z

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/cx$e$2;->a:Lcom/google/android/gms/internal/cx$d;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cx$d;->d()V

    return-void
.end method
