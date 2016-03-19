.class abstract Lcom/google/android/gms/internal/in$a;
.super Lcom/google/android/gms/internal/iw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/e;",
        ">",
        "Lcom/google/android/gms/internal/iw$a",
        "<TT;",
        "Lcom/google/android/gms/internal/im;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/b;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/a;->a:Lcom/google/android/gms/common/api/a$d;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/iw$a;-><init>(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/android/gms/common/api/a$c;)V
    .locals 1

    .prologue
    .line 0
    check-cast p1, Lcom/google/android/gms/internal/im;

    .line 2000
    invoke-virtual {p1}, Lcom/google/android/gms/internal/im;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ij;

    .line 1000
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/in$a;->a(Lcom/google/android/gms/internal/ij;)V

    .line 0
    return-void
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ij;)V
.end method
