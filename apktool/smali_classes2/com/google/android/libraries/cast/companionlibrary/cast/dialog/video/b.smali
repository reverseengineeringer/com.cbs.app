.class public final Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/b;
.super Landroid/support/v7/app/MediaRouteDialogFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteDialogFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;
    .locals 1

    .prologue
    .line 1028
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;

    invoke-direct {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;-><init>()V

    .line 24
    return-object v0
.end method
