.class public final Lcom/facebook/share/widget/ShareButton;
.super Lcom/facebook/share/widget/ShareButtonBase;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "fb_share_button_create"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    const-string v1, "fb_share_button_create"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 46
    const-string v0, "fb_share_button_create"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/share/widget/ShareButtonBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;)V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/widget/ShareButton;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/facebook/share/widget/ShareButton;->callExternalOnClickListener(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/widget/ShareButton;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/facebook/share/widget/ShareButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final getDefaultRequestCode()I
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Share:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    return v0
.end method

.method protected final getDefaultStyleResource()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/facebook/R$style;->com_facebook_button_share:I

    return v0
.end method

.method protected final getShareOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/share/widget/ShareButton$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/widget/ShareButton$1;-><init>(Lcom/facebook/share/widget/ShareButton;)V

    return-object v0
.end method
