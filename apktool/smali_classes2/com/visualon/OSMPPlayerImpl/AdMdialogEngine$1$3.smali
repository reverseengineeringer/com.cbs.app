.class Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->streamLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 246
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getActivityURL()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 250
    const-string v0, "@@@AdMdialogEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stream Activity Monitor (SAM): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v2}, Lcom/mdialog/android/Stream;->getActivityURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    const-string v1, "manifest_quality"

    # invokes: Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v1, v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v1, v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v1}, Lcom/mdialog/android/Stream;->getManifestURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 254
    if-eqz v0, :cond_3

    .line 255
    const-string v2, "HD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 256
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getHdManifestURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 260
    :cond_3
    :goto_1
    const-string v0, "@@@AdMdialogEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the playing_url is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    const-string v2, "learn_more_container"

    # invokes: Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->getSettingValue(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 263
    if-eqz v0, :cond_4

    .line 264
    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v2, v0}, Lcom/mdialog/android/Stream;->setOverlayContainerView(Landroid/view/ViewGroup;)V

    .line 266
    :cond_4
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
    invoke-static {v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->access$100(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    move-result-object v2

    if-ne v0, v2, :cond_7

    .line 267
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mPlayer:Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getPreRollStream()Lcom/mdialog/android/Stream;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 271
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getPreRollStream()Lcom/mdialog/android/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getManifestURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 273
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v2}, Lcom/mdialog/android/Stream;->getPreRollStream()Lcom/mdialog/android/Stream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->updateAdBreaks(Lcom/mdialog/android/Stream;)V

    .line 279
    :goto_2
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-virtual {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->playVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_5
    const-string v2, "LOW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getLowManifestURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 277
    :cond_6
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0, v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->updateAdBreaks(Lcom/mdialog/android/Stream;)V

    goto :goto_2

    .line 282
    :cond_7
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mStream:Lcom/mdialog/android/Stream;

    invoke-virtual {v0}, Lcom/mdialog/android/Stream;->getManifestURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v2, v2, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-direct {v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;-><init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
