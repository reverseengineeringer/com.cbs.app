.class public Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;
.super Lcom/cbs/app/livetv/fragment/UpSellDataFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

.field private c:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/cbs/app/livetv/fragment/LiveTvNotFoundFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 67
    const v0, 0x7f030082

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    const v0, 0x7f0f020d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const v3, 0x7f080267

    invoke-virtual {p0, v3}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 70
    new-instance v3, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "fonts/Roboto-Bold.ttf"

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/cbs/app/livetv/widget/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v4, 0x7f0801e8

    invoke-virtual {p0, v4}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 73
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    const v0, 0x7f0f020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment$1;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0f0272

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 83
    new-instance v2, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment$2;

    invoke-direct {v2, p0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment$2;-><init>(Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-object v1
.end method

.method static synthetic a(Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;)V
    .locals 3

    .prologue
    .line 29
    .line 1118
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v1, 0x450

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 29
    return-void
.end method

.method static synthetic b(Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;)Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method protected final a(Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;)V
    .locals 3

    .prologue
    .line 103
    const-string v0, "android_content_6"

    invoke-virtual {p1, v0}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfoforActionTarget(Ljava/lang/String;)Lcom/cbs/app/view/model/UpsellInfo;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    sget-object v2, Lcom/cbs/app/livetv/fragment/LiveTvWebFragment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "ARG_TRACKING_TYPE"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    const/16 v2, 0x451

    invoke-interface {v0, v2, v1}, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;->a(ILjava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 61
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 62
    iget-object v1, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 63
    iget-object v2, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 47
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "must implement BaseFragmentCallBack"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->c:Landroid/widget/FrameLayout;

    .line 55
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->c:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, p2}, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/livetv/fragment/LiveTvSuspendedErrorFragment;->b:Lcom/cbs/app/livetv/callbacks/BaseFragmentCallBack;

    .line 98
    invoke-super {p0}, Lcom/cbs/app/livetv/fragment/UpSellDataFragment;->onDestroy()V

    .line 99
    return-void
.end method
