.class public Lcom/urbanairship/widget/a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/widget/a$3;,
        Lcom/urbanairship/widget/a$a;
    }
.end annotation


# static fields
.field private static d:Ljava/text/SimpleDateFormat;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/widget/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/urbanairship/actions/c;

.field private final c:Lcom/urbanairship/actions/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/urbanairship/actions/g;

    invoke-direct {v0}, Lcom/urbanairship/actions/g;-><init>()V

    invoke-direct {p0, v0}, Lcom/urbanairship/widget/a;-><init>(Lcom/urbanairship/actions/g;)V

    .line 143
    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/actions/g;)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/widget/a;->a:Ljava/util/Map;

    .line 151
    iput-object p1, p0, Lcom/urbanairship/widget/a;->c:Lcom/urbanairship/actions/g;

    .line 152
    return-void
.end method

.method static synthetic a(Lcom/urbanairship/widget/a;)Lcom/urbanairship/actions/c;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/urbanairship/widget/a;->b:Lcom/urbanairship/actions/c;

    return-object v0
.end method

.method private static a(Landroid/webkit/WebView;)Lcom/urbanairship/richpush/c;
    .locals 1

    .prologue
    .line 541
    instance-of v0, p0, Lcom/urbanairship/widget/UAWebView;

    if-eqz v0, :cond_0

    .line 542
    check-cast p0, Lcom/urbanairship/widget/UAWebView;

    invoke-virtual {p0}, Lcom/urbanairship/widget/UAWebView;->a()Lcom/urbanairship/richpush/c;

    move-result-object v0

    .line 544
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 526
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 527
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "_UAirship.%s = function(){return %s;};"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 526
    :cond_0
    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3051
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3053
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    .line 3055
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3059
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v3, v4

    :goto_0
    if-ge v3, v7, :cond_4

    aget-object v0, v6, v3

    .line 3060
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3062
    array-length v0, v1

    if-lez v0, :cond_2

    aget-object v0, v1, v4

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3063
    :goto_1
    array-length v8, v1

    const/4 v9, 0x2

    if-lt v8, v9, :cond_3

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3065
    :goto_2
    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3067
    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3068
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3071
    :cond_0
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3059
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 3062
    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 3063
    goto :goto_2

    .line 397
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 399
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 402
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 426
    :cond_5
    :goto_4
    return-object v2

    .line 407
    :cond_6
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    if-eqz p1, :cond_7

    :try_start_0
    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v4

    .line 410
    :goto_6
    new-instance v9, Lcom/urbanairship/actions/ActionValue;

    invoke-direct {v9, v4}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 412
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid json. Unable to create action argument "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with args: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 409
    :cond_7
    :try_start_1
    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;
    :try_end_1
    .catch Lcom/urbanairship/json/a; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_6

    .line 418
    :cond_8
    invoke-interface {v3, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 421
    :cond_9
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v2, v3

    .line 426
    goto :goto_4
.end method

.method static synthetic a(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    invoke-static {p0, p1, p2, p3}, Lcom/urbanairship/widget/a;->b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/webkit/WebView;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 257
    if-nez p2, :cond_1

    .line 285
    :cond_0
    return-void

    .line 261
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 262
    invoke-static {p1}, Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;)Lcom/urbanairship/richpush/c;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_2

    .line 264
    const-string v1, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v0}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 268
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/actions/ActionValue;

    .line 3043
    invoke-static {v0}, Lcom/urbanairship/actions/f;->a(Ljava/lang/String;)Lcom/urbanairship/actions/f;

    move-result-object v5

    .line 269
    invoke-virtual {v5, v1}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/urbanairship/actions/f;->a(Landroid/os/Bundle;)Lcom/urbanairship/actions/f;

    move-result-object v1

    sget-object v5, Lcom/urbanairship/actions/p;->d:Lcom/urbanairship/actions/p;

    invoke-virtual {v1, v5}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/p;)Lcom/urbanairship/actions/f;

    move-result-object v1

    new-instance v5, Lcom/urbanairship/widget/a$1;

    invoke-direct {v5, p0}, Lcom/urbanairship/widget/a$1;-><init>(Lcom/urbanairship/widget/a;)V

    invoke-virtual {v1, v5}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/c;)V

    goto :goto_0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 204
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 246
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 209
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v6, "uairship"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/widget/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    .line 210
    goto :goto_0

    .line 214
    :cond_3
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unrecognized command: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 246
    goto :goto_0

    .line 214
    :sswitch_0
    const-string v7, "run-basic-actions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v7, "run-actions"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v7, "android-run-action-cb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v7, "close"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move v0, v4

    goto :goto_1

    .line 217
    :pswitch_0
    invoke-static {v5, v3}, Lcom/urbanairship/widget/a;->a(Landroid/net/Uri;Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    move v0, v3

    .line 218
    goto :goto_0

    .line 222
    :pswitch_1
    invoke-static {v5, v1}, Lcom/urbanairship/widget/a;->a(Landroid/net/Uri;Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    move v0, v3

    .line 223
    goto/16 :goto_0

    .line 228
    :pswitch_2
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 229
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 230
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "Action: "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Args: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", Callback: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1299
    :try_start_0
    new-instance v4, Lcom/urbanairship/actions/ActionValue;

    invoke-static {v1}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1308
    invoke-static {p1}, Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;)Lcom/urbanairship/richpush/c;

    move-result-object v5

    .line 1309
    if-eqz v5, :cond_5

    .line 1310
    const-string v6, "com.urbanairship.RICH_PUSH_ID_METADATA"

    invoke-virtual {v5}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    :cond_5
    invoke-static {v0}, Lcom/urbanairship/actions/f;->a(Ljava/lang/String;)Lcom/urbanairship/actions/f;

    move-result-object v5

    .line 1314
    invoke-virtual {v5, v1}, Lcom/urbanairship/actions/f;->a(Landroid/os/Bundle;)Lcom/urbanairship/actions/f;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/ActionValue;)Lcom/urbanairship/actions/f;

    move-result-object v1

    sget-object v4, Lcom/urbanairship/actions/p;->d:Lcom/urbanairship/actions/p;

    invoke-virtual {v1, v4}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/p;)Lcom/urbanairship/actions/f;

    move-result-object v1

    new-instance v4, Lcom/urbanairship/widget/a$2;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/urbanairship/widget/a$2;-><init>(Lcom/urbanairship/widget/a;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/urbanairship/actions/f;->a(Lcom/urbanairship/actions/c;)V

    :goto_2
    move v0, v3

    .line 235
    goto/16 :goto_0

    .line 1302
    :catch_0
    move-exception v0

    const-string v0, "Unable to decode arguments payload"

    new-instance v1, Lcom/urbanairship/actions/ActionValue;

    invoke-direct {v1}, Lcom/urbanairship/actions/ActionValue;-><init>()V

    invoke-static {p1, v0, v1, v2}, Lcom/urbanairship/widget/a;->b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V

    goto :goto_2

    .line 233
    :cond_6
    const-string v0, "Unable to run action, invalid number of arguments."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 2173
    :pswitch_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2174
    invoke-virtual {p1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v8}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move v0, v3

    .line 240
    goto/16 :goto_0

    .line 214
    :sswitch_data_0
    .sparse-switch
        -0x59dad445 -> :sswitch_1
        -0xb4cb164 -> :sswitch_0
        0x5a5ddf8 -> :sswitch_3
        0x2ab967b6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static b(Landroid/webkit/WebView;Ljava/lang/String;Lcom/urbanairship/actions/ActionValue;Ljava/lang/String;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewAPI"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 360
    const-string v0, "\'%s\'"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p3, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 364
    if-nez p1, :cond_0

    .line 365
    const-string v0, "null"

    .line 371
    :goto_0
    invoke-virtual {p2}, Lcom/urbanairship/actions/ActionValue;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "UAirship.finishAction(%s, %s, %s);"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    const/4 v0, 0x2

    aput-object v1, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 377
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 378
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 382
    :goto_1
    return-void

    .line 367
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "new Error(%s)"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 452
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->s()Lcom/urbanairship/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/urbanairship/c/b;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/urbanairship/widget/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/urbanairship/widget/a;->a:Ljava/util/Map;

    new-instance v1, Lcom/urbanairship/widget/a$a;

    invoke-direct {v1, p2, p3}, Lcom/urbanairship/widget/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 194
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 432
    if-nez p1, :cond_0

    .line 3519
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-static {p2}, Lcom/urbanairship/widget/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UAWebViewClient - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a white listed URL. Urban Airship Javascript interface will not be accessible."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3491
    :cond_1
    invoke-static {p1}, Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;)Lcom/urbanairship/richpush/c;

    move-result-object v2

    .line 3493
    sget-object v0, Lcom/urbanairship/widget/a;->d:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_2

    .line 3494
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss.SSSZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3495
    sput-object v0, Lcom/urbanairship/widget/a;->d:Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3503
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "var _UAirship = {};"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3506
    const-string v0, "getDeviceModel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/urbanairship/widget/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "getMessageId"

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/urbanairship/richpush/c;->a()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v5, v0}, Lcom/urbanairship/widget/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "getMessageTitle"

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/urbanairship/richpush/c;->c()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v5, v0}, Lcom/urbanairship/widget/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "getMessageSentDate"

    if-eqz v2, :cond_5

    sget-object v0, Lcom/urbanairship/widget/a;->d:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/urbanairship/richpush/c;->d()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v5, v0}, Lcom/urbanairship/widget/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "getMessageSentDateMS"

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/urbanairship/richpush/c;->e()J

    move-result-wide v2

    .line 3531
    :goto_4
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "_UAirship.%s = function(){return %d;};"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v5

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3506
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "getUserId"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/p;->n()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/urbanairship/widget/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3514
    invoke-static {}, Lcom/urbanairship/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3518
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_7

    .line 3519
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 3506
    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    const-wide/16 v2, -0x1

    goto :goto_4

    .line 3521
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/urbanairship/widget/a;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/widget/a$a;

    .line 460
    if-eqz v0, :cond_0

    .line 461
    iget-object v1, v0, Lcom/urbanairship/widget/a$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/urbanairship/widget/a$a;->b:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/urbanairship/widget/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
