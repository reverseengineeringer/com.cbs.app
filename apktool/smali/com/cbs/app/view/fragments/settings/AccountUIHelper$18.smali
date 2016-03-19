.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1401
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1402
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1407
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1409
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->m()Landroid/app/Dialog;

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 1415
    :cond_1
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 3

    .prologue
    .line 1342
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1343
    if-eqz p1, :cond_3

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;

    if-eqz v0, :cond_3

    .line 1344
    check-cast p1, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;

    .line 1345
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/AuthEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1346
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1347
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1352
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1353
    const-string v1, "Invalid username/password."

    .line 1354
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1357
    const v2, 0x7f0f013f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1358
    if-eqz v0, :cond_2

    .line 1359
    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 1360
    :cond_2
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1361
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/app/Dialog;Ljava/lang/String;)V

    goto :goto_0

    .line 1384
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1389
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1390
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1391
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->m()Landroid/app/Dialog;

    .line 1393
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$18;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    goto :goto_0
.end method
