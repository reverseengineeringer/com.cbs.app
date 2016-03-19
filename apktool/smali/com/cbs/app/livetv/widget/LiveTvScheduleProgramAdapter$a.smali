.class final Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/text/SimpleDateFormat;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mma"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->a:Ljava/text/SimpleDateFormat;

    .line 78
    const v0, 0x7f0f027c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->b:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0f0282

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->c:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0f0283

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->d:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0f0284

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->e:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->g:I

    .line 83
    const v0, 0x7f0f027d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->f:Landroid/view/View;

    .line 84
    iput p2, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->h:I

    .line 85
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;ILcom/cbs/app/view/model/Affiliate;Z)V
    .locals 11

    .prologue
    const v10, 0x7f080167

    const v9, 0x7f080165

    const/16 v3, 0x8

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 88
    check-cast p1, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;

    .line 89
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 90
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->a:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getStartTime()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->b:Landroid/widget/TextView;

    iget v2, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->g:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->f:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->h:I

    packed-switch v1, :pswitch_data_0

    .line 131
    if-nez p2, :cond_3

    .line 132
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v5, v9, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->b:Landroid/widget/TextView;

    const v2, 0x7f0d007d

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/cbs/app/view/model/syncbak/SyncbakSchedule;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    return-void

    .line 95
    :pswitch_0
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v5, v9, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0d007d

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->f:Landroid/view/View;

    const v1, 0x7f0f027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 99
    iget-object v0, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->f:Landroid/view/View;

    const v1, 0x7f0f027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    iget-object v1, p0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;->f:Landroid/view/View;

    const v7, 0x7f0f0281

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 102
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/cbs/app/view/model/Affiliate;->getLogo()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 103
    invoke-virtual {p3}, Lcom/cbs/app/view/model/Affiliate;->getLogo()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0a011f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 106
    :cond_1
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 108
    if-eqz p4, :cond_5

    .line 109
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getFilepathAdobeLogoOverride()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 111
    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getFilepathAdobeLogoOverride()Ljava/lang/String;

    move-result-object v0

    const v7, 0x7f0a011f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-static {v0, v7}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;

    invoke-direct {v7, p0, v1, v5, v6}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a$1;-><init>(Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter$a;Landroid/widget/ImageView;Landroid/content/res/Resources;Landroid/view/View;)V

    invoke-static {v0, v1, v7}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/f/c;)V

    :cond_2
    move-object v0, v2

    .line 121
    goto/16 :goto_0

    .line 125
    :pswitch_1
    if-nez p2, :cond_0

    .line 126
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v5, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 134
    :cond_3
    if-ne p2, v8, :cond_0

    .line 135
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-virtual {v5, v10, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    move v0, v4

    .line 142
    goto/16 :goto_1

    :cond_5
    move-object v0, v2

    goto/16 :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
