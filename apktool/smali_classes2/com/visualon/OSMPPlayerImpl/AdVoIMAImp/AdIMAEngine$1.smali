.class Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->init(Ljava/lang/String;Landroid/content/Context;)Lcom/visualon/OSMPPlayer/VOOSMPType$VO_OSMP_RETURN_CODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/google/ads/interactivemedia/v3/b/d;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 299
    const-string v0, "@@@AdIMAEngine"

    const-string v1, "error type %s\t %s\t %s "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/d;->a()Lcom/google/ads/interactivemedia/v3/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/b/c;->b()Lcom/google/ads/interactivemedia/v3/b/c$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/b/c$a;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/d;->a()Lcom/google/ads/interactivemedia/v3/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/b/c;->a()Lcom/google/ads/interactivemedia/v3/b/c$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/b/c$b;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/d;->a()Lcom/google/ads/interactivemedia/v3/b/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/b/c;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # invokes: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->resumeContent()V
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V

    .line 303
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$500(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mVideoPlayerWithAdPlayback:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$500(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;

    move-result-object v0

    iput-boolean v5, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback;->mbUsedContendEnd:Z

    .line 307
    :cond_0
    return-void
.end method
