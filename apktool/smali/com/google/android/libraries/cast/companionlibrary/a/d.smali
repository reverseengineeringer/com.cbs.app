.class public final Lcom/google/android/libraries/cast/companionlibrary/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a:Z

    .line 60
    const-class v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;

    invoke-static {v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b:Ljava/lang/String;

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 341
    if-nez p0, :cond_0

    .line 350
    :goto_0
    return-object v0

    .line 344
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 346
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 348
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, p1, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v4, p1, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v0, v1

    .line 350
    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 315
    if-nez p0, :cond_0

    .line 337
    :goto_0
    return-object v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 319
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 321
    int-to-float v3, p2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 322
    int-to-float v4, p1

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 323
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 325
    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 326
    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 328
    int-to-float v3, p2

    sub-float/2addr v3, v1

    div-float/2addr v3, v6

    .line 329
    int-to-float v4, p1

    sub-float/2addr v4, v2

    div-float/2addr v4, v6

    .line 331
    new-instance v5, Landroid/graphics/RectF;

    add-float/2addr v1, v3

    add-float/2addr v2, v4

    invoke-direct {v5, v3, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 333
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 334
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 335
    invoke-virtual {v2, p0, v0, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    move-object v0, v1

    .line 337
    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/cast/d;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;)Lcom/google/android/gms/cast/d;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 224
    if-nez p0, :cond_0

    .line 296
    :goto_0
    return-object v2

    .line 228
    :cond_0
    new-instance v4, Lcom/google/android/gms/cast/e;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Lcom/google/android/gms/cast/e;-><init>(I)V

    .line 230
    const-string v0, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "com.google.android.gms.cast.metadata.TITLE"

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "com.google.android.gms.cast.metadata.STUDIO"

    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "images"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    new-instance v3, Lcom/google/android/gms/common/images/WebImage;

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/images/WebImage;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v4, v3}, Lcom/google/android/gms/cast/e;->a(Lcom/google/android/gms/common/images/WebImage;)V

    goto :goto_1

    .line 241
    :cond_1
    const-string v0, "custom-data"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 245
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 252
    :goto_2
    const-string v0, "track-data"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 254
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    const-string v0, "track-data"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 255
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :try_start_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 257
    const/4 v0, 0x0

    move v2, v0

    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 258
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 259
    new-instance v6, Lcom/google/android/gms/cast/h$a;

    const-string v7, "track-id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v7, "track-type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v8, v9, v7}, Lcom/google/android/gms/cast/h$a;-><init>(JI)V

    .line 261
    const-string v7, "track-name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 262
    const-string v7, "track-name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/cast/h$a;->b(Ljava/lang/String;)Lcom/google/android/gms/cast/h$a;

    .line 264
    :cond_2
    const-string v7, "track-subtype"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 265
    const-string v7, "track-subtype"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/cast/h$a;->a(I)Lcom/google/android/gms/cast/h$a;

    .line 267
    :cond_3
    const-string v7, "track-custom-id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 268
    const-string v7, "track-custom-id"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/cast/h$a;->a(Ljava/lang/String;)Lcom/google/android/gms/cast/h$a;

    .line 270
    :cond_4
    const-string v7, "track-language"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 271
    const-string v7, "track-language"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/cast/h$a;->c(Ljava/lang/String;)Lcom/google/android/gms/cast/h$a;

    .line 273
    :cond_5
    const-string v7, "track-data"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 274
    new-instance v7, Lorg/json/JSONObject;

    const-string v8, "track-data"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/cast/h$a;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/h$a;

    .line 277
    :cond_6
    invoke-virtual {v6}, Lcom/google/android/gms/cast/h$a;->a()Lcom/google/android/gms/cast/h;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 257
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_3

    .line 247
    :catch_0
    move-exception v0

    sget-object v0, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Failed to deserialize the custom data string: custom data= "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v1, v2

    goto/16 :goto_2

    :cond_8
    move-object v2, v3

    .line 284
    :cond_9
    :goto_4
    new-instance v0, Lcom/google/android/gms/cast/d$a;

    const-string v3, "movie-urls"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/cast/d$a;-><init>(Ljava/lang/String;)V

    const-string v3, "stream-type"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/d$a;->a(I)Lcom/google/android/gms/cast/d$a;

    move-result-object v0

    const-string v3, "content-type"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/d$a;->a(Ljava/lang/String;)Lcom/google/android/gms/cast/d$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/d$a;->a(Lcom/google/android/gms/cast/e;)Lcom/google/android/gms/cast/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/d$a;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/d$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/d$a;->a(Ljava/util/List;)Lcom/google/android/gms/cast/d$a;

    move-result-object v0

    .line 291
    const-string v1, "stream-duration"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "stream-duration"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_a

    .line 293
    const-string v1, "stream-duration"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/cast/d$a;->a(J)Lcom/google/android/gms/cast/d$a;

    .line 296
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d$a;->a()Lcom/google/android/gms/cast/d;

    move-result-object v2

    goto/16 :goto_0

    .line 280
    :catch_1
    move-exception v0

    .line 281
    :goto_5
    sget-object v3, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b:Ljava/lang/String;

    const-string v5, "Failed to build media tracks from the wrapper bundle"

    invoke-static {v3, v5, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 280
    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_5
.end method

.method public static a(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    div-int/lit16 v0, p0, 0x3e8

    .line 84
    div-int/lit16 v1, v0, 0xe10

    .line 85
    rem-int/lit16 v0, v0, 0xe10

    .line 86
    div-int/lit8 v2, v0, 0x3c

    .line 87
    rem-int/lit8 v0, v0, 0x3c

    .line 90
    if-lez v1, :cond_0

    .line 91
    const-string v3, "%d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-string v1, "%d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 304
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    return-void
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {p0}, Lcom/google/android/gms/common/e;->a(Landroid/content/Context;)I

    move-result v1

    .line 140
    packed-switch v1, :pswitch_data_0

    .line 144
    invoke-static {v1, p0, v0}, Lcom/google/android/gms/common/e;->a(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/google/android/libraries/cast/companionlibrary/a/d$1;

    invoke-direct {v2, p0}, Lcom/google/android/libraries/cast/companionlibrary/a/d$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 152
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 154
    :goto_0
    return v0

    .line 142
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lcom/google/android/gms/cast/d;)Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 213
    :goto_0
    return-object v0

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    .line 170
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    const-string v3, "com.google.android.gms.cast.metadata.TITLE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v3, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "movie-urls"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "com.google.android.gms.cast.metadata.STUDIO"

    const-string v3, "com.google.android.gms.cast.metadata.STUDIO"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "content-type"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "stream-type"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v2, "stream-duration"

    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->e()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    invoke-virtual {v0}, Lcom/google/android/gms/cast/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/WebImage;

    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/common/images/WebImage;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 183
    :cond_1
    const-string v0, "images"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_3

    .line 187
    const-string v2, "custom-data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 191
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    .line 193
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 194
    const-string v5, "track-name"

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v5, "track-custom-id"

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string v5, "track-id"

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    const-string v5, "track-language"

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v5, "track-type"

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->b()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->f()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 200
    const-string v5, "track-subtype"

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->f()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->g()Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 203
    const-string v5, "track-custom-data"

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :cond_5
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 208
    :catch_0
    move-exception v0

    .line 209
    sget-object v2, Lcom/google/android/libraries/cast/companionlibrary/a/d;->b:Ljava/lang/String;

    const-string v3, "mediaInfoToBundle(): Failed to convert Tracks data to json"

    invoke-static {v2, v3, v0}, Lcom/google/android/libraries/cast/companionlibrary/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    move-object v0, v1

    .line 213
    goto/16 :goto_0

    .line 207
    :cond_7
    :try_start_1
    const-string v0, "track-data"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
