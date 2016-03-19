.class final Lcom/google/android/gms/cast/b$1;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$b",
        "<",
        "Lcom/google/android/gms/internal/ir;",
        "Lcom/google/android/gms/cast/b$a;",
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
    .locals 8

    .prologue
    .line 0
    check-cast p4, Lcom/google/android/gms/cast/b$a;

    .line 1000
    new-instance v0, Lcom/google/android/gms/internal/ir;

    iget-object v4, p4, Lcom/google/android/gms/cast/b$a;->a:Lcom/google/android/gms/cast/CastDevice;

    iget-object v5, p4, Lcom/google/android/gms/cast/b$a;->b:Lcom/google/android/gms/cast/b$b;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ir;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/b$b;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V

    .line 0
    return-object v0
.end method
