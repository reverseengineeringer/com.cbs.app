.class final Lcom/google/android/libraries/cast/companionlibrary/cast/a$3;
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
        "Lcom/google/android/gms/cast/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/common/api/e;)V
    .locals 4

    .prologue
    .line 976
    check-cast p1, Lcom/google/android/gms/cast/a$a;

    .line 1980
    invoke-interface {p1}, Lcom/google/android/gms/cast/a$a;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1981
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->A()Ljava/lang/String;

    .line 1982
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-interface {p1}, Lcom/google/android/gms/cast/a$a;->b()Lcom/google/android/gms/cast/ApplicationMetadata;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/cast/a$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/gms/cast/a$a;->d()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Z)V

    :goto_0
    return-void

    .line 1986
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->A()Ljava/lang/String;

    .line 1987
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/a$3;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-interface {p1}, Lcom/google/android/gms/cast/a$a;->a()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->c(I)V

    goto :goto_0
.end method
