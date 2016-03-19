.class public Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;
.super Landroid/support/v7/app/MediaRouteControllerDialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onCreateControllerDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/support/v7/app/MediaRouteControllerDialog;
    .locals 1

    .prologue
    .line 1034
    new-instance v0, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/a;-><init>(Landroid/content/Context;)V

    .line 27
    return-object v0
.end method
