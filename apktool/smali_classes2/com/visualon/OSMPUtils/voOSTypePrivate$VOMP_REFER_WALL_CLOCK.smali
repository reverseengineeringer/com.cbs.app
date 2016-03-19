.class public Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSTypePrivate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VOMP_REFER_WALL_CLOCK"
.end annotation


# instance fields
.field public bEnable:Z

.field public bLowLatency:Z

.field public nVideoAdjustTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;->bEnable:Z

    .line 166
    iput-boolean v0, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;->bLowLatency:Z

    .line 168
    iput v0, p0, Lcom/visualon/OSMPUtils/voOSTypePrivate$VOMP_REFER_WALL_CLOCK;->nVideoAdjustTime:I

    return-void
.end method
