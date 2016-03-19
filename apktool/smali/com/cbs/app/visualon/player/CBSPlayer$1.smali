.class final Lcom/cbs/app/visualon/player/CBSPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/visualon/player/CBSPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Z)Z

    .line 261
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(J)J

    .line 264
    :cond_0
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->D()V

    .line 255
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Z)Z

    .line 256
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 229
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->D()V

    .line 230
    invoke-static {v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->b(Z)Z

    .line 231
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->F()Lcom/cbs/app/visualon/player/CBSSeekBarV3;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/cbs/app/visualon/player/CBSSeekBarV3;->setEnabled(Z)V

    .line 233
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/cbs/app/visualon/player/CBSPlayer;->a(J)J

    .line 235
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->I()I

    move-result v0

    if-eq v0, v8, :cond_0

    .line 236
    new-instance v0, Lcom/cbs/app/service/MyCBSDBServiceImpl;

    invoke-direct {v0}, Lcom/cbs/app/service/MyCBSDBServiceImpl;-><init>()V

    .line 237
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->H()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->G()Lcom/cbs/app/view/model/VideoData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/cbs/app/service/MyCBSDBService;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 240
    :cond_0
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->J()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    sget-object v0, Lcom/cbs/app/visualon/player/CBSPlayer;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "max position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    const-string v0, "SetPos --->"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->J()J

    move-result-wide v2

    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->E()Lcom/visualon/OSMPPlayer/VOCommonPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->getMaxPosition()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x2

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/visualon/OSMPPlayer/VOCommonPlayer;->setPosition(J)J

    .line 245
    const-string v0, "SetPos <---"

    invoke-static {v0}, Lcom/cbs/app/visualon/player/TimeCal;->a(Ljava/lang/String;)V

    .line 246
    invoke-static {v8}, Lcom/cbs/app/visualon/player/CBSPlayer;->c(Z)Z

    .line 248
    :cond_1
    return-void
.end method
