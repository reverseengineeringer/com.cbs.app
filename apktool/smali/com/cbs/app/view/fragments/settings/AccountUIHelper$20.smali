.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/TOUDialogFragment$TOUDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

.field final synthetic e:Lcom/cbs/app/view/fragments/settings/DoneListener;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/cbs/app/view/fragments/TOUDialogFragment;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Lcom/cbs/app/view/fragments/TOUDialogFragment;)V
    .locals 0

    .prologue
    .line 1631
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->d:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    iput-object p5, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->e:Lcom/cbs/app/view/fragments/settings/DoneListener;

    iput-object p6, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->g:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1653
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1654
    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setTermsDialogIsShowing(Z)V

    .line 1655
    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    .line 1656
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->e:Lcom/cbs/app/view/fragments/settings/DoneListener;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    .line 1657
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    .line 1634
    if-eqz p1, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->d:Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->e:Lcom/cbs/app/view/fragments/settings/DoneListener;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->g:Lcom/cbs/app/view/fragments/TOUDialogFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/TOUDialogFragment;->dismiss()V

    .line 1648
    :goto_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/cbs/app/view/utils/Util;->a(Landroid/app/Activity;)Z

    .line 1649
    return-void

    .line 1639
    :cond_0
    sget-object v0, Lcom/cbs/app/analytics/Action;->bm:Lcom/cbs/app/analytics/Action;

    .line 1640
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1641
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

    .line 1642
    const-string v2, "events"

    const-string v3, "event20"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    const-string v2, "pageTitle"

    const-string v3, "setting"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const-string v2, "evar_70"

    const-string v3, "You need to accept our terms in order to continue."

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    const-string v2, "prop_70"

    const-string v3, "You need to accept our terms in order to continue."

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$20;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/cbs/app/analytics/AnalyticsManager;->a(Landroid/content/Context;Lcom/cbs/app/analytics/Action;Ljava/util/HashMap;)V

    goto :goto_0
.end method
