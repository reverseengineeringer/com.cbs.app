.class public Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;
.super Lcom/cbs/app/view/AbstractAsyncFragment;
.source "SourceFile"


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private i:Landroid/view/View;

.field private j:Lcom/cbs/app/view/model/Show;

.field private k:Lcom/cbs/app/view/model/ShowConfig;

.field private l:Lcom/cbs/app/view/model/VideoData;

.field private final m:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

.field private n:[Lcom/cbs/app/view/model/Asset;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:J

.field private s:I

.field private t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;-><init>()V

    .line 68
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    .line 69
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->m:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    .line 76
    iput-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    .line 77
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->o:Z

    .line 78
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->p:Z

    .line 79
    iput-boolean v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->q:Z

    .line 80
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->r:J

    .line 81
    iput v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->s:I

    .line 524
    new-instance v0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$4;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$4;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/VideoData;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;Lcom/cbs/app/view/model/VideoData;)V
    .locals 4

    .prologue
    .line 62
    .line 4382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4383
    const-string v1, "appState"

    const-string v2, "cbscom:Show Home"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4384
    const-string v1, "ShowTitle"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4385
    const-string v1, "showId"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4386
    const-string v1, "EpisodeTitle"

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4387
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4388
    const-string v1, "VideoID"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4390
    const-string v2, "evar_31"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4391
    const-string v2, "prop_31"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4393
    :cond_0
    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4394
    const-string v1, "ContentID"

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4396
    const-string v2, "evar_64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4397
    const-string v2, "prop_64"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4398
    const-string v1, "events"

    const-string v2, "event19"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4401
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isPaid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4402
    invoke-static {}, Lcom/cbs/app/view/utils/VideoUtil;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4403
    const-string v1, "Regular"

    .line 4404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";Season "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeasonNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";episode button"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4406
    const-string v2, "evar_18"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4407
    const-string v2, "prop_18"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4410
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cbscom:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4411
    const-string v2, "evar_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4412
    const-string v2, "prop_63"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4413
    invoke-static {p1}, Lcom/cbs/app/view/utils/VideoUtil;->a(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4414
    const-string v1, "evar_6"

    const-string v2, "CBS svod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4415
    const-string v1, "prop_6"

    const-string v2, "CBS svod"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4417
    :cond_3
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    sget-object v2, Lcom/cbs/app/analytics/Action;->aB:Lcom/cbs/app/analytics/Action;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 62
    return-void
.end method

.method public static a(Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 84
    invoke-static {p0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/model/VideoData;)V

    .line 86
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V
    .locals 3

    .prologue
    .line 4843
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 4844
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 4845
    const v0, 0x7f030062

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 4846
    const v0, 0x7f0f0171

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4847
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 4848
    check-cast v0, Landroid/widget/Button;

    .line 4849
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$2;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4856
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_2

    .line 4858
    const v0, 0x7f0f0170

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4859
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 4860
    check-cast v0, Landroid/widget/TextView;

    .line 4862
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4864
    :cond_1
    const v0, 0x7f0f0183

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4865
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 4866
    check-cast v0, Landroid/widget/TextView;

    .line 4868
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4871
    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 62
    return-void
.end method

.method static synthetic e(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Lcom/cbs/app/view/model/Show;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    return-object v0
.end method

.method static synthetic g(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic i(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic k(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic l(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic m(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic n(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic o(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)Landroid/support/v7/app/AppCompatActivity;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 9

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 3434
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    if-eqz v0, :cond_4

    .line 3436
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v1, 0x7f0f03ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3437
    if-eqz v0, :cond_4

    .line 3439
    const/4 v3, 0x0

    .line 3440
    const-string v1, "Landscape Background"

    .line 3441
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3442
    const-string v1, "Portrait Background"

    .line 3446
    :cond_2
    iget-object v5, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    array-length v6, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v6, :cond_8

    aget-object v2, v5, v4

    .line 3447
    invoke-virtual {v2}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move-object v1, v2

    .line 3455
    :goto_2
    if-eqz v1, :cond_4

    .line 3458
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3459
    invoke-virtual {v1}, Lcom/cbs/app/view/model/Asset;->getFilepath()Ljava/lang/String;

    move-result-object v2

    .line 3460
    if-eqz v2, :cond_4

    .line 3462
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3463
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v1

    .line 3465
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3467
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 3468
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0027

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 3469
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    .line 3471
    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-double v4, v3

    .line 3472
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 3473
    long-to-int v3, v4

    .line 3475
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 3477
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3478
    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 3480
    :cond_3
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3, v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;I)I

    move-result v1

    .line 3481
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v3

    .line 3482
    int-to-double v4, v1

    int-to-float v1, v3

    invoke-static {v2, v4, v5, v1}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v1

    .line 3484
    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->c(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    invoke-static {v0}, Lcom/cbs/app/view/utils/ViewUtil;->a(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 187
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f03ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 189
    invoke-static {}, Lcom/cbs/app/visualon/player/CBSPlayer;->y()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 190
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 192
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 193
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 197
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 3446
    :cond_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    .line 201
    :cond_6
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 202
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 204
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->b(Landroid/content/Context;)I

    move-result v3

    .line 206
    const/4 v4, 0x2

    if-ne p1, v4, :cond_7

    .line 209
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0027

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 211
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    .line 214
    int-to-float v5, v3

    mul-float/2addr v4, v5

    float-to-double v4, v4

    .line 215
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    .line 217
    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    sub-int v2, v3, v2

    .line 219
    int-to-double v4, v2

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    .line 222
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 223
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 227
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    invoke-static {v2, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    .line 228
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    invoke-static {v3, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    .line 229
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-static {v4, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    .line 230
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 231
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 234
    :cond_7
    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    .line 236
    int-to-double v4, v2

    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    .line 238
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    if-eqz v0, :cond_0

    .line 241
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 243
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    invoke-static {v2, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v2

    .line 244
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    invoke-static {v3, v4, v5}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v3

    .line 245
    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    invoke-static {v4, v6, v7}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v4

    .line 246
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    const/16 v2, 0x35

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_8
    move-object v1, v3

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .prologue
    const v8, 0x7f0f03af

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->m:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 92
    iput-boolean v7, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->q:Z

    .line 93
    const v0, 0x7f03010a

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    .line 94
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_9

    .line 97
    const-string v0, "videoData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/VideoData;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    .line 98
    const-string v0, "show"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/Show;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    .line 99
    const-string v0, "pid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    const-string v0, "configuration"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/ShowConfig;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->k:Lcom/cbs/app/view/model/ShowConfig;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "video details for: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/Show;->getShowId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, "resumeTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->r:J

    .line 105
    const-string v0, "resumeMode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->s:I

    .line 106
    const-string v0, "resumeTime"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 107
    const-string v0, "resumeMode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Classics"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iput-boolean v7, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->p:Z

    .line 115
    :cond_0
    const-string v0, "assets"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    instance-of v2, v0, [Lcom/cbs/app/view/model/Asset;

    if-eqz v2, :cond_1

    .line 117
    check-cast v0, [Lcom/cbs/app/view/model/Asset;

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->n:[Lcom/cbs/app/view/model/Asset;

    .line 120
    :cond_1
    const-string v0, "first"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->o:Z

    .line 1295
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->q:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1297
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1313
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v1, 0x7f0f03a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/ThumbNailView;

    .line 1314
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v1

    .line 1315
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    .line 1316
    const-wide/high16 v4, 0x4062000000000000L    # 144.0

    int-to-float v1, v1

    invoke-static {v2, v4, v5, v1}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v1

    .line 1318
    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Lcom/cbs/app/view/ThumbNailView;)V

    .line 1320
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f0295

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1321
    if-eqz v1, :cond_3

    .line 1322
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1324
    :cond_3
    iget-boolean v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->o:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->p:Z

    if-nez v1, :cond_4

    .line 1325
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f03a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1326
    if-eqz v1, :cond_4

    .line 1327
    const-string v2, "Latest"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1331
    :cond_4
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f0296

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1332
    if-eqz v1, :cond_5

    .line 1333
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1335
    :cond_5
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f03aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1336
    if-eqz v1, :cond_6

    .line 1337
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    :cond_6
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f03ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1340
    if-eqz v1, :cond_7

    .line 1341
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1344
    :cond_7
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$3;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/view/ThumbNailView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1354
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil;->c(Lcom/cbs/app/view/model/VideoData;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1355
    invoke-virtual {v0, v7}, Lcom/cbs/app/view/ThumbNailView;->setFlagVisibility(I)V

    .line 1359
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v1

    .line 1361
    :try_start_0
    invoke-static {v1}, Lcom/b/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1362
    const-string v0, "="

    const-string v2, "&amp;#61;"

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1368
    :goto_1
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1369
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 1370
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1371
    const-string v3, "articleId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1373
    const-string v0, "showCategory"

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Show;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    const-class v3, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1376
    const v2, 0x7f0f03ac

    const-string v3, "fragment_episode_comments"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1377
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 124
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    return-object v0

    .line 1357
    :cond_a
    invoke-virtual {v0, v6}, Lcom/cbs/app/view/ThumbNailView;->setFlagVisibility(I)V

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1303
    :cond_b
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1304
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1305
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->a(I)V

    .line 1825
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1826
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    if-eqz v0, :cond_14

    .line 2494
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->q:Z

    if-eqz v0, :cond_c

    .line 2497
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2498
    if-eqz v0, :cond_c

    .line 2499
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 2500
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 2501
    new-instance v1, Lcom/cbs/app/visualon/player/PlayerFragment;

    invoke-direct {v1}, Lcom/cbs/app/visualon/player/PlayerFragment;-><init>()V

    .line 2502
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2504
    const-string v3, "resumeTime"

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->r:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2505
    const-string v3, "resumeMode"

    iget v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->s:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2507
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resumeTime: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->r:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2508
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resumeMode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->s:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2510
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->r:J

    .line 2511
    iput v6, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->s:I

    .line 2514
    const-string v3, "videoData"

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2515
    invoke-virtual {v1, v2}, Lcom/cbs/app/visualon/player/PlayerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2516
    const-string v2, "videoplayer_fragment"

    invoke-virtual {v0, v8, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 2517
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 2518
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2519
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2540
    :cond_c
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v1, 0x7f0f03b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2541
    if-eqz v0, :cond_e

    .line 2542
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v1

    .line 2543
    if-eqz v1, :cond_d

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2544
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2546
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2550
    :cond_e
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v1, 0x7f0f03b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2551
    if-eqz v0, :cond_f

    .line 2552
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v1

    .line 2553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/VideoData;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/cbs/app/view/utils/Util;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2558
    :cond_f
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v1

    .line 2559
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f03b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2560
    if-eqz v0, :cond_10

    .line 2561
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2562
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$5;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$5;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2571
    :cond_10
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f03b6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2572
    if-eqz v0, :cond_11

    .line 2573
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2574
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$6;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$6;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2609
    :cond_11
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f0329

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2610
    if-eqz v0, :cond_12

    .line 2611
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2612
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$7;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$7;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2657
    :cond_12
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f00e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2658
    if-eqz v0, :cond_13

    .line 2659
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2660
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$8;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$8;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2704
    :cond_13
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f034d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 2705
    if-eqz v0, :cond_14

    .line 2706
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->l:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 2707
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$9;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2754
    :cond_14
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->k:Lcom/cbs/app/view/model/ShowConfig;

    if-eqz v0, :cond_9

    .line 2755
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->k:Lcom/cbs/app/view/model/ShowConfig;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/ShowConfig;->getAmazonBuyLink()Ljava/lang/String;

    move-result-object v0

    .line 2756
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->k:Lcom/cbs/app/view/model/ShowConfig;

    invoke-virtual {v1}, Lcom/cbs/app/view/model/ShowConfig;->getVuduBuyLink()Ljava/lang/String;

    move-result-object v1

    .line 2757
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->k:Lcom/cbs/app/view/model/ShowConfig;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/ShowConfig;->getItunesBuyLink()Ljava/lang/String;

    move-result-object v2

    .line 2758
    const/4 v3, 0x0

    .line 2759
    if-eqz v0, :cond_17

    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v1, v0

    .line 2767
    :cond_15
    :goto_3
    if-eqz v1, :cond_9

    .line 2769
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    const v2, 0x7f0f03b5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2770
    if-eqz v0, :cond_9

    .line 2771
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2772
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2773
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 2775
    :cond_16
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 2776
    new-instance v2, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;

    invoke-direct {v2, p0, v1}, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment$10;-><init>(Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 2761
    :cond_17
    if-eqz v1, :cond_18

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2763
    :cond_18
    if-eqz v2, :cond_19

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    move-object v1, v2

    .line 2764
    goto :goto_3

    :cond_19
    move-object v1, v3

    goto :goto_3
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDestroyView()V

    .line 159
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->m:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 160
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 161
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 166
    :goto_0
    iput-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->i:Landroid/view/View;

    .line 167
    iput-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->j:Lcom/cbs/app/view/model/Show;

    .line 168
    iput-object v3, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->k:Lcom/cbs/app/view/model/ShowConfig;

    .line 170
    return-void

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->t:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onDetach()V

    .line 176
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onPause()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->q:Z

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/cbs/app/view/AbstractAsyncFragment;->onResume()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->q:Z

    .line 141
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i(Landroid/content/Context;)V

    .line 3129
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_0

    .line 3130
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/VideoDetailsFragment;->g:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 3131
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->i()V

    .line 143
    :cond_0
    return-void
.end method
