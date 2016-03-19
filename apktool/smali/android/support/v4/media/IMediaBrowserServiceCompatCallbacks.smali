.class public interface abstract Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
.end method

.method public abstract onConnectFailed()V
.end method

.method public abstract onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
.end method
