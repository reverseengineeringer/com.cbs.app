.class Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mdialog/android/stream/AdBreakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adBreakProgressed(Lcom/mdialog/android/stream/AdBreak;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2$1;-><init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;Lcom/mdialog/android/stream/AdBreak;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    return-void
.end method

.method public adEventStarted(Lcom/mdialog/android/stream/AdEvent;)V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    if-eqz v0, :cond_0

    .line 328
    sget-object v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;->MDIALOG_VOD:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mType:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->access$100(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;)Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$MDIALOG_TYPE;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 330
    const-string v0, "@@@AdMdialogEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Found companion ad: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    const/4 v1, 0x2

    const/4 v7, 0x0

    move-wide v4, v2

    move-object v6, p1

    invoke-interface/range {v0 .. v7}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;->onCustomerAdEvent(IJJLjava/lang/Object;Ljava/lang/Object;)I

    .line 334
    :cond_0
    return-void
.end method

.method public streamShouldProcessAdBreak(Lcom/mdialog/android/stream/AdBreak;)Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method
