.class public Lcom/cbs/app/view/fragments/settings/RateFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/RateFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/RateFragment;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/settings/RateFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/RateFragment;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 27
    const v1, 0x7f0300e0

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/RateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/cbs/app/view/fragments/settings/RateFragment;->c:Landroid/content/Context;

    .line 31
    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/RateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/cbs/app/view/utils/Util;->G(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 37
    :cond_0
    if-eqz v0, :cond_2

    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p=com.cbs.app"

    :goto_0
    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/RateFragment;->b:Ljava/lang/String;

    .line 39
    const v0, 0x7f0f0328

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 41
    check-cast v0, Landroid/widget/Button;

    .line 42
    new-instance v2, Lcom/cbs/app/view/fragments/settings/RateFragment$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/fragments/settings/RateFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/RateFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :cond_1
    return-object v1

    .line 37
    :cond_2
    const-string v0, "https://play.google.com/store/apps/details?id=com.cbs.app"

    goto :goto_0
.end method
