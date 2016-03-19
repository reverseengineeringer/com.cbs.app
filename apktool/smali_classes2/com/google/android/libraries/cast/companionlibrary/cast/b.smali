.class public Lcom/google/android/libraries/cast/companionlibrary/cast/b;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/cast/companionlibrary/cast/a;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    .line 40
    iput-object p1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    .line 41
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetRouteCount previous: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 107
    iput v2, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    .line 108
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(I)V

    .line 110
    return-void
.end method

.method public onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRouteAdded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    if-ne v0, v2, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Z)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->t()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 76
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    const-string v1, "route-id"

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRouteAdded: Attempting to recover a session with info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f(I)V

    .line 83
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRouteAdded: Attempting to recover a session with device: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Lcom/google/android/gms/cast/CastDevice;)V

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(I)V

    .line 90
    return-void
.end method

.method public onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRouteRemoved: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Z)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    iget v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->b(I)V

    .line 99
    return-void
.end method

.method public onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRouteSelected: info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->t()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->f(I)V

    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->u()V

    .line 57
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->y()Lcom/google/android/libraries/cast/companionlibrary/a/c;

    move-result-object v0

    const-string v1, "route-id"

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/cast/companionlibrary/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastDevice;->a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Lcom/google/android/gms/cast/CastDevice;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRouteSelected: mSelectedDevice="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastDevice;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRouteUnselected: route="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/libraries/cast/companionlibrary/cast/b;->b:Lcom/google/android/libraries/cast/companionlibrary/cast/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/a;->a(Lcom/google/android/gms/cast/CastDevice;)V

    .line 63
    return-void
.end method
