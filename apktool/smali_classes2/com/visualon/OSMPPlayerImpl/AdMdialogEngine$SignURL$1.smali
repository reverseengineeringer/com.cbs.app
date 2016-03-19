.class Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;

.field final synthetic val$playerUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;

    iput-object p2, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL$1;->val$playerUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 409
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mAdEventListener:Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$SignURL$1;->val$playerUrl:Ljava/lang/String;

    const/4 v7, 0x0

    move-wide v4, v2

    invoke-interface/range {v0 .. v7}, Lcom/visualon/OSMPPlayerImpl/AdCustomerEngine$customerAdEventListener;->onCustomerAdEvent(IJJLjava/lang/Object;Ljava/lang/Object;)I

    .line 413
    :cond_0
    return-void
.end method
