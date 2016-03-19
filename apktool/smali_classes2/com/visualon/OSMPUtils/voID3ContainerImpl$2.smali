.class Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPUtils/voID3ContainerImpl;->onRequest(IIILjava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

.field final synthetic val$tag:Lcom/visualon/OSMPUtils/voOSTimedTag;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Lcom/visualon/OSMPUtils/voOSTimedTag;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    iput-object p2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;->val$tag:Lcom/visualon/OSMPUtils/voOSTimedTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 296
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;->val$tag:Lcom/visualon/OSMPUtils/voOSTimedTag;

    invoke-interface {v1}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 297
    const-string v1, "@@@voID3ContainerImpl"

    const-string v2, "VOOSMP_SRC_CB_Customer_Tag = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;->this$0:Lcom/visualon/OSMPUtils/voID3ContainerImpl;

    invoke-virtual {v1, v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->setFrameScrubbingUrl(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    const-string v0, "@@@voID3ContainerImpl"

    const-string v1, "download error"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
