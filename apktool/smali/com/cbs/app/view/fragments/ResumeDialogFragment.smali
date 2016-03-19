.class public Lcom/cbs/app/view/fragments/ResumeDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/ResumeDialogFragment$ResumeDialogListener;
    }
.end annotation


# instance fields
.field a:Lcom/cbs/app/view/model/VideoData;

.field b:Lcom/cbs/app/view/fragments/ResumeDialogFragment$ResumeDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 46
    new-instance v9, Landroid/app/Dialog;

    invoke-direct {v9, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 48
    const v0, 0x7f030052

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 50
    const v0, 0x7f0f0075

    invoke-virtual {v9, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    const v1, 0x7f0f0399

    invoke-virtual {v9, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 52
    const v2, 0x7f0f039c

    invoke-virtual {v9, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    const v3, 0x7f0f039a

    invoke-virtual {v9, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 54
    const v4, 0x7f0f0396

    invoke-virtual {v9, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 55
    const v5, 0x7f0f0172

    invoke-virtual {v9, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 56
    const v6, 0x7f0f0173

    invoke-virtual {v9, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 57
    const v7, 0x7f0f0171

    invoke-virtual {v9, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 59
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 61
    iget-object v11, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    if-eqz v11, :cond_1

    .line 62
    const-string v11, "Show Title"

    iget-object v12, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v12}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v11, "Episode Title"

    iget-object v12, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v12}, Lcom/cbs/app/view/model/VideoData;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v11, "Video Id"

    iget-object v12, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v12}, Lcom/cbs/app/view/model/VideoData;->getCid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v11, "Time"

    iget-object v12, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v12}, Lcom/cbs/app/view/model/VideoData;->getDuration()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v11, Lcom/cbs/app/analytics/Action;->bR:Lcom/cbs/app/analytics/Action;

    invoke-static {v8, v11, v10}, Lcom/cbs/app/analytics/AnalyticsManager;->c(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 68
    iget-object v11, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v11}, Lcom/cbs/app/view/model/VideoData;->getSeriesTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->d(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-static {v8}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;)I

    move-result v11

    .line 73
    const-wide/high16 v12, 0x4062000000000000L    # 144.0

    int-to-float v11, v11

    invoke-static {v0, v12, v13, v11}, Lcom/cbs/app/view/utils/ImageHelper;->b(Ljava/lang/String;DF)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0, v4}, Lcom/cbs/app/view/utils/ImageHelper;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->b(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->c(Lcom/cbs/app/view/model/VideoData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;

    invoke-direct {v0, p0, v9, v10, v8}, Lcom/cbs/app/view/fragments/ResumeDialogFragment$1;-><init>(Lcom/cbs/app/view/fragments/ResumeDialogFragment;Landroid/app/Dialog;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$2;

    invoke-direct {v0, p0, v9, v10, v8}, Lcom/cbs/app/view/fragments/ResumeDialogFragment$2;-><init>(Lcom/cbs/app/view/fragments/ResumeDialogFragment;Landroid/app/Dialog;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_1
    new-instance v0, Lcom/cbs/app/view/fragments/ResumeDialogFragment$3;

    invoke-direct {v0, p0, v9, v10, v8}, Lcom/cbs/app/view/fragments/ResumeDialogFragment$3;-><init>(Lcom/cbs/app/view/fragments/ResumeDialogFragment;Landroid/app/Dialog;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-object v9
.end method

.method public setListener(Lcom/cbs/app/view/fragments/ResumeDialogFragment$ResumeDialogListener;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->b:Lcom/cbs/app/view/fragments/ResumeDialogFragment$ResumeDialogListener;

    .line 41
    return-void
.end method

.method public setVideoData(Lcom/cbs/app/view/model/VideoData;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/view/fragments/ResumeDialogFragment;->a:Lcom/cbs/app/view/model/VideoData;

    .line 37
    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 117
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 118
    return-void
.end method
