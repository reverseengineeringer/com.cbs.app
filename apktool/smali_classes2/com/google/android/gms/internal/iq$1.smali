.class final Lcom/google/android/gms/internal/iq$1;
.super Lcom/google/android/gms/internal/iv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/iq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/iq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/iq$1;->a:Lcom/google/android/gms/internal/iq;

    invoke-direct {p0}, Lcom/google/android/gms/internal/iv$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/iq;->a()Lcom/google/android/gms/cast/internal/l;

    move-result-object v0

    const-string v1, "onRemoteDisplayEnded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$1;->a:Lcom/google/android/gms/internal/iq;

    invoke-static {v0}, Lcom/google/android/gms/internal/iq;->a(Lcom/google/android/gms/internal/iq;)V

    return-void
.end method
