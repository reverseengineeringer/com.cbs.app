.class final Lcom/google/android/libraries/cast/companionlibrary/cast/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/cast/companionlibrary/cast/a;
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
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$4;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/e;)V
    .locals 2

    .prologue
    .line 1002
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 2006
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2007
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->A()Ljava/lang/String;

    .line 2009
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$4;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->d(I)V

    :goto_0
    return-void

    .line 2011
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->A()Ljava/lang/String;

    goto :goto_0
.end method
