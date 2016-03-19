.class public interface abstract Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer$PlayerCallback;
    }
.end annotation


# virtual methods
.method public abstract ima_addPlayerCallback(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer$PlayerCallback;)V
.end method

.method public abstract ima_getCurrentPosition()J
.end method

.method public abstract ima_getDuration()J
.end method

.method public abstract ima_getVideoView()Landroid/view/View;
.end method

.method public abstract ima_pause()V
.end method

.method public abstract ima_play()V
.end method

.method public abstract ima_removePlayerCallback(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/IIMAPlayer$PlayerCallback;)V
.end method

.method public abstract ima_seekTo(J)V
.end method

.method public abstract ima_setVideoPath(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract ima_stopPlayback()V
.end method

.method public abstract ima_update_adpod_info(II)V
.end method
