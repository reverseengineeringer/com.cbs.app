.class final Lcom/google/android/gms/maps/StreetViewPanoramaView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/a/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/StreetViewPanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/ViewGroup;

.field private final b:Lcom/google/android/gms/maps/a/i;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/a/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/a/i;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/z;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->a:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onCreateView not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/i;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/c;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onInflate not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/i;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/i;->f()Lcom/google/android/gms/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/a/d;->a(Lcom/google/android/gms/a/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/c;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/maps/e;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    new-instance v1, Lcom/google/android/gms/maps/StreetViewPanoramaView$a$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/StreetViewPanoramaView$a$1;-><init>(Lcom/google/android/gms/maps/StreetViewPanoramaView$a;Lcom/google/android/gms/maps/e;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/i;->a(Lcom/google/android/gms/maps/a/ah;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/c;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/i;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/c;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/i;->b(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/c;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final c()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onDestroyView not allowed on StreetViewPanoramaViewDelegate"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/i;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/c;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final e()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaView$a;->b:Lcom/google/android/gms/maps/a/i;

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/i;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/c;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
