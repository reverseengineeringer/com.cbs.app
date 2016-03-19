.class final Lcom/cbs/app/view/SVODPopupHelper$12;
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
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 138
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->b:Z

    .line 140
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->a()V

    .line 141
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 110
    instance-of v0, p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    if-eqz v0, :cond_1

    .line 111
    check-cast p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    .line 112
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 114
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 115
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 116
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "title:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aa_upsell_text1"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "aa_upsell_text2"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sign_up_call_to_action"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "action text:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sign_up_call_to_action_url"

    invoke-static {v2, v3, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "svod_launch_upsell_product_id"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/cbs/app/view/SVODPopupHelper;->b:Z

    .line 131
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->a()V

    .line 134
    :cond_1
    return-void
.end method
