.class public Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;,
        Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/cbs/app/service/LiveFyreService;

.field private d:Lorg/json/JSONArray;

.field private e:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cbs/app/service/LiveFyreService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->d:Lorg/json/JSONArray;

    .line 40
    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->e:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;

    .line 44
    iput-object p2, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->c:Lcom/cbs/app/service/LiveFyreService;

    .line 45
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->b:Landroid/content/Context;

    .line 47
    invoke-virtual {p2}, Lcom/cbs/app/service/LiveFyreService;->getComments()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->d:Lorg/json/JSONArray;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;)Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->e:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;

    return-object v0
.end method

.method private static a(Landroid/view/View;)Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;
    .locals 2

    .prologue
    .line 130
    new-instance v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;

    invoke-direct {v1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;-><init>()V

    .line 131
    const v0, 0x7f0f00dc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->a:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0f00e1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->b:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0f00e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->c:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0f029f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->d:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0f02a0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->e:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0f00e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->f:Landroid/widget/Button;

    .line 137
    const v0, 0x7f0f02a1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->g:Landroid/widget/Button;

    .line 138
    const v0, 0x7f0f02a2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v1, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->h:Landroid/widget/LinearLayout;

    .line 139
    return-object v1
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->d:Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->d:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;Lorg/json/JSONObject;ILjava/lang/String;)V
    .locals 17

    .prologue
    .line 168
    if-eqz p2, :cond_b

    if-eqz p1, :cond_b

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "populateCell for:\n\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const/4 v2, 0x1

    .line 171
    const/4 v3, 0x0

    .line 173
    :try_start_0
    const-string v4, "vis"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 174
    const-string v4, "type\n                        e.printStackTrace();"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v8, v3

    .line 180
    :goto_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    if-nez v8, :cond_b

    .line 181
    const/4 v2, 0x0

    .line 182
    const/4 v3, 0x0

    .line 184
    :try_start_1
    const-string v4, "content"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 185
    const-string v4, "authorId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v5, v2

    move-object v2, v3

    .line 189
    :goto_1
    if-eqz v5, :cond_b

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->c:Lcom/cbs/app/service/LiveFyreService;

    invoke-virtual {v3, v2}, Lcom/cbs/app/service/LiveFyreService;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 191
    const/4 v3, 0x0

    .line 192
    const/4 v2, 0x0

    .line 193
    const/4 v4, 0x0

    .line 194
    if-eqz v6, :cond_c

    .line 196
    :try_start_2
    const-string v7, "displayName"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    if-eqz v3, :cond_0

    .line 198
    const/4 v2, 0x1

    .line 199
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_0
    const-string v6, "bodyHtml"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    move-object v7, v3

    move v3, v2

    move-object v2, v4

    .line 206
    :goto_2
    if-nez v3, :cond_1

    .line 207
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->a:Landroid/widget/TextView;

    const-string v4, "Anonymous"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    :cond_1
    if-eqz v2, :cond_3

    .line 211
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    if-eqz p4, :cond_2

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "<b>@"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</b>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    :cond_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->b:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_3
    const-wide/16 v2, 0x0

    .line 222
    :try_start_3
    const-string v4, "createdAt"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v2

    .line 226
    :goto_3
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 227
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->c:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/cbs/app/view/utils/Util;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->g:Landroid/widget/Button;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 229
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->g:Landroid/widget/Button;

    new-instance v3, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$1;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->f:Landroid/widget/Button;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 247
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->f:Landroid/widget/Button;

    new-instance v3, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$2;-><init>(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const/4 v4, 0x0

    .line 265
    const/4 v3, 0x0

    .line 268
    const/4 v2, 0x0

    .line 270
    :try_start_4
    const-string v5, "childContent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    move-object v6, v2

    .line 278
    :goto_4
    if-eqz v6, :cond_8

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "childComments: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    const/4 v2, 0x0

    move/from16 v16, v2

    move v2, v3

    move v3, v4

    move/from16 v4, v16

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 283
    :try_start_5
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 290
    const-string v5, "content"

    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 299
    const-string v10, "type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 300
    const-string v11, "ancestorId"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v5

    .line 303
    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 304
    add-int/lit8 v3, v3, 0x1

    .line 281
    :cond_4
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :catch_0
    move-exception v4

    move v8, v3

    goto/16 :goto_0

    :catch_1
    move-exception v4

    move-object v5, v2

    move-object v2, v3

    goto/16 :goto_1

    :catch_2
    move-exception v6

    move-object v7, v3

    move v3, v2

    move-object v2, v4

    goto/16 :goto_2

    .line 224
    :catch_3
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v5

    move-object v6, v2

    goto :goto_4

    .line 305
    :cond_5
    if-nez v8, :cond_4

    .line 306
    if-eqz v5, :cond_6

    .line 307
    add-int/lit8 v2, v2, 0x1

    .line 309
    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->b:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 311
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 315
    add-int/lit8 v11, p3, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->b:Landroid/content/Context;

    const-wide/high16 v14, 0x4028000000000000L    # 12.0

    invoke-static {v12, v14, v15}, Lcom/cbs/app/view/utils/Util;->a(Landroid/content/Context;D)I

    move-result v12

    mul-int/2addr v11, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 318
    const v11, 0x7f0300ac

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->h:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v5, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 325
    mul-int/lit8 v5, p3, 0x6

    add-int/lit16 v5, v5, 0xe8

    .line 326
    const/16 v12, 0xff

    if-le v5, v12, :cond_7

    .line 327
    const/16 v5, 0xff

    .line 329
    :cond_7
    const/16 v12, 0xff

    invoke-static {v12, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 332
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 334
    invoke-static {v11}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Landroid/view/View;)Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;

    move-result-object v5

    .line 338
    add-int/lit8 v12, p3, 0x1

    .line 340
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v12, v7}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;Lorg/json/JSONObject;ILjava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v5

    goto :goto_6

    :cond_8
    move v2, v3

    move v3, v4

    .line 351
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->h:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 354
    :try_start_7
    const-string v4, "likes"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    .line 359
    :goto_7
    :try_start_8
    const-string v4, "replies"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    .line 364
    :goto_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->e:Landroid/widget/TextView;

    if-eqz v4, :cond_a

    .line 365
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->e:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Replies"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    .line 371
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;->d:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Likes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_b
    return-void

    :catch_6
    move-exception v4

    goto :goto_8

    :catch_7
    move-exception v4

    goto :goto_7

    :cond_c
    move-object v7, v3

    move v3, v2

    move-object v2, v4

    goto/16 :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->d:Lorg/json/JSONArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->d:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 74
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .prologue
    .line 117
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    const v1, 0x7f0300ac

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 95
    invoke-static {p2}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Landroid/view/View;)Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;

    move-result-object v0

    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    :goto_0
    invoke-direct {p0, p1}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1152
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->a(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;Lorg/json/JSONObject;ILjava/lang/String;)V

    .line 109
    return-object p2

    .line 100
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$a;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->getCount()I

    move-result v0

    .line 126
    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setCommentListener(Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2;->e:Lcom/cbs/app/view/fragments/show/videos/EpisodeCommentsAdapter2$CommentListener2;

    .line 52
    return-void
.end method
