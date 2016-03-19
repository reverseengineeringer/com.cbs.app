.class public Lcom/cbs/app/view/IwantToSeeDialogFrag;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/IwantToSeeDialogFrag$a;,
        Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/IwantToSeeDialogFrag;)Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->c:Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;

    return-object v0
.end method

.method static synthetic b(Lcom/cbs/app/view/IwantToSeeDialogFrag;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/view/IwantToSeeDialogFrag;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->d:F

    return v0
.end method

.method static synthetic d(Lcom/cbs/app/view/IwantToSeeDialogFrag;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->b:I

    return v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 96
    iput-object p1, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->a:Landroid/content/Context;

    .line 97
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 102
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->c:Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->c:Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;

    invoke-interface {v0}, Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;->b()V

    .line 104
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 43
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->a:Landroid/content/Context;

    const v2, 0x7f0b013e

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 44
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 46
    const/16 v3, 0x31

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 48
    const v0, 0x7f03009b

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 49
    const v0, 0x7f0f026e

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 50
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1072
    iget-object v3, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1073
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1074
    invoke-virtual {p0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1075
    const v5, 0x3db851ec    # 0.09f

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v4, v3

    iput v3, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->d:F

    .line 1079
    :goto_0
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1080
    iget v4, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->d:F

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1081
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string v4, "Late Night "

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 50
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
    invoke-virtual {p0}, Lcom/cbs/app/view/IwantToSeeDialogFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 52
    const-string v3, "selected"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->b:I

    .line 53
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v3, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;

    invoke-direct {v3, p0, v2}, Lcom/cbs/app/view/IwantToSeeDialogFrag$a;-><init>(Lcom/cbs/app/view/IwantToSeeDialogFrag;[Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    new-instance v2, Lcom/cbs/app/view/IwantToSeeDialogFrag$1;

    invoke-direct {v2, p0}, Lcom/cbs/app/view/IwantToSeeDialogFrag$1;-><init>(Lcom/cbs/app/view/IwantToSeeDialogFrag;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    return-object v1

    .line 1077
    :cond_0
    const v5, 0x3d8f5c29    # 0.07f

    int-to-float v4, v4

    mul-float/2addr v4, v5

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v4, v3

    iput v3, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->d:F

    goto :goto_0
.end method

.method public setListener(Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/cbs/app/view/IwantToSeeDialogFrag;->c:Lcom/cbs/app/view/IwantToSeeDialogFrag$IwantToSeeResponse;

    .line 86
    return-void
.end method
