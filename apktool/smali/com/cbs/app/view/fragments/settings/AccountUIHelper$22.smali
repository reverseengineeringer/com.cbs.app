.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1840
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1841
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1843
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue creating your account. Please try again later."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 1845
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 1795
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1796
    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;

    if-eqz v0, :cond_2

    .line 1797
    check-cast p1, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;

    .line 1799
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->getRegistrationStatus()Ljava/lang/String;

    move-result-object v0

    .line 1800
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/ReconcileEndpointResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1801
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1802
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 1803
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    :goto_0
    return-void

    .line 1805
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "NEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1806
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1808
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1810
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1812
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    goto :goto_0

    .line 1830
    :cond_2
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1832
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$22;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    goto :goto_0
.end method
