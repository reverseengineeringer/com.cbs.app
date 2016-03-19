.class final Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
.super Landroid/support/v7/media/MediaRouter$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteButton;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/MediaRouteButton;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/MediaRouteButton;Landroid/support/v7/app/MediaRouteButton$1;)V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    return-void
.end method


# virtual methods
.method public final onProviderAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 541
    return-void
.end method

.method public final onProviderChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 551
    return-void
.end method

.method public final onProviderRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$ProviderInfo;)V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 546
    return-void
.end method

.method public final onRouteAdded(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 516
    return-void
.end method

.method public final onRouteChanged(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 526
    return-void
.end method

.method public final onRouteRemoved(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 521
    return-void
.end method

.method public final onRouteSelected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 531
    return-void
.end method

.method public final onRouteUnselected(Landroid/support/v7/media/MediaRouter;Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;->this$0:Landroid/support/v7/app/MediaRouteButton;

    # invokes: Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V
    invoke-static {v0}, Landroid/support/v7/app/MediaRouteButton;->access$100(Landroid/support/v7/app/MediaRouteButton;)V

    .line 536
    return-void
.end method
