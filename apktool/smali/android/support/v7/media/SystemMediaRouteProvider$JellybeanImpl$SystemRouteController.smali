.class public final Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SystemRouteController"
.end annotation


# instance fields
.field private final mRouteObj:Ljava/lang/Object;

.field final synthetic this$0:Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->this$0:Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    .line 692
    iput-object p2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    .line 693
    return-void
.end method


# virtual methods
.method public final onSetVolume(I)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->requestSetVolume(Ljava/lang/Object;I)V

    .line 698
    return-void
.end method

.method public final onUpdateVolume(I)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$SystemRouteController;->mRouteObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;->requestUpdateVolume(Ljava/lang/Object;I)V

    .line 703
    return-void
.end method
