.class Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mdialog/android/OnStreamLoadedListener;


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
    .line 213
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamExpired(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$1;-><init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 224
    return-void
.end method

.method public streamFailed(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 228
    const-string v0, "@@@AdMdialogEngine"

    const-string v1, "StreamFailed the reason is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;

    invoke-direct {v1, p0, p1}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$2;-><init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public streamLoaded()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1$3;-><init>(Lcom/visualon/OSMPPlayerImpl/AdMdialogEngine$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    return-void
.end method
