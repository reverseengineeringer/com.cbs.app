.class Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/b/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdError(Lcom/google/ads/interactivemedia/v3/b/d;)V
    .locals 3

    .prologue
    .line 91
    const-string v0, "Ad Error: "

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/d;->a()Lcom/google/ads/interactivemedia/v3/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/b/c;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$1;->this$1:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;

    iget-object v0, v0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # invokes: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->resumeContent()V
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V

    .line 93
    return-void
.end method
