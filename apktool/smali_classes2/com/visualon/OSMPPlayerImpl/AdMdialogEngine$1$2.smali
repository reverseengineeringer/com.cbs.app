.class Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->streamFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

.field final synthetic val$tmp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;->val$tmp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 232
    const-string v0, "@@@AdMdialogEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "streamFailed"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;->val$tmp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    const/4 v1, 0x2

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;->val$tmp:Ljava/lang/String;

    invoke-interface/range {v0 .. v7}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;->onCustomerAdEvent(IJJLjava/lang/Object;Ljava/lang/Object;)I

    .line 236
    :cond_0
    return-void
.end method
