.class public Lcom/urbanairship/location/LocationRequestOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/urbanairship/json/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/urbanairship/location/LocationRequestOptions$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/urbanairship/location/LocationRequestOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:J

.field private final c:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lcom/urbanairship/location/LocationRequestOptions$1;

    invoke-direct {v0}, Lcom/urbanairship/location/LocationRequestOptions$1;-><init>()V

    sput-object v0, Lcom/urbanairship/location/LocationRequestOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJF)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/urbanairship/location/LocationRequestOptions;->a:I

    .line 166
    iput-wide p2, p0, Lcom/urbanairship/location/LocationRequestOptions;->b:J

    .line 167
    iput p4, p0, Lcom/urbanairship/location/LocationRequestOptions;->c:F

    .line 168
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/location/LocationRequestOptions$a;)V
    .locals 4

    .prologue
    .line 145
    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$a;->a(Lcom/urbanairship/location/LocationRequestOptions$a;)I

    move-result v0

    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$a;->b(Lcom/urbanairship/location/LocationRequestOptions$a;)J

    move-result-wide v2

    invoke-static {p1}, Lcom/urbanairship/location/LocationRequestOptions$a;->c(Lcom/urbanairship/location/LocationRequestOptions$a;)F

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/location/LocationRequestOptions$a;B)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(Lcom/urbanairship/location/LocationRequestOptions$a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/urbanairship/location/LocationRequestOptions;
    .locals 8

    .prologue
    .line 306
    invoke-static {p0}, Lcom/urbanairship/json/JsonValue;->b(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->f()Lcom/urbanairship/json/c;

    move-result-object v1

    .line 308
    if-nez v1, :cond_0

    .line 309
    const/4 v0, 0x0

    .line 322
    :goto_0
    return-object v0

    .line 312
    :cond_0
    const-string v0, "minDistance"

    invoke-virtual {v1, v0}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/json/JsonValue;->d()Ljava/lang/Number;

    move-result-object v0

    .line 314
    if-nez v0, :cond_1

    const/high16 v0, 0x44480000    # 800.0f

    .line 315
    :goto_1
    const-string v2, "minTime"

    invoke-virtual {v1, v2}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v2

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v4, v5}, Lcom/urbanairship/json/JsonValue;->a(J)J

    move-result-wide v2

    .line 316
    const-string v4, "priority"

    invoke-virtual {v1, v4}, Lcom/urbanairship/json/c;->c(Ljava/lang/String;)Lcom/urbanairship/json/JsonValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/json/JsonValue;->b()I

    move-result v4

    .line 2270
    packed-switch v4, :pswitch_data_0

    .line 2277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Priority can only be either PRIORITY_HIGH_ACCURACY, PRIORITY_BALANCED_POWER_ACCURACY, PRIORITY_LOW_POWER, or PRIORITY_NO_POWER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_1

    .line 3259
    :pswitch_0
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 3260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minDistance must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4248
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    .line 4249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "minTime must be greater or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_3
    new-instance v1, Lcom/urbanairship/location/LocationRequestOptions;

    invoke-direct {v1, v4, v2, v3, v0}, Lcom/urbanairship/location/LocationRequestOptions;-><init>(IJF)V

    move-object v0, v1

    goto :goto_0

    .line 2270
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->a:I

    return v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->b:J

    return-wide v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->c:F

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/urbanairship/json/JsonValue;
    .locals 4

    .prologue
    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 286
    const-string v1, "priority"

    .line 1203
    iget v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->a:I

    .line 286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "minDistance"

    .line 1221
    iget v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->c:F

    .line 287
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v1, "minTime"

    .line 2212
    iget-wide v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->b:J

    .line 288
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :try_start_0
    invoke-static {v0}, Lcom/urbanairship/json/JsonValue;->a(Ljava/lang/Object;)Lcom/urbanairship/json/JsonValue;
    :try_end_0
    .catch Lcom/urbanairship/json/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    const-string v1, "LocationRequestOptions - Unable to serialize to JSON."

    invoke-static {v1, v0}, Lcom/urbanairship/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    sget-object v0, Lcom/urbanairship/json/JsonValue;->a:Lcom/urbanairship/json/JsonValue;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 232
    instance-of v1, p1, Lcom/urbanairship/location/LocationRequestOptions;

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 236
    :cond_1
    check-cast p1, Lcom/urbanairship/location/LocationRequestOptions;

    .line 237
    iget v1, p1, Lcom/urbanairship/location/LocationRequestOptions;->a:I

    iget v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->a:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p1, Lcom/urbanairship/location/LocationRequestOptions;->b:J

    iget-wide v4, p0, Lcom/urbanairship/location/LocationRequestOptions;->b:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p1, Lcom/urbanairship/location/LocationRequestOptions;->c:F

    iget v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->c:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LocationRequestOptions: Priority "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/urbanairship/location/LocationRequestOptions;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/urbanairship/location/LocationRequestOptions;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minDistance "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/location/LocationRequestOptions;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions;->c:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 180
    return-void
.end method
