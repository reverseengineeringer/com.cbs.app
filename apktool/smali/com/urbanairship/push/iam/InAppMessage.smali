.class public Lcom/urbanairship/push/iam/InAppMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/push/iam/InAppMessage$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/push/iam/InAppMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/Long;

.field private final e:Ljava/lang/Integer;

.field private final f:Ljava/lang/Integer;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/urbanairship/json/c;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lcom/urbanairship/push/iam/InAppMessage$1;

    invoke-direct {v0}, Lcom/urbanairship/push/iam/InAppMessage$1;-><init>()V

    sput-object v0, Lcom/urbanairship/push/iam/InAppMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    .line 126
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_3
    if-nez v0, :cond_0

    new-instance v0, Lcom/urbanairship/json/c;

    invoke-direct {v0, v1}, Lcom/urbanairship/json/c;-><init>(Ljava/util/Map;)V

    :cond_0
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->j:Lcom/urbanairship/json/c;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    .line 134
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    const-class v1, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    .line 137
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    const-class v1, Lcom/urbanairship/actions/ActionValue;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 138
    return-void

    :cond_1
    move-object v0, v1

    .line 120
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 121
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 122
    goto :goto_2

    .line 128
    :catch_0
    move-exception v0

    const-string v0, "InAppMessage - unable to parse extras from parcel."

    invoke-static {v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/push/iam/InAppMessage$a;)V
    .locals 4

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x9a7ec800L

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    .line 98
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->b(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->c(Lcom/urbanairship/push/iam/InAppMessage$a;)Lcom/urbanairship/json/c;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/urbanairship/json/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/urbanairship/json/c;-><init>(Ljava/util/Map;)V

    :goto_1
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->j:Lcom/urbanairship/json/c;

    .line 100
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->d(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->e(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    .line 102
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->f(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->g(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    .line 104
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->h(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_2
    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    .line 105
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->i(Lcom/urbanairship/push/iam/InAppMessage$a;)I

    move-result v0

    iput v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    .line 106
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->j(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    .line 107
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->k(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    .line 108
    return-void

    .line 97
    :cond_0
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->c(Lcom/urbanairship/push/iam/InAppMessage$a;)Lcom/urbanairship/json/c;

    move-result-object v0

    goto :goto_1

    .line 104
    :cond_2
    invoke-static {p1}, Lcom/urbanairship/push/iam/InAppMessage$a;->h(Lcom/urbanairship/push/iam/InAppMessage$a;)Ljava/util/Map;

    move-result-object v0

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/urbanairship/push/iam/InAppMessage$a;B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/urbanairship/push/iam/InAppMessage;-><init>(Lcom/urbanairship/push/iam/InAppMessage$a;)V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage;
    .locals 12

    .prologue
    const-wide v10, 0x9a7ec800L

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    .line 306
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v1

    .line 308
    if-nez v1, :cond_0

    .line 385
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const-string v2, "display"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v2

    .line 313
    const-string v3, "actions"

    invoke-virtual {v1, v3}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v3

    .line 315
    if-eqz v2, :cond_1

    const-string v4, "banner"

    const-string v5, "type"

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 316
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InAppMessage - Unable to parse json: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/j;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_2
    new-instance v4, Lcom/urbanairship/push/iam/InAppMessage$a;

    invoke-direct {v4}, Lcom/urbanairship/push/iam/InAppMessage$a;-><init>()V

    .line 322
    const-string v0, "id"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$a;

    move-result-object v0

    const-string v5, "extra"

    invoke-virtual {v1, v5}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Lcom/urbanairship/json/c;)Lcom/urbanairship/push/iam/InAppMessage$a;

    move-result-object v0

    const-string v5, "alert"

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$a;->c(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$a;

    move-result-object v0

    const-string v5, "primary_color"

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/push/iam/InAppMessage;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$a;

    move-result-object v0

    const-string v5, "secondary_color"

    invoke-virtual {v2, v5}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/urbanairship/push/iam/InAppMessage;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/urbanairship/push/iam/InAppMessage$a;->b(Ljava/lang/Integer;)Lcom/urbanairship/push/iam/InAppMessage$a;

    .line 329
    const-string v0, "duration_ms"

    invoke-virtual {v2, v0}, Lcom/urbanairship/json/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    const-string v0, "duration_ms"

    invoke-virtual {v2, v0}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/urbanairship/json/JsonValue;->a(J)J

    move-result-wide v6

    .line 331
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 332
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$a;->b(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$a;

    .line 341
    :cond_3
    :goto_1
    const-string v0, "expiry_ms"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 342
    const-string v0, "expiry_ms"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/c;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-virtual {v0, v6, v7}, Lcom/urbanairship/json/JsonValue;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$a;

    .line 347
    :cond_4
    :goto_2
    const-string v0, "top"

    const-string v1, "position"

    invoke-virtual {v2, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(I)Lcom/urbanairship/push/iam/InAppMessage$a;

    .line 353
    :goto_3
    if-eqz v3, :cond_b

    .line 355
    const-string v0, "on_click"

    invoke-virtual {v3, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_9

    .line 357
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 358
    invoke-virtual {v0}, Lcom/urbanairship/json/c;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/urbanairship/actions/ActionValue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v6, v0}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 335
    :cond_5
    const-string v0, "duration"

    invoke-virtual {v2, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/urbanairship/json/JsonValue;->a(J)J

    move-result-wide v6

    .line 336
    cmp-long v0, v6, v8

    if-lez v0, :cond_3

    .line 337
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$a;->b(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$a;

    goto/16 :goto_1

    .line 343
    :cond_6
    const-string v0, "expiry"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 344
    const-string v0, "expiry"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v10

    invoke-static {v0, v6, v7}, Lcom/urbanairship/d/c;->a(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Ljava/lang/Long;)Lcom/urbanairship/push/iam/InAppMessage$a;

    goto/16 :goto_2

    .line 350
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(I)Lcom/urbanairship/push/iam/InAppMessage$a;

    goto :goto_3

    .line 361
    :cond_8
    invoke-virtual {v4, v1}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$a;

    .line 365
    :cond_9
    const-string v0, "button_group"

    invoke-virtual {v3, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/urbanairship/push/iam/InAppMessage$a;->b(Ljava/lang/String;)Lcom/urbanairship/push/iam/InAppMessage$a;

    .line 368
    const-string v0, "button_actions"

    invoke-virtual {v3, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v2

    .line 369
    if-eqz v2, :cond_b

    .line 371
    invoke-virtual {v2}, Lcom/urbanairship/json/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 373
    invoke-virtual {v2, v1}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v0

    .line 375
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 376
    invoke-virtual {v0}, Lcom/urbanairship/json/c;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 377
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    new-instance v8, Lcom/urbanairship/actions/ActionValue;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/json/JsonValue;

    invoke-direct {v8, v0}, Lcom/urbanairship/actions/ActionValue;-><init>(Lcom/urbanairship/json/JsonValue;)V

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 380
    :cond_a
    invoke-virtual {v4, v1, v5}, Lcom/urbanairship/push/iam/InAppMessage$a;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/urbanairship/push/iam/InAppMessage$a;

    goto :goto_5

    .line 385
    :cond_b
    invoke-virtual {v4}, Lcom/urbanairship/push/iam/InAppMessage$a;->a()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-static {p0}, Lcom/urbanairship/d/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    :goto_0
    return-object v0

    .line 399
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/urbanairship/push/iam/InAppMessage;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    return-wide v0
.end method

.method static synthetic e(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic f(Lcom/urbanairship/push/iam/InAppMessage;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    return v0
.end method

.method static synthetic g(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic i(Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/json/c;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->j:Lcom/urbanairship/json/c;

    return-object v0
.end method

.method static synthetic j(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic k(Lcom/urbanairship/push/iam/InAppMessage;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/urbanairship/json/JsonValue;
    .locals 10

    .prologue
    const v9, 0xffffff

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 409
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 410
    const-string v0, "id"

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v0, "expiry_ms"

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v0, "extra"

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->j:Lcom/urbanairship/json/c;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 418
    const-string v0, "display"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v0, "type"

    const-string v3, "banner"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v0, "alert"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v3, "position"

    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    if-ne v0, v7, :cond_3

    const-string v0, "top"

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "duration_ms"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 428
    const-string v0, "primary_color"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "#%06X"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 432
    const-string v0, "secondary_color"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "#%06X"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 437
    const-string v2, "actions"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v2, "on_click"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string v2, "button_group"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v2, "button_actions"

    iget-object v3, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    invoke-static {v1, v0}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;Lcom/urbanairship/json/JsonValue;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    return-object v0

    .line 421
    :cond_3
    const-string v0, "bottom"

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    if-ne p0, p1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return v0

    .line 451
    :cond_1
    instance-of v2, p1, Lcom/urbanairship/push/iam/InAppMessage;

    if-nez v2, :cond_2

    move v0, v1

    .line 452
    goto :goto_0

    .line 455
    :cond_2
    check-cast p1, Lcom/urbanairship/push/iam/InAppMessage;

    .line 457
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->j:Lcom/urbanairship/json/c;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->j:Lcom/urbanairship/json/c;

    invoke-virtual {v2, v3}, Lcom/urbanairship/json/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_4
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    if-nez v2, :cond_8

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    if-nez v2, :cond_3

    :goto_5
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    if-nez v2, :cond_3

    :goto_6
    iget v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    iget v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    iget-wide v4, p1, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_8
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    iget-object v3, p1, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_6
.end method

.method public final f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/urbanairship/actions/ActionValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x193

    .line 477
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 478
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 479
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->j:Lcom/urbanairship/json/c;

    invoke-virtual {v2}, Lcom/urbanairship/json/c;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 480
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 481
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 482
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 483
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 484
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 485
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    add-int/2addr v0, v1

    .line 486
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 488
    return v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 483
    :cond_4
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_4

    .line 484
    :cond_5
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    return v0
.end method

.method public final j()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public final k()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-wide v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 145
    iget v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 162
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    :goto_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->j:Lcom/urbanairship/json/c;

    invoke-virtual {v0}, Lcom/urbanairship/json/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->k:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 173
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->i:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 174
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 158
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessage;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
