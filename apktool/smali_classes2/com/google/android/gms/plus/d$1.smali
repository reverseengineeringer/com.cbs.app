.class final Lcom/google/android/gms/plus/d$1;
.super Lcom/google/android/gms/common/api/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/a$b",
        "<",
        "Lcom/google/android/gms/plus/internal/d;",
        "Lcom/google/android/gms/plus/d$a;",
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
.method public final a()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final synthetic a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Ljava/lang/Object;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)Lcom/google/android/gms/common/api/a$c;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 0
    check-cast p4, Lcom/google/android/gms/plus/d$a;

    .line 1000
    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/plus/d$a;

    invoke-direct {p4, v5}, Lcom/google/android/gms/plus/d$a;-><init>(B)V

    :cond_0
    new-instance v8, Lcom/google/android/gms/plus/internal/d;

    new-instance v0, Lcom/google/android/gms/plus/internal/PlusSession;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/j;->b()Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/j;->d()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/kd;->a(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p4, Lcom/google/android/gms/plus/d$a;->b:Ljava/util/Set;

    new-array v4, v5, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/plus/internal/PlusCommonExtras;

    invoke-direct {v7}, Lcom/google/android/gms/plus/internal/PlusCommonExtras;-><init>()V

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/plus/internal/PlusSession;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/plus/internal/PlusCommonExtras;)V

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/plus/internal/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/j;Lcom/google/android/gms/plus/internal/PlusSession;Lcom/google/android/gms/common/api/b$b;Lcom/google/android/gms/common/api/b$c;)V

    .line 0
    return-object v8
.end method
