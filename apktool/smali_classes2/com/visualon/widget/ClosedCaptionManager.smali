.class public Lcom/visualon/widget/ClosedCaptionManager;
.super Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/widget/ClosedCaptionManager$CCSettings;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/visualon/OSMPSubTitle/voSubTitleManager;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public getSettings()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/visualon/widget/ClosedCaptionManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/visualon/widget/ClosedCaptionManager$CCSettings;

    invoke-direct {v0, p0}, Lcom/visualon/widget/ClosedCaptionManager$CCSettings;-><init>(Lcom/visualon/widget/ClosedCaptionManager;)V

    iput-object v0, p0, Lcom/visualon/widget/ClosedCaptionManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/visualon/widget/ClosedCaptionManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    return-object v0
.end method
