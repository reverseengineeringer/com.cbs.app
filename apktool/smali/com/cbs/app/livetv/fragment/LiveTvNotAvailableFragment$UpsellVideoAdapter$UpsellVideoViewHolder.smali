.class public Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;
.super Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpsellVideoViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field final synthetic d:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 298
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$ViewHolder;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;Landroid/view/View;)V

    .line 300
    const v0, 0x7f0f029c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->c:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f0f029b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->b:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f0f029a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->a:Landroid/widget/ImageView;

    .line 304
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 7

    .prologue
    .line 307
    if-eqz p1, :cond_0

    .line 309
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->d()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->c()I

    move-result v2

    div-int/2addr v1, v2

    .line 312
    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 314
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    iget-object v2, v2, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    const v3, 0x7f080168

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getEpisodeNum()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;

    iget-object v2, v2, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter;->a:Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;

    invoke-static {v2}, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;->h(Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getAirDate()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvNotAvailableFragment$UpsellVideoAdapter$UpsellVideoViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :cond_0
    return-void
.end method
