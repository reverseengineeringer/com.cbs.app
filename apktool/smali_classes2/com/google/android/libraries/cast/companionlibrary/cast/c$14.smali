.class final Lcom/google/android/libraries/cast/companionlibrary/cast/c$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/f",
        "<",
        "Lcom/google/android/gms/cast/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)V
    .locals 0

    .prologue
    .line 1056
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$14;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/e;)V
    .locals 3

    .prologue
    .line 1056
    check-cast p1, Lcom/google/android/gms/cast/i$a;

    .line 2060
    invoke-interface {p1}, Lcom/google/android/gms/cast/i$a;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$14;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    sget v1, Lcom/google/android/libraries/cast/companionlibrary/R$string;->ccl_failed_seek:I

    invoke-interface {p1}, Lcom/google/android/gms/cast/i$a;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(II)V

    .line 1056
    :cond_0
    return-void
.end method
