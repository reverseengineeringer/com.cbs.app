.class Lcom/visualon/OSMPEngine/voOnStreamSDK$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPEngine/voOnStreamSDK$SubtitleSampler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/visualon/OSMPEngine/voOnStreamSDK;->startTimer()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;


# direct methods
.method constructor <init>(Lcom/visualon/OSMPEngine/voOnStreamSDK;)V
    .locals 0

    .prologue
    .line 2656
    iput-object p1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$5;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSample(I)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;
    .locals 2

    .prologue
    .line 2664
    invoke-virtual {p0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK$5;->getSampleParcel(I)Landroid/os/Parcel;

    move-result-object v0

    .line 2665
    if-nez v0, :cond_0

    .line 2666
    const/4 v0, 0x0

    .line 2669
    :goto_0
    return-object v0

    .line 2667
    :cond_0
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$5;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2668
    iget-object v1, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$5;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    # getter for: Lcom/visualon/OSMPEngine/voOnStreamSDK;->ccMan:Lcom/visualon/widget/ClosedCaptionManager;
    invoke-static {v1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->access$200(Lcom/visualon/OSMPEngine/voOnStreamSDK;)Lcom/visualon/widget/ClosedCaptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->parcelToSubtitleInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v0

    goto :goto_0

    .line 2669
    :cond_1
    new-instance v1, Lcom/visualon/widget/ClosedCaptionManager;

    invoke-direct {v1}, Lcom/visualon/widget/ClosedCaptionManager;-><init>()V

    invoke-virtual {v1, v0}, Lcom/visualon/widget/ClosedCaptionManager;->parcelToSubtitleInfo(Landroid/os/Parcel;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getSampleParcel(I)Landroid/os/Parcel;
    .locals 1

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/visualon/OSMPEngine/voOnStreamSDK$5;->this$0:Lcom/visualon/OSMPEngine/voOnStreamSDK;

    invoke-virtual {v0, p1}, Lcom/visualon/OSMPEngine/voOnStreamSDK;->GetSubTitleSample(I)Landroid/os/Parcel;

    move-result-object v0

    return-object v0
.end method
