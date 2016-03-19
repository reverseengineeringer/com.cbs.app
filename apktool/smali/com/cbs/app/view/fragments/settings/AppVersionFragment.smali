.class public Lcom/cbs/app/view/fragments/settings/AppVersionFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 27
    const v0, 0x7f0300d9

    invoke-virtual {p1, v0, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 28
    if-eqz v2, :cond_2

    .line 30
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->a:Landroid/content/Context;

    .line 32
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 37
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 38
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 41
    const v0, 0x7f0f02e9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    instance-of v5, v0, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/settings/AppVersionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/cbs/app/view/utils/Util;->m(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    :goto_0
    const v0, 0x7f0f02ea

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 58
    check-cast v0, Landroid/widget/Button;

    .line 59
    invoke-static {v3}, Lcom/cbs/app/view/utils/Util;->s(Landroid/content/Context;)Z

    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 64
    new-instance v1, Lcom/cbs/app/view/fragments/settings/AppVersionFragment$1;

    invoke-direct {v1, p0}, Lcom/cbs/app/view/fragments/settings/AppVersionFragment$1;-><init>(Lcom/cbs/app/view/fragments/settings/AppVersionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_2
    :goto_1
    return-object v2

    .line 52
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 72
    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_1
.end method
