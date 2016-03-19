.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;ZLcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/cbs/app/view/fragments/settings/DoneListener;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->b:Z

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->c:Lcom/cbs/app/view/fragments/settings/DoneListener;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1521
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1522
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h(Landroid/content/Context;)V

    .line 1526
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->c:Lcom/cbs/app/view/fragments/settings/DoneListener;

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->c:Lcom/cbs/app/view/fragments/settings/DoneListener;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cbs/app/view/fragments/settings/DoneListener;->a(Ljava/lang/String;)V

    .line 1529
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 6

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1482
    :cond_0
    if-eqz p1, :cond_4

    instance-of v0, p1, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    if-eqz v0, :cond_4

    .line 1483
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    move-object v1, p1

    .line 1484
    check-cast v1, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;

    .line 1486
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1487
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1488
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1489
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->b:Z

    if-eqz v0, :cond_2

    .line 1490
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1491
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->c:Lcom/cbs/app/view/fragments/settings/DoneListener;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->d:Ljava/lang/String;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;)V

    goto :goto_0

    .line 1493
    :cond_2
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1495
    invoke-virtual {v1}, Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;->getUserId()J

    move-result-wide v2

    .line 1496
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 1497
    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1498
    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->c:Lcom/cbs/app/view/fragments/settings/DoneListener;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;Ljava/lang/String;Lcom/cbs/app/view/fragments/settings/DoneListener;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1503
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1504
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1505
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b()V

    .line 1506
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->c:Lcom/cbs/app/view/fragments/settings/DoneListener;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    goto :goto_0

    .line 1511
    :cond_4
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 1512
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 1513
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    const-string v1, "CBS Sign In"

    const-string v2, "There was an issue logging into your account. Please try again."

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$19;->c:Lcom/cbs/app/view/fragments/settings/DoneListener;

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Lcom/cbs/app/view/fragments/settings/DoneListener;)V

    goto/16 :goto_0
.end method
