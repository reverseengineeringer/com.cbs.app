.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2634
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2637
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 2638
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 2639
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2642
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->a:Landroid/view/View;

    const v1, 0x7f0f0159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2643
    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 2644
    check-cast v0, Landroid/widget/EditText;

    .line 2645
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2646
    if-eqz v0, :cond_2

    .line 2647
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2650
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->a:Landroid/view/View;

    const v1, 0x7f0f015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2651
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 2652
    check-cast v0, Landroid/widget/EditText;

    .line 2653
    const-string v4, "password field"

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2654
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2655
    if-eqz v0, :cond_1

    .line 2656
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 2659
    :goto_1
    if-eqz v2, :cond_0

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v4, :cond_0

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2660
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->a:Landroid/view/View;

    const-string v5, ""

    invoke-static {v0, v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/view/View;Ljava/lang/String;)V

    .line 2661
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->b:Landroid/content/Context;

    const-string v5, "input_method"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2662
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2664
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeVideo(Lcom/cbs/app/view/model/VideoData;)V

    .line 2665
    invoke-static {v3}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeeShow(Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 2666
    invoke-static {v6}, Lcom/cbs/app/view/SVODPopupHelper;->setWeWantToSeelUpsellAfterAuth(Z)V

    .line 2668
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->b:Landroid/content/Context;

    invoke-static {v0, v2, v4, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2682
    :goto_2
    return-void

    .line 2670
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->bm:Lcom/cbs/app/analytics/Action;

    .line 2671
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2672
    const-string v2, "events"

    const-string v3, "event28"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2673
    const-string v2, "appState"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cbscom:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2674
    const-string v2, "pageTitle"

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2675
    const-string v2, "logintype"

    const-string v3, "email"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 2678
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$41;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->j(Landroid/content/Context;)V

    .line 2679
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 2680
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    :cond_1
    move-object v4, v3

    goto/16 :goto_1

    :cond_2
    move-object v2, v3

    goto/16 :goto_0
.end method
