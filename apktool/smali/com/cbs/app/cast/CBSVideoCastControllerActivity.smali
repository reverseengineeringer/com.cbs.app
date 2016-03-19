.class public Lcom/cbs/app/cast/CBSVideoCastControllerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/cast/companionlibrary/cast/player/d;


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private A:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

.field a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;

.field b:Z

.field c:I

.field private e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/cbs/app/cast/ChromecastSeekBar;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:D

.field private q:Landroid/view/View;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

.field private v:I

.field private w:Landroid/widget/ImageView;

.field private x:D

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$1;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$1;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;

    .line 72
    iput-boolean v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->b:Z

    .line 73
    iput v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c:I

    .line 93
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->x:D

    .line 94
    iput-boolean v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->y:Z

    .line 95
    iput-boolean v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->z:Z

    .line 100
    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;

    invoke-direct {v0, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$2;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->A:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    return-void
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->x:D

    return-wide v0
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;D)D
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->x:D

    return-wide p1
.end method

.method static synthetic a(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;Z)Z
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->y:Z

    return p1
.end method

.method public static a(Z)[J
    .locals 10

    .prologue
    const-wide/16 v4, -0x1

    .line 555
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 556
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F()Lcom/google/android/gms/cast/i;

    move-result-object v0

    .line 558
    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->d()Lcom/google/android/gms/cast/d;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_1

    .line 563
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v0

    .line 564
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tracks.size(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v2, v4

    move-wide v6, v4

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    .line 569
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    move-wide v0, v2

    move-wide v2, v0

    .line 585
    goto :goto_0

    .line 571
    :pswitch_1
    if-eqz p0, :cond_0

    cmp-long v1, v6, v4

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v0

    .line 573
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v6, v0

    goto :goto_0

    .line 577
    :pswitch_2
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v2

    .line 579
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 589
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [J

    .line 590
    const/4 v0, 0x0

    .line 591
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 592
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 593
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 594
    goto :goto_2

    .line 595
    :cond_2
    return-object v2

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->y:Z

    return v0
.end method

.method private d()V
    .locals 10

    .prologue
    .line 151
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F()Lcom/google/android/gms/cast/i;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->d()Lcom/google/android/gms/cast/d;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->g()Lorg/json/JSONObject;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "customData2: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :try_start_0
    const-string v1, "adBreaks"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 167
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 168
    const-string v4, "position"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    const-string v5, "startTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 170
    const-string v6, "startMediaTime"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 171
    const-string v7, "durationMediaTime"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 172
    const-string v8, "isUnwatched"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 173
    new-instance v8, Lcom/cbs/app/pid/CBSAd;

    invoke-direct {v8, v4, v5, v7, v3}, Lcom/cbs/app/pid/CBSAd;-><init>(Ljava/lang/String;IIZ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "position: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " startTime: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " endTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isUnwatched: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v2}, Lcom/cbs/app/cast/ChromecastSeekBar;->setAds(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e()V

    .line 190
    :cond_2
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    sget-object v1, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic d(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2246
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 2247
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F()Lcom/google/android/gms/cast/i;

    move-result-object v0

    .line 2248
    if-eqz v0, :cond_0

    .line 2253
    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->c()Lcom/google/android/gms/cast/g;

    move-result-object v0

    .line 2254
    if-eqz v0, :cond_0

    .line 2255
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediaStatus: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "medaiStatus getPlayerState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/g;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2259
    invoke-virtual {v0}, Lcom/google/android/gms/cast/g;->j()Lorg/json/JSONObject;

    move-result-object v0

    .line 2260
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e()V

    .line 2261
    if-eqz v0, :cond_0

    .line 2262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "customData3: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2264
    :try_start_0
    const-string v1, "MDIALOG_CAST_SDK_STATUS"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2265
    if-eqz v0, :cond_0

    .line 2268
    :try_start_1
    const-string v1, "AdBreak:Playing"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2269
    if-eqz v0, :cond_1

    .line 2271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->z:Z

    .line 2272
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V

    .line 2288
    :cond_0
    :goto_0
    return-void

    .line 2275
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->z:Z

    .line 2276
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2278
    :catch_0
    move-exception v0

    .line 2279
    :try_start_2
    sget-object v1, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json error1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->z:Z

    .line 2281
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2284
    :catch_1
    move-exception v0

    .line 2285
    sget-object v1, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "json error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    iput-boolean v4, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->z:Z

    .line 2287
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v5}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V

    goto :goto_0
.end method

.method private e()V
    .locals 11

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1221
    .line 1222
    invoke-static {}, Lcom/cbs/app/view/MainApplication;->getVideoCastManager()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->F()Lcom/google/android/gms/cast/i;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_6

    .line 1225
    invoke-virtual {v0}, Lcom/google/android/gms/cast/i;->d()Lcom/google/android/gms/cast/d;

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_6

    .line 1227
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->f()Ljava/util/List;

    move-result-object v0

    .line 1228
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 1229
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tracks.size(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    .line 1231
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->b()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 1232
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "trackId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1233
    invoke-virtual {v0}, Lcom/google/android/gms/cast/h;->a()J

    move-result-wide v4

    .line 195
    :goto_0
    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->Z()[J

    move-result-object v3

    .line 197
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "activeTrackIds.length: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    array-length v6, v3

    move v0, v2

    :goto_1
    if-ge v0, v6, :cond_5

    aget-wide v8, v3, v0

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "comparing "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " to "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    cmp-long v7, v8, v4

    if-nez v7, :cond_1

    move v0, v1

    .line 207
    :goto_2
    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 218
    :goto_3
    return-void

    .line 200
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_3

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_3

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move-wide v4, v6

    goto :goto_0
.end method

.method static synthetic e(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d()V

    return-void
.end method

.method static synthetic f(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->z:Z

    return v0
.end method

.method static synthetic g(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/cbs/app/cast/ChromecastSeekBar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    return-object v0
.end method

.method static synthetic h(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->u:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    return-object v0
.end method

.method static synthetic i(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic j(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Lcom/google/android/libraries/cast/companionlibrary/cast/c;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    return-object v0
.end method

.method static synthetic k(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, p1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setProgress(I)V

    .line 821
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, p2}, Lcom/cbs/app/cast/ChromecastSeekBar;->setMax(I)V

    .line 822
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->g:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/google/android/libraries/cast/companionlibrary/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0b00e9

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "CBS"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Ok"

    new-instance v3, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$9;

    invoke-direct {v3, p0, p1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$9;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 549
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 550
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 552
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    new-instance v1, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;

    invoke-direct {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;-><init>()V

    .line 622
    const-string v2, "com.google.android.libraries.cast.companionlibrary.cast.dialog.video.VideoMediaRouteControllerDialogFragment"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/dialog/video/VideoMediaRouteControllerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 692
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 624
    :cond_1
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->n()Landroid/support/v7/media/MediaRouteSelector;

    move-result-object v1

    .line 625
    new-instance v2, Landroid/support/v7/app/MediaRouteChooserDialogFragment;

    invoke-direct {v2}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;-><init>()V

    .line 626
    invoke-virtual {v2, v1}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    .line 627
    const-string v1, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->finish()V

    .line 911
    return-void
.end method

.method public final b(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 706
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->m:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V

    .line 709
    return-void

    .line 706
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 4

    .prologue
    .line 714
    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 716
    :goto_0
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v1, v0}, Lcom/cbs/app/cast/ChromecastSeekBar;->setVisibility(I)V

    .line 719
    if-eqz p1, :cond_0

    .line 720
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_0

    .line 722
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    const-string v2, "LIVE | "

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LIVE | "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :cond_0
    return-void

    .line 714
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 901
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->q:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 902
    if-eqz p1, :cond_1

    .line 903
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->v:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c(Z)V

    .line 905
    :cond_1
    return-void

    .line 901
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-wide v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->p:D

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Landroid/view/KeyEvent;D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 299
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 301
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 302
    if-nez v1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->finish()V

    .line 343
    :goto_0
    return-void

    .line 306
    :cond_0
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->setContentView(I)V

    .line 307
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0, v6}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->setRequestedOrientation(I)V

    .line 310
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 311
    iput-boolean v6, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->b:Z

    .line 1371
    const v0, 0x7f0f00c5

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->w:Landroid/widget/ImageView;

    .line 1372
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201de

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->r:Landroid/graphics/drawable/Drawable;

    .line 1373
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->s:Landroid/graphics/drawable/Drawable;

    .line 1374
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020216

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->t:Landroid/graphics/drawable/Drawable;

    .line 1376
    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    .line 1377
    const v0, 0x7f0f00cc

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->g:Landroid/widget/TextView;

    .line 1378
    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->h:Landroid/widget/TextView;

    .line 1379
    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/ChromecastSeekBar;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    .line 1380
    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j:Landroid/widget/TextView;

    .line 1381
    const v0, 0x7f0f00d0

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->k:Landroid/widget/TextView;

    .line 1382
    const v0, 0x7f0f00c3

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->l:Landroid/widget/TextView;

    .line 1383
    const v0, 0x7f0f00c6

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->m:Landroid/widget/ProgressBar;

    .line 1384
    const v0, 0x7f0f00b5

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->q:Landroid/view/View;

    .line 1385
    const v0, 0x7f0f00ca

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    .line 1386
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->setClosedCaptionState(I)V

    .line 1387
    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->o:Landroid/widget/ImageView;

    .line 1389
    const v0, 0x7f0f00c1

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1390
    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$4;

    invoke-direct {v2, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$4;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1398
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;

    invoke-direct {v2, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$5;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;

    invoke-direct {v2, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$6;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    invoke-virtual {v0, v2}, Lcom/cbs/app/cast/ChromecastSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1464
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;

    invoke-direct {v2, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$7;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1499
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e()V

    .line 1502
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->L()Z

    move-result v0

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->y:Z

    .line 1503
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->K()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->x:D

    .line 1505
    iget-wide v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->x:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_2

    .line 1506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->y:Z
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/a; {:try_start_0 .. :try_end_0} :catch_2

    .line 1516
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->y:Z

    if-eqz v0, :cond_4

    .line 1517
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->o:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 1522
    :goto_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->o:Landroid/widget/ImageView;

    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$8;

    invoke-direct {v2, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$8;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->X()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->p:D

    .line 315
    iget-wide v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->p:D

    const-wide/high16 v4, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpl-double v0, v2, v4

    if-nez v0, :cond_3

    .line 316
    const-wide v2, 0x3fa999999999999aL    # 0.05

    iput-wide v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->p:D

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->A:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 319
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->a:Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/tracks/a;)V

    .line 320
    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 321
    new-instance v2, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$3;

    invoke-direct {v2, p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity$3;-><init>(Lcom/cbs/app/cast/CBSVideoCastControllerActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 331
    const-string v0, "task"

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    .line 333
    if-nez v0, :cond_5

    .line 334
    invoke-static {v1}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment;->a(Landroid/os/Bundle;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment;

    move-result-object v0

    .line 335
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "task"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 336
    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->u:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    .line 337
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->u:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    invoke-virtual {p0, v0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->setOnVideoCastControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;)V

    goto/16 :goto_0

    .line 1509
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;->printStackTrace()V

    goto :goto_1

    .line 1511
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;->printStackTrace()V

    goto :goto_1

    .line 1513
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/a;->printStackTrace()V

    goto :goto_1

    .line 1519
    :cond_4
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_2

    .line 339
    :cond_5
    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->u:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    .line 340
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->u:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    invoke-interface {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;->c()V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->A:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->b(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 363
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->b:Z

    .line 366
    invoke-static {p0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;)V

    .line 368
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 353
    invoke-static {}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->B()Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    .line 354
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->A:Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->a(Lcom/google/android/libraries/cast/companionlibrary/cast/a/c;)V

    .line 355
    invoke-direct {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d()V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->b:Z

    .line 357
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 358
    return-void
.end method

.method public setClosedCaptionState(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 733
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 734
    packed-switch p1, :pswitch_data_0

    .line 750
    sget-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setClosedCaptionState(): Invalid state requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 736
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 740
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 745
    :pswitch_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 746
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 734
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 829
    invoke-virtual {p0}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 830
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 832
    invoke-static {p0}, Lcom/cbs/app/view/utils/Util;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 837
    :goto_0
    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 838
    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 839
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 840
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->w:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 841
    return-void

    .line 835
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public setOnVideoCastControllerChangedListener(Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;)V
    .locals 0

    .prologue
    .line 889
    if-eqz p1, :cond_0

    .line 890
    iput-object p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->u:Lcom/google/android/libraries/cast/companionlibrary/cast/player/c;

    .line 892
    :cond_0
    return-void
.end method

.method public setPlaybackStatus(I)V
    .locals 6

    .prologue
    const v5, 0x7f0800ae

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 759
    iput p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->c:I

    .line 760
    packed-switch p1, :pswitch_data_0

    .line 814
    :goto_0
    return-void

    .line 762
    :pswitch_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->n:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 767
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v3}, Lcom/cbs/app/cast/ChromecastSeekBar;->setPaused(Z)V

    .line 769
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setProgress(I)V

    .line 771
    iget v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->v:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 772
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 777
    :goto_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->k:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 782
    :pswitch_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v2}, Lcom/cbs/app/cast/ChromecastSeekBar;->setPaused(Z)V

    .line 784
    iget-boolean v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->z:Z

    if-nez v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v2}, Lcom/cbs/app/cast/ChromecastSeekBar;->setEnabled(Z)V

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cbs/app/cast/ChromecastSeekBar;->setProgress(I)V

    .line 789
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 790
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->k:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 796
    :pswitch_2
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v2}, Lcom/cbs/app/cast/ChromecastSeekBar;->setPaused(Z)V

    .line 799
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 801
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->k:Landroid/widget/TextView;

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v2}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->m()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 805
    :pswitch_3
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->k:Landroid/widget/TextView;

    const v1, 0x7f0800c8

    invoke-virtual {p0, v1}, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->i:Lcom/cbs/app/cast/ChromecastSeekBar;

    invoke-virtual {v0, v2}, Lcom/cbs/app/cast/ChromecastSeekBar;->setPaused(Z)V

    goto/16 :goto_0

    .line 760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setStreamType(I)V
    .locals 0

    .prologue
    .line 896
    iput p1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->v:I

    .line 897
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 880
    if-nez p1, :cond_0

    .line 881
    const-string p1, ""

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 847
    const-string p1, ""

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    const-string v1, ""

    .line 855
    const/4 v2, 0x0

    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->e:Lcom/google/android/libraries/cast/companionlibrary/cast/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/c;->J()Lcom/google/android/gms/cast/d;
    :try_end_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/d; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/libraries/cast/companionlibrary/cast/b/b; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 864
    :goto_0
    if-eqz v0, :cond_1

    .line 865
    invoke-virtual {v0}, Lcom/google/android/gms/cast/d;->d()Lcom/google/android/gms/cast/e;

    move-result-object v0

    .line 866
    if-eqz v0, :cond_1

    .line 867
    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    if-eqz v0, :cond_1

    .line 874
    :goto_1
    iget-object v1, p0, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    sget-object v3, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/d;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 863
    goto :goto_0

    .line 861
    :catch_1
    move-exception v0

    .line 862
    sget-object v3, Lcom/cbs/app/cast/CBSVideoCastControllerActivity;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/cast/companionlibrary/cast/b/b;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
