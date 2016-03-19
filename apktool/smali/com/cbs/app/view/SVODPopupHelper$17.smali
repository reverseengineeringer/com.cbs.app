.class final Lcom/cbs/app/view/SVODPopupHelper$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/androiddata/ResponseModelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/SVODPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 172
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 173
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->c:Z

    .line 174
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->a()V

    .line 175
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 147
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 148
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    if-eqz v0, :cond_1

    .line 149
    check-cast p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    .line 150
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 152
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 155
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "learn_more_call_to_action"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v2

    const-string v3, "learn_more_call_to_action_url"

    invoke-static {v2, v3, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "svod_launch_upsell_product_id"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->c:Z

    .line 165
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->a()V

    .line 168
    :cond_1
    return-void
.end method
