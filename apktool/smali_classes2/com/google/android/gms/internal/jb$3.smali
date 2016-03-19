.class final Lcom/google/android/gms/internal/jb$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jb$3;->a:Lcom/google/android/gms/internal/jb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g_()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/jb$3;->a:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jb;->e()Z

    move-result v0

    return v0
.end method
