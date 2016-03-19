.class final Lcom/cbs/app/view/SVODPopupHelper$19;
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
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 274
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 275
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v1, "svod_launch_upsell_counter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    .line 277
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v2, "svod_launch_upsell_counter"

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 278
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->b()V

    .line 281
    :cond_0
    return-void
.end method

.method public final a(Lcom/cbs/app/androiddata/ResponseModel;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 223
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 224
    const-string v0, ""

    .line 225
    instance-of v1, p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    if-eqz v1, :cond_3

    .line 226
    check-cast p1, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;

    .line 227
    invoke-virtual {p1}, Lcom/cbs/app/view/model/rest/UpsellEndpointResponse;->getUpsellInfo()Ljava/util/List;

    move-result-object v1

    .line 228
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 229
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/model/UpsellInfo;

    .line 230
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v3, "svod_launch_upsell_text1"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v3, "svod_launch_upsell_text2"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage2()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v3, "svod_launch_upsell_text3"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellMessage3()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v3, "svod_launch_upsell_call_to_action"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v3, "svod_launch_upsell_product_id"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getProductID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getCallToActionURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v3

    const-string v4, "svod_launch_upsell_call_to_action_url"

    invoke-static {v3, v4, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v3, "svod_launch_upsell_content_id"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getContentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_1

    .line 245
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    .line 247
    :cond_1
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v3

    const-string v4, "svod_launch_upsell_background_image"

    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getUpsellImagePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0}, Lcom/cbs/app/view/model/UpsellInfo;->getDisplayFrequency()J

    move-result-wide v4

    long-to-int v0, v4

    .line 249
    if-nez v0, :cond_2

    .line 250
    const/4 v0, 0x5

    .line 252
    :cond_2
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v3

    const-string v4, "svod_launch_upsell_frequency"

    invoke-static {v3, v4, v0}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    move-object v0, v1

    .line 257
    :cond_3
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v3, "svod_launch_upsell_frequency"

    invoke-static {v1, v3, v2}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 258
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    .line 259
    :goto_0
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->d()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkToShowLaunchUpsell counter2: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " frequency: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->f()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_7

    rem-int v3, v1, v3

    if-nez v3, :cond_7

    .line 261
    :cond_4
    const/4 v3, 0x1

    sput-boolean v3, Lcom/cbs/app/view/SVODPopupHelper;->a:Z

    .line 262
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/cbs/app/view/SVODPopupHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/cbs/app/view/SVODPopupHelper;->a(Z)Z

    .line 269
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v0

    const-string v2, "svod_launch_upsell_counter"

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/cbs/app/view/utils/Preferences;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 270
    return-void

    .line 258
    :cond_6
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->e()Landroid/content/Context;

    move-result-object v1

    const-string v4, "svod_launch_upsell_counter"

    invoke-static {v1, v4, v2}, Lcom/cbs/app/view/utils/Preferences;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 264
    :cond_7
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    invoke-static {}, Lcom/cbs/app/view/SVODPopupHelper;->b()V

    goto :goto_1
.end method
