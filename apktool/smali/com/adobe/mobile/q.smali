.class abstract Lcom/adobe/mobile/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/adobe/mobile/q$1;

    invoke-direct {v0}, Lcom/adobe/mobile/q$1;-><init>()V

    sput-object v0, Lcom/adobe/mobile/q;->c:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lorg/json/JSONObject;)Lcom/adobe/mobile/q;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 77
    const/4 v3, 0x0

    .line 81
    :try_start_0
    const-string v0, "matches"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 83
    const-string v1, "Messages - message matcher type is empty"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v1, v0

    .line 92
    :goto_0
    sget-object v0, Lcom/adobe/mobile/q;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 93
    if-nez v0, :cond_1

    .line 94
    const-class v0, Lcom/adobe/mobile/ad;

    .line 95
    const-string v4, "Messages - message matcher type \"%s\" is invalid"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/q;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 107
    :goto_1
    if-eqz v0, :cond_3

    .line 110
    :try_start_2
    const-string v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/adobe/mobile/q;->a:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lcom/adobe/mobile/q;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/adobe/mobile/q;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 112
    const-string v1, "Messages - error creating matcher, key is empty"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 123
    :cond_2
    :goto_2
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/adobe/mobile/q;->b:Ljava/util/ArrayList;

    .line 126
    instance-of v1, v0, Lcom/adobe/mobile/u;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v1, :cond_4

    .line 146
    :cond_3
    :goto_3
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    const-string v0, "UNKNOWN"

    .line 88
    const-string v1, "Messages - message matcher type is required"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    const-string v1, "Messages - Error creating matcher (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 105
    goto :goto_1

    .line 103
    :catch_2
    move-exception v0

    .line 104
    const-string v1, "Messages - Error creating matcher (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/adobe/mobile/am;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_1

    .line 116
    :catch_3
    move-exception v1

    const-string v1, "Messages - error creating matcher, key is required"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 119
    :catch_4
    move-exception v1

    const-string v1, "Messages - error creating matcher, key is required"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 131
    :cond_4
    :try_start_4
    const-string v1, "values"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v1, v2

    .line 133
    :goto_4
    if-ge v1, v4, :cond_5

    .line 134
    iget-object v5, v0, Lcom/adobe/mobile/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 137
    :cond_5
    iget-object v1, v0, Lcom/adobe/mobile/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 138
    const-string v1, "Messages - error creating matcher, values is empty"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 142
    :catch_5
    move-exception v1

    const-string v1, "Messages - error creating matcher, values is required"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/adobe/mobile/am;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method

.method protected static b(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 1

    .prologue
    .line 176
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected varargs a([Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 150
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    const/4 v1, 0x0

    .line 156
    array-length v3, p1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, p1, v2

    .line 157
    if-eqz v4, :cond_3

    .line 161
    iget-object v5, p0, Lcom/adobe/mobile/q;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    iget-object v1, p0, Lcom/adobe/mobile/q;->a:Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 167
    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/adobe/mobile/q;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
