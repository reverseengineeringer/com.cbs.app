.class final Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/show/LiveFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 101
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    .line 102
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    .line 63
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    if-eqz v0, :cond_2

    .line 64
    check-cast p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    .line 65
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 68
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getActionTarget()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android_content_1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iput-object v0, v2, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->i:Lcom/cbs/app/view/model/UpsellInfo;

    .line 71
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->i:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/UpsellInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->a(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upsell title : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->a(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->i:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->b(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upsell message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->b(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->i:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->c(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->i:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellImagePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->d(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upsell image1 url1 : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->c(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->i:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellImagePath1()Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    .line 82
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v3, v3, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->i:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v3}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "callToActionText : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v3}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->d(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v2, v2, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->i:Lcom/cbs/app/view/model/UpsellInfo;

    invoke-virtual {v2}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    .line 85
    iget-object v3, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v4}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->f(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->f(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " callToAction: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " callToActionUrl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v2}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->f(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->g(Lcom/cbs/app/view/fragments/show/LiveFeedFragment;)Landroid/support/v7/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/LiveFeedFragment$1;->a:Lcom/cbs/app/view/fragments/show/LiveFeedFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/show/LiveFeedFragment;->a()V

    .line 97
    :cond_2
    return-void
.end method
