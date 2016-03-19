.class public Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;
.super Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScheduleViewHolder"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;


# direct methods
.method public constructor <init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 310
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ViewHolder;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;Landroid/view/View;)V

    .line 312
    const v0, 0x7f0f028e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->a:Landroid/widget/TextView;

    .line 313
    const v0, 0x7f0f0289

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->b:Landroid/widget/ImageView;

    .line 314
    const v0, 0x7f0f028f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->c:Landroid/widget/LinearLayout;

    .line 317
    return-void
.end method


# virtual methods
.method public final a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V
    .locals 13

    .prologue
    .line 320
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bind() called with: item = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    if-eqz p1, :cond_2

    .line 322
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getAffiliate()Lcom/cbs/app/view/model/Affiliate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/Affiliate;->getAffiliateStation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getAffiliate()Lcom/cbs/app/view/model/Affiliate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Affiliate;->getSmallLogoSelected()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->d()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x3

    invoke-static {v0, v1}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->b:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 324
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getPrograms()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getPrograms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 326
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getPrograms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 327
    iget-object v6, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getPrograms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;

    .line 1343
    invoke-static {}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->c()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createProgramView() called with: position = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], program = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a3

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->c:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1347
    const v1, 0x7f0f0282

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1348
    const v2, 0x7f0f028c

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1349
    const v3, 0x7f0f028d

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1350
    iget-object v5, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    invoke-static {v5}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a(Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;)Ljava/text/SimpleDateFormat;

    move-result-object v5

    new-instance v8, Ljava/util/Date;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getStartTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 1352
    packed-switch v4, :pswitch_data_0

    .line 1360
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1363
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1364
    iget-object v8, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    iget-object v8, v8, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->b:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;

    invoke-virtual {v8}, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d00c4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v2, v5

    .line 1368
    :goto_1
    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1369
    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1370
    invoke-virtual {v0}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 328
    rem-int/lit8 v0, v4, 0x2

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->c:Landroid/widget/LinearLayout;

    .line 2339
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    iget-object v1, v1, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300a9

    iget-object v3, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->c:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 329
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 1355
    :pswitch_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v5, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1356
    iget-object v9, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->d:Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;

    iget-object v9, v9, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter;->a:Landroid/content/Context;

    const v10, 0x7f080165

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v5

    .line 1357
    goto :goto_1

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvAvailableFragment$ScheduleAdapter$ScheduleViewHolder;->c:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    :cond_2
    return-void

    .line 1352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
