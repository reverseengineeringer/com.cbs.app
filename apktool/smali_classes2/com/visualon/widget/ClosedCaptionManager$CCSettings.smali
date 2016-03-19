.class public Lcom/visualon/widget/ClosedCaptionManager$CCSettings;
.super Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/widget/ClosedCaptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CCSettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visualon/widget/ClosedCaptionManager;


# direct methods
.method public constructor <init>(Lcom/visualon/widget/ClosedCaptionManager;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/visualon/widget/ClosedCaptionManager$CCSettings;->this$0:Lcom/visualon/widget/ClosedCaptionManager;

    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method
