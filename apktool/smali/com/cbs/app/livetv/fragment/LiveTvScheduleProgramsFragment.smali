.class public Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/text/SimpleDateFormat;

.field private c:Lcom/cbs/app/livetv/controllers/SyncbakController;

.field private d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

.field private e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

.field private f:Landroid/view/View;

.field private g:I

.field private h:Lcom/cbs/app/livetv/model/LiveTvChannel;

.field private i:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE, MMMM d"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(I)Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;

    invoke-direct {v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;-><init>()V

    .line 65
    const-string v2, "EXTRA_VIEW_TYPE"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {v1, v0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/model/LiveTvChannel;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->h:Lcom/cbs/app/livetv/model/LiveTvChannel;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)Lcom/cbs/app/livetv/controllers/SyncbakController;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/cbs/app/livetv/model/LiveTvChannel;)V
    .locals 9

    .prologue
    const v8, 0x7f0a011f

    const/4 v3, 0x2

    const/4 v7, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getPrograms()Ljava/util/List;

    move-result-object v2

    .line 191
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 193
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v1, 0x7f08019e

    invoke-virtual {p0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setMessage(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1064
    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 209
    :goto_1
    iput-object p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->h:Lcom/cbs/app/livetv/model/LiveTvChannel;

    .line 210
    invoke-virtual {p1}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getAffiliate()Lcom/cbs/app/view/model/Affiliate;

    move-result-object v3

    .line 211
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->f:Landroid/view/View;

    const v1, 0x7f0f027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    iget-object v4, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->h:Lcom/cbs/app/livetv/model/LiveTvChannel;

    invoke-virtual {v4}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getIsMvpd()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->setIsMvpd(Z)V

    .line 213
    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->f:Landroid/view/View;

    const v1, 0x7f0f027f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 216
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->f:Landroid/view/View;

    const v1, 0x7f0f027e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 217
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->f:Landroid/view/View;

    const v5, 0x7f0f0281

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 219
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cbs/app/view/model/Affiliate;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 220
    invoke-virtual {v3}, Lcom/cbs/app/view/model/Affiliate;->getLogo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 223
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->h:Lcom/cbs/app/livetv/model/LiveTvChannel;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/model/LiveTvChannel;->getIsMvpd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    invoke-static {}, Lcom/cbs/app/livetv/controllers/MVPDController;->getInstance()Lcom/cbs/app/livetv/controllers/MVPDController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/MVPDController;->getSelectedMvpdConfig()Lcom/cbs/app/view/model/MVPDConfig;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getFilepathAdobeLogoOverride()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 228
    invoke-virtual {v0}, Lcom/cbs/app/view/model/MVPDConfig;->getFilepathAdobeLogoOverride()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v0, v5}, Lcom/cbs/app/livetv/util/ImageResizerUrl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$3;

    invoke-direct {v5, p0, v1, v4}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$3;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-static {v0, v1, v5}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/f/c;)V

    .line 241
    :cond_4
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->a()V

    .line 243
    iget v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->g:I

    packed-switch v0, :pswitch_data_0

    .line 258
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->a(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->i:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 2060
    invoke-virtual {v0, v7}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 207
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 5060
    invoke-virtual {v0, v7}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto/16 :goto_1

    .line 202
    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->i:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 3064
    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_2

    .line 205
    :cond_8
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->i:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 4060
    invoke-virtual {v0, v7}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    goto :goto_2

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    invoke-virtual {v0, v3}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->setAffiliate(Lcom/cbs/app/view/model/Affiliate;)V

    .line 246
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    const/4 v1, 0x0

    invoke-interface {v2, v1, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->a(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 250
    :pswitch_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_9

    .line 251
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, v7, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->a(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 253
    :cond_9
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;->a(Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    const v0, 0x7f030080

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 74
    const v0, 0x7f0f020b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->i:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 75
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->i:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v2, 0x7f08019e

    invoke-virtual {p0, v2}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setMessage(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->i:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    const v2, 0x7f030110

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 77
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 78
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/controllers/SyncbakController;->c()V

    .line 183
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 184
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0f03cb

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->e:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    .line 1060
    invoke-virtual {v0, v4}, Lcom/cbs/app/livetv/widget/ContentFlipper;->setDisplayedChild(I)V

    .line 86
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_VIEW_TYPE"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->g:I

    .line 87
    const v0, 0x7f0f020a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->f:Landroid/view/View;

    .line 88
    iget v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->g:I

    packed-switch v0, :pswitch_data_0

    .line 100
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 101
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    invoke-direct {v0}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->i:Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;

    invoke-virtual {v0}, Lcom/cbs/app/livetv/widget/LiveTvContentFlipper;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 106
    new-instance v1, Lcom/cbs/app/livetv/widget/ListItemDecoration;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0119

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/cbs/app/livetv/widget/ListItemDecoration;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 107
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 109
    new-instance v0, Lcom/cbs/app/livetv/controllers/SyncbakController;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    .line 110
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->c:Lcom/cbs/app/livetv/controllers/SyncbakController;

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)V

    invoke-virtual {v0, v1}, Lcom/cbs/app/livetv/controllers/SyncbakController;->a(Lcom/cbs/app/livetv/controllers/Controller$Callback;)V

    .line 160
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 161
    const v0, 0x7f0f03ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f080166

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$2;

    invoke-direct {v1, p0}, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :cond_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 91
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    invoke-direct {v0, v4}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    goto/16 :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 96
    new-instance v0, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->d:Lcom/cbs/app/livetv/widget/LiveTvScheduleProgramAdapter;

    goto/16 :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewType(I)V
    .locals 0

    .prologue
    .line 175
    iput p1, p0, Lcom/cbs/app/livetv/fragment/LiveTvScheduleProgramsFragment;->g:I

    .line 176
    return-void
.end method
