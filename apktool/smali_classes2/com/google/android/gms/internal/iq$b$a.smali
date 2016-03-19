.class public final Lcom/google/android/gms/internal/iq$b$a;
.super Lcom/google/android/gms/internal/iq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/iq$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/gms/internal/iq$b;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/iq$b;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/iq$b$a;->b:Lcom/google/android/gms/internal/iq$b;

    iget-object v0, p1, Lcom/google/android/gms/internal/iq$b;->b:Lcom/google/android/gms/internal/iq;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/iq$a;-><init>(Lcom/google/android/gms/internal/iq;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/iq;->a()Lcom/google/android/gms/cast/internal/l;

    move-result-object v0

    const-string v1, "onDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$b$a;->b:Lcom/google/android/gms/internal/iq$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/iq$b;->b:Lcom/google/android/gms/internal/iq;

    invoke-static {v0}, Lcom/google/android/gms/internal/iq;->a(Lcom/google/android/gms/internal/iq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$b$a;->b:Lcom/google/android/gms/internal/iq$b;

    new-instance v1, Lcom/google/android/gms/internal/iq$c;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/iq$c;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iq$b;->a(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method

.method public final a(I)V
    .locals 5

    invoke-static {}, Lcom/google/android/gms/internal/iq;->a()Lcom/google/android/gms/cast/internal/l;

    move-result-object v0

    const-string v1, "onError: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/cast/internal/l;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$b$a;->b:Lcom/google/android/gms/internal/iq$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/iq$b;->b:Lcom/google/android/gms/internal/iq;

    invoke-static {v0}, Lcom/google/android/gms/internal/iq;->a(Lcom/google/android/gms/internal/iq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/iq$b$a;->b:Lcom/google/android/gms/internal/iq$b;

    new-instance v1, Lcom/google/android/gms/internal/iq$c;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/iq$c;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/iq$b;->a(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method
