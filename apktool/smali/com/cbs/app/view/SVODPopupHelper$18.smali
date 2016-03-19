.class final Lcom/cbs/app/view/SVODPopupHelper$18;
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
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 213
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->d:Z

    .line 214
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->a()V

    .line 215
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 181
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 182
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    if-eqz v0, :cond_2

    .line 183
    check-cast p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    .line 184
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 186
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 187
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 188
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "title:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aa_upsell_text1"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aa_upsell_text2"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sign_up_call_to_action"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action text:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "svod_launch_upsell_product_id"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sign_up_call_to_action_url"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->d:Z

    .line 205
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->a()V

    .line 208
    :cond_2
    return-void
.end method
