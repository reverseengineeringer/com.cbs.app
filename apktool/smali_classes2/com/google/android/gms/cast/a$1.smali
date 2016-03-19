.class final Lcom/google/android/gms/cast/a$1;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$b",
        "<",
        "Lcom/google/android/gms/cast/internal/e;",
        "Lcom/google/android/gms/cast/a$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Ljava/lang/Object;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)Lcom/google/android/gms/common/api/a$c;
    .locals 11

    .prologue
    .line 0
    check-cast p4, Lcom/google/android/gms/cast/a$c;

    .line 1000
    const-string v0, "Setting the API options is required."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/cast/internal/e;

    iget-object v5, p4, Lcom/google/android/gms/cast/a$c;->a:Lcom/google/android/gms/cast/CastDevice;

    invoke-static {p4}, Lcom/google/android/gms/cast/a$c;->a(Lcom/google/android/gms/cast/a$c;)I

    move-result v0

    int-to-long v6, v0

    iget-object v8, p4, Lcom/google/android/gms/cast/a$c;->b:Lcom/google/android/gms/cast/a$d;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/cast/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/cast/a$d;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V

    .line 0
    return-object v1
.end method
