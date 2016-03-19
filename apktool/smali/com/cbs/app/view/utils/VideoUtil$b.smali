.class final Lcom/cbs/app/view/utils/VideoUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/utils/VideoUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

.field private b:Landroid/content/Context;

.field private c:Lcom/cbs/app/view/model/VideoData;

.field private d:Lcom/cbs/app/view/fragments/show/model/ShowItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V
    .locals 0

    .prologue
    .line 1306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    iput-object p1, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->b:Landroid/content/Context;

    .line 1308
    iput-object p2, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->c:Lcom/cbs/app/view/model/VideoData;

    .line 1309
    iput-object p3, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->d:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    .line 1310
    iput-object p4, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

    .line 1311
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/utils/VideoUtil$b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/utils/VideoUtil$b;)Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->c:Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/utils/VideoUtil$b;)Lcom/cbs/app/view/fragments/show/model/ShowItem;
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->d:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1348
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->b:Landroid/content/Context;

    const-string v1, "Refresh"

    new-instance v2, Lcom/cbs/app/view/utils/VideoUtil$b$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/utils/VideoUtil$b$1;-><init>(Lcom/cbs/app/view/utils/VideoUtil$b;)V

    const-string v3, "OK"

    new-instance v4, Lcom/cbs/app/view/utils/VideoUtil$b$2;

    invoke-direct {v4, p0}, Lcom/cbs/app/view/utils/VideoUtil$b$2;-><init>(Lcom/cbs/app/view/utils/VideoUtil$b;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/UnableToConnectDialogHelper;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1365
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 7

    .prologue
    .line 1316
    instance-of v0, p1, Lcom/cbs/app/view/model/VideoStreamsEndpoint;

    if-eqz v0, :cond_0

    .line 1317
    check-cast p1, Lcom/cbs/app/view/model/VideoStreamsEndpoint;

    .line 1318
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->getContentId()Ljava/lang/String;

    move-result-object v0

    .line 1319
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "comparing most recent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to endpoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->isOverThreshold()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1322
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->c:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;)V

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1325
    :cond_1
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoStreamsEndpoint;->getMediaTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v4, v0, v2

    .line 1326
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->c:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getFullEpisode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    const-wide/16 v0, 0x1388

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    .line 1329
    iget-object v1, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->c:Lcom/cbs/app/view/model/VideoData;

    iget-object v3, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->d:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v6, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

    invoke-static/range {v1 .. v6}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;JLcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    goto :goto_0

    .line 1332
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->c:Lcom/cbs/app/view/model/VideoData;

    iget-object v2, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->d:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    iget-object v3, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/utils/VideoUtil;->b(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    goto :goto_0

    .line 1336
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

    iget-object v1, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->c:Lcom/cbs/app/view/model/VideoData;

    iget-object v2, p0, Lcom/cbs/app/view/utils/VideoUtil$b;->d:Lcom/cbs/app/view/fragments/show/model/ShowItem;

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;->a(Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;IJ)V

    goto :goto_0
.end method
