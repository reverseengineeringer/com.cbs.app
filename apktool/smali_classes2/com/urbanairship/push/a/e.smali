.class public abstract Lcom/urbanairship/push/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/a/e;->a:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private a(Ljava/net/URL;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching notification image at URL: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    iget-object v0, p0, Lcom/urbanairship/push/a/e;->a:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 415
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 416
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 419
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 422
    const/4 v2, 0x1

    const/high16 v3, 0x43700000    # 240.0f

    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 424
    iget-object v2, p0, Lcom/urbanairship/push/a/e;->a:Landroid/content/Context;

    invoke-static {v2, p1, v0, v1}, Lcom/urbanairship/d/a;->a(Landroid/content/Context;Ljava/net/URL;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 308
    new-instance v1, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 310
    const-string v2, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    const-string v3, "summary"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 314
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v5, "big_picture"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, v4}, Lcom/urbanairship/push/a/e;->a(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 316
    if-nez v5, :cond_0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create big picture style, unable to fetch image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    .line 334
    :goto_0
    return-object v0

    .line 320
    :cond_0
    invoke-direct {p0, v4}, Lcom/urbanairship/push/a/e;->a(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    .line 330
    :cond_1
    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 331
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    :cond_2
    move-object v0, v1

    .line 334
    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 322
    const-string v2, "Malformed big picture URL."

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
    .locals 6

    .prologue
    .line 343
    new-instance v1, Landroid/support/v4/app/NotificationCompat$InboxStyle;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;-><init>()V

    .line 345
    const-string v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    const-string v0, "summary"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    const-string v0, "lines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 349
    if-eqz v4, :cond_1

    .line 350
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 351
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 352
    if-eqz v5, :cond_0

    .line 353
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 350
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_1
    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 362
    :cond_2
    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 363
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    .line 366
    :cond_3
    return-object v1
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
.end method

.method protected final a(Lcom/urbanairship/push/PushMessage;)Landroid/support/v4/app/NotificationCompat$Style;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->m()Ljava/lang/String;

    move-result-object v1

    .line 224
    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    const-string v1, "type"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1280
    :pswitch_0
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 1282
    const-string v1, "title"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1283
    const-string v3, "summary"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1285
    const-string v4, "big_text"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1286
    invoke-static {v2}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1287
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 1290
    :cond_3
    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1291
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 1294
    :cond_4
    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1295
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    const-string v2, "Failed to parse notification style payload."

    invoke-static {v2, v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 238
    :sswitch_0
    const-string v4, "big_text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v4, "inbox"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "big_picture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    .line 242
    :pswitch_1
    invoke-static {v2}, Lcom/urbanairship/push/a/e;->b(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$InboxStyle;

    move-result-object v0

    goto :goto_0

    .line 244
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/urbanairship/push/a/e;->a(Lorg/json/JSONObject;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    goto :goto_0

    .line 238
    nop

    :sswitch_data_0
    .sparse-switch
        0x5fb2286 -> :sswitch_1
        0x2bd5a10c -> :sswitch_0
        0x435480bf -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/urbanairship/push/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected final b(Lcom/urbanairship/push/PushMessage;I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 7

    .prologue
    .line 165
    new-instance v1, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 167
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->l()Ljava/lang/String;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    move-object v0, v1

    .line 213
    :goto_0
    return-object v0

    .line 174
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const-string v0, "interactive_type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string v3, "interactive_actions"

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 183
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/j;->b(Ljava/lang/String;)Lcom/urbanairship/push/a/d;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 1080
    iget-object v4, p0, Lcom/urbanairship/push/a/e;->a:Landroid/content/Context;

    .line 186
    invoke-virtual {v0, v4, p1, p2, v3}, Lcom/urbanairship/push/a/d;->a(Landroid/content/Context;Lcom/urbanairship/push/PushMessage;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addActions(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 191
    :cond_1
    const-string v0, "background_image"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 194
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/urbanairship/push/a/e;->a(Ljava/net/URL;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 195
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 201
    :cond_2
    :goto_1
    const-string v0, "extra_pages"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_6

    .line 203
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 204
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 205
    if-eqz v3, :cond_5

    .line 1256
    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 1258
    const-string v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1259
    invoke-static {v5}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1260
    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 1263
    :cond_3
    const-string v5, "alert"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1264
    invoke-static {v3}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1265
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 1268
    :cond_4
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/urbanairship/push/a/e;->a:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 209
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 203
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v2, "Failed to parse wearable payload."

    invoke-static {v2, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 177
    goto/16 :goto_0

    .line 196
    :catch_1
    move-exception v0

    .line 197
    const-string v3, "Wearable background url is malformed."

    invoke-static {v3, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 213
    goto/16 :goto_0
.end method

.method protected final c(Lcom/urbanairship/push/PushMessage;I)Landroid/app/Notification;
    .locals 3

    .prologue
    .line 377
    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/urbanairship/push/PushMessage;->q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 381
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2080
    iget-object v2, p0, Lcom/urbanairship/push/a/e;->a:Landroid/content/Context;

    .line 381
    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "alert"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 387
    const-string v2, "summary"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const-string v2, "summary"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 390
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    const-string v1, "Failed to parse public notification."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
