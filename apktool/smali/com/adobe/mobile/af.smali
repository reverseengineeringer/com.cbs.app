.class final Lcom/adobe/mobile/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:Ljava/lang/Object;

.field private static final C:Ljava/lang/Object;

.field private static D:Ljava/io/InputStream;

.field private static final E:Ljava/lang/Object;

.field private static final a:Lcom/adobe/mobile/ag;

.field private static t:Lcom/adobe/mobile/af;

.field private static final u:Ljava/lang/Object;

.field private static final w:Ljava/lang/Object;

.field private static final y:Ljava/lang/Object;


# instance fields
.field private B:Ljava/lang/Boolean;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/adobe/mobile/ag;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/mobile/m;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private v:Ljava/lang/Boolean;

.field private x:Ljava/lang/Boolean;

.field private z:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    sget-object v0, Lcom/adobe/mobile/ag;->a:Lcom/adobe/mobile/ag;

    sput-object v0, Lcom/adobe/mobile/af;->a:Lcom/adobe/mobile/ag;

    .line 126
    sput-object v1, Lcom/adobe/mobile/af;->t:Lcom/adobe/mobile/af;

    .line 127
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/af;->u:Ljava/lang/Object;

    .line 345
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/af;->w:Ljava/lang/Object;

    .line 364
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/af;->y:Ljava/lang/Object;

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/af;->A:Ljava/lang/Object;

    .line 396
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/af;->C:Ljava/lang/Object;

    .line 752
    sput-object v1, Lcom/adobe/mobile/af;->D:Ljava/io/InputStream;

    .line 753
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/adobe/mobile/af;->E:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    const/16 v5, 0x12c

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/adobe/mobile/af;->b:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/adobe/mobile/af;->c:Ljava/lang/String;

    .line 90
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/mobile/af;->d:Ljava/lang/String;

    .line 91
    iput-boolean v7, p0, Lcom/adobe/mobile/af;->e:Z

    .line 92
    iput-boolean v7, p0, Lcom/adobe/mobile/af;->f:Z

    .line 93
    iput-boolean v8, p0, Lcom/adobe/mobile/af;->g:Z

    .line 94
    iput v5, p0, Lcom/adobe/mobile/af;->h:I

    .line 95
    iput v7, p0, Lcom/adobe/mobile/af;->i:I

    .line 96
    iput v7, p0, Lcom/adobe/mobile/af;->j:I

    .line 97
    sget-object v0, Lcom/adobe/mobile/af;->a:Lcom/adobe/mobile/ag;

    iput-object v0, p0, Lcom/adobe/mobile/af;->k:Lcom/adobe/mobile/ag;

    .line 98
    iput-object v1, p0, Lcom/adobe/mobile/af;->l:Ljava/util/List;

    .line 99
    iput-object v1, p0, Lcom/adobe/mobile/af;->m:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/adobe/mobile/af;->n:Ljava/lang/String;

    .line 105
    iput v9, p0, Lcom/adobe/mobile/af;->o:I

    .line 110
    iput-object v1, p0, Lcom/adobe/mobile/af;->p:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/adobe/mobile/af;->q:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/adobe/mobile/af;->r:Ljava/util/ArrayList;

    .line 121
    iput-object v1, p0, Lcom/adobe/mobile/af;->s:Ljava/lang/String;

    .line 344
    iput-object v1, p0, Lcom/adobe/mobile/af;->v:Ljava/lang/Boolean;

    .line 363
    iput-object v1, p0, Lcom/adobe/mobile/af;->x:Ljava/lang/Boolean;

    .line 374
    iput-object v1, p0, Lcom/adobe/mobile/af;->z:Ljava/lang/Boolean;

    .line 395
    iput-object v1, p0, Lcom/adobe/mobile/af;->B:Ljava/lang/Boolean;

    .line 144
    invoke-static {}, Lcom/adobe/mobile/af;->t()Lorg/json/JSONObject;

    move-result-object v3

    .line 147
    if-nez v3, :cond_0

    .line 342
    :goto_0
    return-void

    .line 153
    :cond_0
    :try_start_0
    const-string v0, "analytics"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 159
    :goto_1
    if-eqz v2, :cond_1

    .line 161
    :try_start_1
    const-string v0, "server"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->c:Ljava/lang/String;

    .line 162
    const-string v0, "rsids"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->b:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    :goto_2
    :try_start_2
    const-string v0, "charset"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->d:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :goto_3
    :try_start_3
    const-string v0, "ssl"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/mobile/af;->e:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 182
    :goto_4
    :try_start_4
    const-string v0, "offlineEnabled"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/mobile/af;->f:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 188
    :goto_5
    :try_start_5
    const-string v0, "backdateSessionInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/mobile/af;->g:Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    .line 194
    :goto_6
    :try_start_6
    const-string v0, "lifecycleTimeout"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/mobile/af;->h:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    .line 200
    :goto_7
    :try_start_7
    const-string v0, "referrerTimeout"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/mobile/af;->i:I
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 206
    :goto_8
    :try_start_8
    const-string v0, "batchLimit"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/mobile/af;->j:I
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    .line 213
    :goto_9
    :try_start_9
    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "PrivacyStatus"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    invoke-static {}, Lcom/adobe/mobile/ag;->values()[Lcom/adobe/mobile/ag;

    move-result-object v0

    invoke-static {}, Lcom/adobe/mobile/am;->a()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "PrivacyStatus"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/adobe/mobile/af;->k:Lcom/adobe/mobile/ag;
    :try_end_9
    .catch Lcom/adobe/mobile/am$b; {:try_start_9 .. :try_end_9} :catch_9

    .line 233
    :goto_a
    :try_start_a
    const-string v0, "poi"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 234
    invoke-direct {p0, v0}, Lcom/adobe/mobile/af;->a(Lorg/json/JSONArray;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_b

    .line 244
    :cond_1
    :goto_b
    :try_start_b
    const-string v0, "target"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_c

    move-result-object v0

    .line 249
    :goto_c
    if-eqz v0, :cond_2

    .line 251
    :try_start_c
    const-string v2, "clientCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adobe/mobile/af;->n:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_d

    .line 258
    :goto_d
    :try_start_d
    const-string v2, "timeout"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/mobile/af;->o:I
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_e

    .line 268
    :cond_2
    :goto_e
    :try_start_e
    const-string v0, "audienceManager"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_f

    move-result-object v0

    .line 273
    :goto_f
    if-eqz v0, :cond_3

    .line 275
    :try_start_f
    const-string v2, "server"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->p:Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_10

    .line 285
    :cond_3
    :goto_10
    :try_start_10
    const-string v0, "remotes"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_11

    move-result-object v0

    move-object v2, v0

    .line 291
    :goto_11
    if-eqz v2, :cond_4

    .line 293
    :try_start_11
    const-string v0, "messages"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->q:Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_12

    .line 299
    :goto_12
    :try_start_12
    const-string v0, "analytics.poi"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->m:Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_13

    .line 306
    :cond_4
    :goto_13
    invoke-static {}, Lcom/adobe/mobile/am;->o()Z

    move-result v0

    if-nez v0, :cond_5

    .line 309
    :try_start_13
    const-string v0, "messages"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_14

    move-result-object v0

    .line 314
    :goto_14
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 315
    invoke-direct {p0, v0}, Lcom/adobe/mobile/af;->b(Lorg/json/JSONArray;)V

    .line 321
    :cond_5
    :try_start_14
    const-string v0, "marketingCloud"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_15

    move-result-object v0

    .line 326
    :goto_15
    if-eqz v0, :cond_6

    .line 328
    :try_start_15
    const-string v2, "org"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->s:Ljava/lang/String;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_16

    .line 336
    :cond_6
    :goto_16
    invoke-static {}, Lcom/adobe/mobile/am;->o()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2709
    iget-object v0, p0, Lcom/adobe/mobile/af;->q:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/adobe/mobile/af;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 2710
    iget-object v0, p0, Lcom/adobe/mobile/af;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/mobile/aj;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/mobile/af;->a(Ljava/io/File;)V

    .line 2713
    :cond_7
    iget-object v0, p0, Lcom/adobe/mobile/af;->m:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/adobe/mobile/af;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 2714
    iget-object v0, p0, Lcom/adobe/mobile/af;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/mobile/aj;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/mobile/af;->b(Ljava/io/File;)V

    .line 341
    :cond_8
    invoke-direct {p0}, Lcom/adobe/mobile/af;->u()V

    goto/16 :goto_0

    .line 155
    :catch_0
    move-exception v0

    const-string v0, "Analytics - Not configured."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    goto/16 :goto_1

    .line 164
    :catch_1
    move-exception v0

    iput-object v1, p0, Lcom/adobe/mobile/af;->c:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/adobe/mobile/af;->b:Ljava/lang/String;

    .line 166
    const-string v0, "Analytics - Not Configured."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 172
    :catch_2
    move-exception v0

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/adobe/mobile/af;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 178
    :catch_3
    move-exception v0

    iput-boolean v7, p0, Lcom/adobe/mobile/af;->e:Z

    goto/16 :goto_4

    .line 184
    :catch_4
    move-exception v0

    iput-boolean v7, p0, Lcom/adobe/mobile/af;->f:Z

    goto/16 :goto_5

    .line 190
    :catch_5
    move-exception v0

    iput-boolean v8, p0, Lcom/adobe/mobile/af;->g:Z

    goto/16 :goto_6

    .line 196
    :catch_6
    move-exception v0

    iput v5, p0, Lcom/adobe/mobile/af;->h:I

    goto/16 :goto_7

    .line 202
    :catch_7
    move-exception v0

    iput v7, p0, Lcom/adobe/mobile/af;->i:I

    goto/16 :goto_8

    .line 208
    :catch_8
    move-exception v0

    iput v7, p0, Lcom/adobe/mobile/af;->j:I

    goto/16 :goto_9

    .line 219
    :cond_9
    :try_start_16
    const-string v0, "privacyDefault"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Lcom/adobe/mobile/am$b; {:try_start_16 .. :try_end_16} :catch_9

    move-result-object v0

    .line 224
    :goto_17
    if-eqz v0, :cond_d

    .line 1763
    if-eqz v0, :cond_c

    .line 1764
    :try_start_17
    const-string v4, "optedin"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1765
    sget-object v0, Lcom/adobe/mobile/ag;->a:Lcom/adobe/mobile/ag;

    .line 224
    :goto_18
    iput-object v0, p0, Lcom/adobe/mobile/af;->k:Lcom/adobe/mobile/ag;
    :try_end_17
    .catch Lcom/adobe/mobile/am$b; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_a

    .line 227
    :catch_9
    move-exception v0

    .line 228
    const-string v1, "Config - Error pulling privacy from shared preferences. (%s)"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 221
    :catch_a
    move-exception v0

    move-object v0, v1

    goto :goto_17

    .line 1767
    :cond_a
    :try_start_18
    const-string v4, "optedout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1768
    sget-object v0, Lcom/adobe/mobile/ag;->b:Lcom/adobe/mobile/ag;

    goto :goto_18

    .line 1770
    :cond_b
    const-string v4, "optunknown"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1771
    sget-object v0, Lcom/adobe/mobile/ag;->c:Lcom/adobe/mobile/ag;

    goto :goto_18

    .line 1775
    :cond_c
    sget-object v0, Lcom/adobe/mobile/af;->a:Lcom/adobe/mobile/ag;

    goto :goto_18

    .line 224
    :cond_d
    sget-object v0, Lcom/adobe/mobile/af;->a:Lcom/adobe/mobile/ag;
    :try_end_18
    .catch Lcom/adobe/mobile/am$b; {:try_start_18 .. :try_end_18} :catch_9

    goto :goto_18

    .line 235
    :catch_b
    move-exception v0

    .line 236
    const-string v2, "Analytics - Malformed POI List(%s)"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 246
    :catch_c
    move-exception v0

    const-string v0, "Target - Not Configured."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_c

    .line 253
    :catch_d
    move-exception v2

    iput-object v1, p0, Lcom/adobe/mobile/af;->n:Ljava/lang/String;

    .line 254
    const-string v2, "Target - Not Configured."

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 260
    :catch_e
    move-exception v0

    iput v9, p0, Lcom/adobe/mobile/af;->o:I

    goto/16 :goto_e

    .line 270
    :catch_f
    move-exception v0

    const-string v0, "Audience Manager - Not Configured."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_f

    .line 277
    :catch_10
    move-exception v0

    iput-object v1, p0, Lcom/adobe/mobile/af;->p:Ljava/lang/String;

    .line 278
    const-string v0, "Audience Manager - Not Configured."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 288
    :catch_11
    move-exception v0

    const-string v0, "Remotes - Not Configured."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    goto/16 :goto_11

    .line 294
    :catch_12
    move-exception v0

    .line 295
    const-string v4, "Config - No in-app messages remote url loaded (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 300
    :catch_13
    move-exception v0

    .line 301
    const-string v2, "Config - No points of interest remote url loaded (%s)"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 311
    :catch_14
    move-exception v0

    const-string v0, "Messages - Not configured locally."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_14

    .line 323
    :catch_15
    move-exception v0

    const-string v0, "Marketing Cloud - Not configured locally."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_15

    .line 330
    :catch_16
    move-exception v0

    iput-object v1, p0, Lcom/adobe/mobile/af;->s:Ljava/lang/String;

    .line 331
    const-string v0, "Visitor - ID Service Not Configured."

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16
.end method

.method protected static a()Lcom/adobe/mobile/af;
    .locals 2

    .prologue
    .line 129
    sget-object v1, Lcom/adobe/mobile/af;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    sget-object v0, Lcom/adobe/mobile/af;->t:Lcom/adobe/mobile/af;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/adobe/mobile/af;

    invoke-direct {v0}, Lcom/adobe/mobile/af;-><init>()V

    sput-object v0, Lcom/adobe/mobile/af;->t:Lcom/adobe/mobile/af;

    .line 134
    :cond_0
    sget-object v0, Lcom/adobe/mobile/af;->t:Lcom/adobe/mobile/af;

    monitor-exit v1

    return-object v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/adobe/mobile/af;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/mobile/af;->q:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 722
    if-nez p0, :cond_0

    .line 723
    const/4 v0, 0x0

    .line 749
    :goto_0
    return-object v0

    .line 728
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 729
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 732
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 733
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v1

    .line 745
    const-string v2, "Config - Unable to close stream (%s)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 735
    :catch_1
    move-exception v0

    .line 736
    :try_start_2
    const-string v1, "Config - Exception when reading config (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 743
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 749
    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    .line 744
    :catch_2
    move-exception v0

    .line 745
    const-string v1, "Config - Unable to close stream (%s)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 738
    :catch_3
    move-exception v0

    .line 739
    :try_start_4
    const-string v1, "Config - Stream closed when attempting to load config (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 743
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 744
    :catch_4
    move-exception v0

    .line 745
    const-string v1, "Config - Unable to close stream (%s)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 742
    :catchall_0
    move-exception v0

    .line 743
    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 746
    :goto_2
    throw v0

    .line 744
    :catch_5
    move-exception v1

    .line 745
    const-string v2, "Config - Unable to close stream (%s)"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 782
    if-nez p1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 786
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/mobile/af;->l:Ljava/util/List;

    .line 787
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_0

    .line 788
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 789
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 791
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    iget-object v3, p0, Lcom/adobe/mobile/af;->l:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 799
    :catch_0
    move-exception v0

    .line 800
    const-string v2, "Messages - Unable to parse remote points of interest JSON (%s)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/adobe/mobile/af;)V
    .locals 2

    .prologue
    .line 8875
    invoke-static {}, Lcom/adobe/mobile/am;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/af$3;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/af$3;-><init>(Lcom/adobe/mobile/af;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method private b(Lorg/json/JSONArray;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 838
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 839
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v1

    .line 841
    :goto_0
    if-ge v0, v3, :cond_1

    .line 842
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 844
    invoke-static {v4}, Lcom/adobe/mobile/m;->a(Lorg/json/JSONObject;)Lcom/adobe/mobile/m;

    move-result-object v4

    .line 846
    if-eqz v4, :cond_0

    .line 847
    const-string v5, "Messages - loaded message - %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/adobe/mobile/m;->g()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_1
    iput-object v2, p0, Lcom/adobe/mobile/af;->r:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_1
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    const-string v2, "Messages - Unable to parse messages JSON (%s)"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/adobe/mobile/af;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/adobe/mobile/af;->u()V

    return-void
.end method

.method static synthetic d(Lcom/adobe/mobile/af;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/adobe/mobile/af;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static t()Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 666
    const/4 v0, 0x0

    .line 670
    sget-object v1, Lcom/adobe/mobile/af;->E:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    :try_start_0
    sget-object v2, Lcom/adobe/mobile/af;->D:Ljava/io/InputStream;

    .line 672
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    if-eqz v2, :cond_0

    .line 677
    :try_start_1
    const-string v1, "Config - Attempting to load config file from override stream"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    sget-object v1, Lcom/adobe/mobile/af;->D:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/adobe/mobile/af;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 687
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 688
    if-eqz v2, :cond_1

    .line 689
    const-string v1, "Config - Failed attempting to load custom config, will fall back to standard config location."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    :cond_1
    const-string v1, "Config - Attempting to load config file from default location"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    :try_start_2
    invoke-static {}, Lcom/adobe/mobile/am;->s()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "ADBMobileConfig.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/mobile/af;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/adobe/mobile/am$b; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    .line 705
    :cond_2
    :goto_1
    return-object v0

    .line 672
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 680
    :catch_0
    move-exception v1

    .line 681
    const-string v3, "Config - Error loading user defined config (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 682
    :catch_1
    move-exception v1

    .line 683
    const-string v3, "Config - Error parsing user defined config (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 696
    :catch_2
    move-exception v1

    .line 697
    const-string v2, "Config - Exception loading config file (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 698
    :catch_3
    move-exception v1

    .line 699
    const-string v2, "Config - Exception parsing config file (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 700
    :catch_4
    move-exception v1

    .line 701
    const-string v2, "Config - Null context when attempting to read config file (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/adobe/mobile/am$b;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private u()V
    .locals 5

    .prologue
    .line 860
    iget-object v0, p0, Lcom/adobe/mobile/af;->r:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 871
    :cond_0
    return-void

    .line 864
    :cond_1
    iget-object v0, p0, Lcom/adobe/mobile/af;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/m;

    .line 865
    invoke-static {}, Lcom/adobe/mobile/m;->c()Ljava/util/HashMap;

    move-result-object v1

    .line 867
    invoke-virtual {v0}, Lcom/adobe/mobile/m;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/adobe/mobile/m;->b:Lcom/adobe/mobile/ae$a;

    invoke-virtual {v3}, Lcom/adobe/mobile/ae$a;->a()I

    move-result v3

    iget-object v4, v0, Lcom/adobe/mobile/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v3, v1, :cond_2

    .line 868
    invoke-virtual {v0}, Lcom/adobe/mobile/m;->a()V

    goto :goto_0
.end method


# virtual methods
.method protected final a(Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 576
    .line 579
    if-nez p1, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 584
    :try_start_1
    invoke-static {v1}, Lcom/adobe/mobile/af;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    .line 8809
    if-nez v0, :cond_2

    .line 8810
    const-string v0, "Messages - Remote messages config was null, falling back to bundled messages"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8811
    const-string v0, "messageImages"

    invoke-static {v0}, Lcom/adobe/mobile/aj;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    const-string v1, "Messages - Unable to close file stream (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8818
    :cond_2
    :try_start_3
    const-string v3, "messages"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 8824
    :goto_2
    :try_start_4
    const-string v0, "Messages - Using remote definition for messages"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8827
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_4

    .line 8828
    :cond_3
    const-string v0, "messageImages"

    invoke-static {v0}, Lcom/adobe/mobile/aj;->c(Ljava/lang/String;)V

    .line 8829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/mobile/af;->r:Ljava/util/ArrayList;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 587
    :catch_1
    move-exception v0

    .line 588
    :goto_3
    :try_start_5
    const-string v2, "Messages - Unable to read messages remote config file, falling back to bundled messages (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 595
    if-eqz v1, :cond_0

    .line 596
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 599
    :catch_2
    move-exception v0

    .line 600
    const-string v1, "Messages - Unable to close file stream (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8821
    :catch_3
    move-exception v0

    :try_start_7
    const-string v0, "Messages - Remote messages not configured, falling back to bundled messages"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 590
    :catch_4
    move-exception v0

    .line 591
    :goto_4
    :try_start_8
    const-string v2, "Messages - Unable to open messages config file, falling back to bundled messages (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 595
    if-eqz v1, :cond_0

    .line 596
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 599
    :catch_5
    move-exception v0

    .line 600
    const-string v1, "Messages - Unable to close file stream (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8833
    :cond_4
    :try_start_a
    invoke-direct {p0, v2}, Lcom/adobe/mobile/af;->b(Lorg/json/JSONArray;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 594
    :catchall_0
    move-exception v0

    .line 595
    :goto_5
    if-eqz v1, :cond_5

    .line 596
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 601
    :cond_5
    :goto_6
    throw v0

    .line 599
    :catch_6
    move-exception v1

    .line 600
    const-string v2, "Messages - Unable to close file stream (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 594
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 590
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_4

    .line 587
    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method protected final b(Ljava/io/File;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 610
    const/4 v2, 0x0

    .line 613
    if-nez p1, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    :try_start_1
    invoke-static {v1}, Lcom/adobe/mobile/af;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_2

    .line 620
    const-string v2, "analytics"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 621
    const-string v2, "poi"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 622
    invoke-direct {p0, v0}, Lcom/adobe/mobile/af;->a(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 634
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    .line 638
    const-string v1, "Config - Unable to close file stream (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 625
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 626
    :goto_1
    :try_start_3
    const-string v2, "Config - Unable to read points of interest remote config file, falling back to bundled poi (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 633
    if-eqz v1, :cond_0

    .line 634
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 637
    :catch_2
    move-exception v0

    .line 638
    const-string v1, "Config - Unable to close file stream (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 628
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 629
    :goto_2
    :try_start_5
    const-string v2, "Config - Unable to open points of interest config file, falling back to bundled poi (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 633
    if-eqz v1, :cond_0

    .line 634
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 637
    :catch_4
    move-exception v0

    .line 638
    const-string v1, "Config - Unable to close file stream (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 632
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 633
    :goto_3
    if-eqz v1, :cond_3

    .line 634
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 639
    :cond_3
    :goto_4
    throw v0

    .line 637
    :catch_5
    move-exception v1

    .line 638
    const-string v2, "Config - Unable to close file stream (%s)"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 632
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 628
    :catch_6
    move-exception v0

    goto :goto_2

    .line 625
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method protected final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 347
    sget-object v1, Lcom/adobe/mobile/af;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v2, p0, Lcom/adobe/mobile/af;->v:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 3420
    iget-object v2, p0, Lcom/adobe/mobile/af;->b:Ljava/lang/String;

    .line 350
    if-eqz v2, :cond_0

    .line 4420
    iget-object v2, p0, Lcom/adobe/mobile/af;->b:Ljava/lang/String;

    .line 351
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 4424
    iget-object v2, p0, Lcom/adobe/mobile/af;->c:Ljava/lang/String;

    .line 352
    if-eqz v2, :cond_0

    .line 5424
    iget-object v2, p0, Lcom/adobe/mobile/af;->c:Ljava/lang/String;

    .line 353
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 350
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->v:Ljava/lang/Boolean;

    .line 355
    iget-object v0, p0, Lcom/adobe/mobile/af;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    const-string v0, "Analytics - Your config file is not set up to use Analytics(missing report suite id(s) or tracking server information)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/adobe/mobile/af;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final c()Z
    .locals 2

    .prologue
    .line 366
    sget-object v1, Lcom/adobe/mobile/af;->y:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/adobe/mobile/af;->x:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 368
    invoke-static {}, Lcom/adobe/mobile/ap;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->x:Ljava/lang/Boolean;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/adobe/mobile/af;->x:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-static {}, Lcom/adobe/mobile/am;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    :goto_0
    return v0

    .line 380
    :cond_0
    sget-object v1, Lcom/adobe/mobile/af;->A:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-object v2, p0, Lcom/adobe/mobile/af;->z:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 5528
    iget-object v2, p0, Lcom/adobe/mobile/af;->p:Ljava/lang/String;

    .line 383
    if-eqz v2, :cond_1

    .line 6528
    iget-object v2, p0, Lcom/adobe/mobile/af;->p:Ljava/lang/String;

    .line 384
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 383
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/mobile/af;->z:Ljava/lang/Boolean;

    .line 386
    iget-object v0, p0, Lcom/adobe/mobile/af;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 387
    const-string v0, "Audience Manager - Your config file is not set up to use Audience Manager(missing audience manager server information)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/adobe/mobile/af;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/adobe/mobile/af;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/adobe/mobile/af;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/adobe/mobile/af;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/adobe/mobile/af;->e:Z

    return v0
.end method

.method protected final i()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/adobe/mobile/af;->f:Z

    return v0
.end method

.method protected final j()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/adobe/mobile/af;->g:Z

    return v0
.end method

.method protected final k()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/adobe/mobile/af;->h:I

    return v0
.end method

.method protected final l()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/adobe/mobile/af;->j:I

    return v0
.end method

.method protected final m()Lcom/adobe/mobile/ag;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/adobe/mobile/af;->k:Lcom/adobe/mobile/ag;

    return-object v0
.end method

.method protected final n()I
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/adobe/mobile/af;->i:I

    return v0
.end method

.method protected final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/adobe/mobile/af;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected final p()V
    .locals 8

    .prologue
    const/16 v3, 0x2710

    .line 535
    invoke-static {}, Lcom/adobe/mobile/am;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/af$1;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/af$1;-><init>(Lcom/adobe/mobile/af;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 556
    iget-object v0, p0, Lcom/adobe/mobile/af;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/mobile/af;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 557
    iget-object v1, p0, Lcom/adobe/mobile/af;->m:Ljava/lang/String;

    new-instance v2, Lcom/adobe/mobile/af$2;

    invoke-direct {v2, p0}, Lcom/adobe/mobile/af$2;-><init>(Lcom/adobe/mobile/af;)V

    .line 7052
    const-string v5, "adbdownloadcache"

    .line 8041
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/adobe/mobile/aj$a;

    const/4 v6, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/mobile/aj$a;-><init>(Ljava/lang/String;Lcom/adobe/mobile/aj$b;IILjava/lang/String;B)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8042
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 572
    :cond_0
    return-void
.end method

.method protected final q()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adobe/mobile/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/adobe/mobile/af;->r:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/adobe/mobile/af;->s:Ljava/lang/String;

    return-object v0
.end method

.method protected final s()Z
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/adobe/mobile/af;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/mobile/af;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
