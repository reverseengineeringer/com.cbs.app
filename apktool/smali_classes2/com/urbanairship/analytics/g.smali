.class public final Lcom/urbanairship/analytics/g;
.super Lcom/urbanairship/analytics/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/analytics/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/math/BigDecimal;

.field private static final b:Ljava/math/BigDecimal;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/math/BigDecimal;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/urbanairship/analytics/g;->a:Ljava/math/BigDecimal;

    .line 111
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    sput-object v0, Lcom/urbanairship/analytics/g;->b:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/analytics/g$a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Lcom/urbanairship/analytics/h;-><init>()V

    .line 139
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->a(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/g;->c:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->b(Lcom/urbanairship/analytics/g$a;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/g;->d:Ljava/math/BigDecimal;

    .line 141
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->c(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/analytics/g;->e:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->d(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/analytics/g;->f:Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->e(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/urbanairship/analytics/g;->g:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->f(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/analytics/g;->h:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->g(Lcom/urbanairship/analytics/g$a;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/urbanairship/analytics/g;->i:Ljava/util/Map;

    .line 146
    return-void

    .line 141
    :cond_0
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->c(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->d(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 143
    :cond_2
    invoke-static {p1}, Lcom/urbanairship/analytics/g$a;->e(Lcom/urbanairship/analytics/g$a;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/urbanairship/analytics/g$a;B)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/urbanairship/analytics/g;-><init>(Lcom/urbanairship/analytics/g$a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "custom_event"

    return-object v0
.end method

.method protected final b()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 155
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 157
    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/p;->q()Lcom/urbanairship/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/analytics/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 160
    :try_start_0
    const-string v1, "event_name"

    iget-object v3, p0, Lcom/urbanairship/analytics/g;->c:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "interaction_id"

    iget-object v3, p0, Lcom/urbanairship/analytics/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v1, "interaction_type"

    iget-object v3, p0, Lcom/urbanairship/analytics/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v1, "transaction_id"

    iget-object v3, p0, Lcom/urbanairship/analytics/g;->e:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->d:Ljava/math/BigDecimal;

    if-eqz v1, :cond_0

    .line 166
    const-string v1, "event_value"

    iget-object v3, p0, Lcom/urbanairship/analytics/g;->d:Ljava/math/BigDecimal;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 170
    const-string v0, "conversion_send_id"

    iget-object v1, p0, Lcom/urbanairship/analytics/g;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/urbanairship/analytics/g;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v5, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v5, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v1, "CustomEvent - Error constructing JSON data."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 197
    :cond_1
    :goto_2
    return-object v2

    .line 171
    :cond_2
    if-eqz v0, :cond_3

    .line 172
    :try_start_1
    const-string v1, "conversion_send_id"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 174
    :cond_3
    const-string v0, "last_received_send_id"

    invoke-static {}, Lcom/urbanairship/p;->a()Lcom/urbanairship/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/p;->m()Lcom/urbanairship/push/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/j;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 185
    :cond_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-static {v0, v5}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 189
    :cond_5
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    const-string v0, "properties"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final c()Z
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0xff

    const/4 v3, 0x0

    .line 203
    const/4 v0, 0x1

    .line 204
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/urbanairship/analytics/g;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_1

    .line 205
    :cond_0
    const-string v0, "Event name must not be null, empty, or larger than 255 characters."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v3

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->d:Ljava/math/BigDecimal;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->d:Ljava/math/BigDecimal;

    sget-object v2, Lcom/urbanairship/analytics/g;->a:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_a

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event value is bigger than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/analytics/g;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v3

    .line 219
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/urbanairship/analytics/g;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_3

    .line 220
    const-string v0, "Transaction ID is larger than 255 characters."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v3

    .line 224
    :cond_3
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->g:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/urbanairship/analytics/g;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_4

    .line 225
    const-string v0, "Interaction ID is larger than 255 characters."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v3

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/urbanairship/analytics/g;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_5

    .line 230
    const-string v0, "Interaction type is larger than 255 characters."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v3

    .line 234
    :cond_5
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v7, :cond_6

    .line 235
    const-string v0, "Number of custom properties exceeds 20"

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v3

    .line 239
    :cond_6
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_7

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "The custom property "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is larger than 255 characters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v2, v3

    .line 245
    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Collection;

    if-eqz v1, :cond_c

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 247
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v5

    if-le v5, v7, :cond_8

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "The custom property "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " contains a Collection<String> that is larger than  20"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v2, v3

    .line 252
    :cond_8
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 253
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_9

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, "The custom property "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contains a value that is larger than  255 characters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v1, v3

    .line 256
    goto :goto_2

    .line 213
    :cond_a
    iget-object v1, p0, Lcom/urbanairship/analytics/g;->d:Ljava/math/BigDecimal;

    sget-object v2, Lcom/urbanairship/analytics/g;->b:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gez v1, :cond_2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event value is smaller than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/urbanairship/analytics/g;->b:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v3

    .line 215
    goto/16 :goto_0

    :cond_b
    move v2, v1

    .line 259
    goto/16 :goto_1

    :cond_c
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 260
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 261
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_e

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The custom property "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contains a value that is larger than  255 characters."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move v0, v3

    :goto_3
    move v2, v0

    .line 266
    goto/16 :goto_1

    .line 268
    :cond_d
    return v2

    :cond_e
    move v0, v2

    goto :goto_3
.end method
