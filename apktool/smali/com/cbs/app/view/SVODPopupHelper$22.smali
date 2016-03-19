.class final Lcom/cbs/app/view/SVODPopupHelper$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/cbs/app/view/SVODPopupHelper$22;->a:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/cbs/app/view/SVODPopupHelper$22;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 5

    .prologue
    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$22;->a:Landroid/app/AlertDialog;

    const v2, 0x7f0f0187

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 346
    iget-object v2, p0, Lcom/cbs/app/view/SVODPopupHelper$22;->b:Landroid/content/Context;

    const v3, 0x7f080250

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 352
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 353
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$22;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/cbs/app/view/SVODPopupHelper$22;->a:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 355
    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 356
    const/4 v0, 0x2

    invoke-virtual {v2, v0, v4}, Landroid/widget/Button;->setTextSize(IF)V

    .line 358
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/cbs/app/view/NavigationActivity;

    if-eqz v0, :cond_3

    .line 359
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    .line 360
    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 364
    :goto_0
    if-eqz v0, :cond_2

    .line 365
    const-string v1, "fragment_live_tv"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 367
    :goto_1
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/cbs/app/livetv/fragment/LiveTvFragment;

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lcom/cbs/app/view/SVODPopupHelper$22$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/view/SVODPopupHelper$22$1;-><init>(Lcom/cbs/app/view/SVODPopupHelper$22;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->bJ:Lcom/cbs/app/analytics/Action;

    .line 377
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 378
    const-string v2, "pageView"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v2, "evar_6"

    const-string v3, "CBS svod"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v2, "prop_6"

    const-string v3, "CBS svod"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v2, "events"

    const-string v3, "event20"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v2, "evar_70"

    const-string v3, "303"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v2, "prop_70"

    const-string v3, "303"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 385
    const-string v2, "From"

    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    .line 388
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
