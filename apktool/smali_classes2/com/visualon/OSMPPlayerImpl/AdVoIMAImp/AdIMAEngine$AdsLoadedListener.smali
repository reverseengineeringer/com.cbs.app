.class Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/b/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdsLoadedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$1;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)V

    return-void
.end method


# virtual methods
.method public onAdsManagerLoaded(Lcom/google/ads/interactivemedia/v3/b/i;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/b/i;->a()Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v1

    # setter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;
    invoke-static {v0, v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$002(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;Lcom/google/ads/interactivemedia/v3/b/h;)Lcom/google/ads/interactivemedia/v3/b/h;

    .line 85
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$1;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/b/d$a;)V

    .line 95
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    new-instance v1, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener$2;-><init>(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/b/e$a;)V

    .line 179
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsManager:Lcom/google/ads/interactivemedia/v3/b/h;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$000(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$AdsLoadedListener;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mRenderSettings:Lcom/google/ads/interactivemedia/v3/b/j;
    invoke-static {v1}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$900(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/j;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/b/h;->a(Lcom/google/ads/interactivemedia/v3/b/j;)V

    .line 180
    return-void
.end method
