.class final Lcom/google/android/libraries/cast/companionlibrary/cast/c$10;
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
    .line 881
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$10;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/e;)V
    .locals 3

    .prologue
    .line 881
    check-cast p1, Lcom/google/android/gms/cast/i$a;

    .line 1885
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/c$10;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/c;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    .line 1886
    invoke-interface {p1}, Lcom/google/android/gms/cast/i$a;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;->b(I)V

    goto :goto_0

    .line 881
    :cond_0
    return-void
.end method
