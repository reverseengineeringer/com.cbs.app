.class final Landroid/support/v7/media/MediaRouter$CallbackRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final mCallback:Landroid/support/v7/media/MediaRouter$Callback;

.field public mFlags:I

.field public final mRouter:Landroid/support/v7/media/MediaRouter;

.field public mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$Callback;)V
    .locals 1

    .prologue
    .line 1582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1583
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 1584
    iput-object p2, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mCallback:Landroid/support/v7/media/MediaRouter$Callback;

    .line 1585
    sget-object v0, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 1586
    return-void
.end method


# virtual methods
.method public final filterRouteEvent(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .prologue
    .line 1589
    iget v0, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$CallbackRecord;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
