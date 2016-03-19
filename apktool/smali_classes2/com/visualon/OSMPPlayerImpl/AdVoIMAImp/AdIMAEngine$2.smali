.class Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/VOIMAPlayerWithAdPlayback$OnContentCompleteListener;


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
    .line 318
    iput-object p1, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentComplete()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine$2;->this$0:Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;

    # getter for: Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->mAdsLoader:Lcom/google/ads/interactivemedia/v3/b/g;
    invoke-static {v0}, Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;->access$1100(Lcom/visualon/OSMPPlayerImpl/AdVoIMAImp/AdIMAEngine;)Lcom/google/ads/interactivemedia/v3/b/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/b/g;->a()V

    .line 325
    return-void
.end method
