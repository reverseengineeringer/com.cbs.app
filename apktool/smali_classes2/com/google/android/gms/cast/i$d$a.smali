.class final Lcom/google/android/gms/cast/i$d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/i$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/f",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/cast/i$d;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/i$d;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/i$d$a;->a:Lcom/google/android/gms/cast/i$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/google/android/gms/cast/i$d$a;->b:J

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/e;)V
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 1000
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/i$d$a;->a:Lcom/google/android/gms/cast/i$d;

    iget-object v0, v0, Lcom/google/android/gms/cast/i$d;->a:Lcom/google/android/gms/cast/i;

    invoke-static {v0}, Lcom/google/android/gms/cast/i;->e(Lcom/google/android/gms/cast/i;)Lcom/google/android/gms/cast/internal/m;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/cast/i$d$a;->b:J

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/cast/internal/m;->a(JI)V

    .line 0
    :cond_0
    return-void
.end method
