.class public final Lcom/urbanairship/location/LocationRequestOptions$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/location/LocationRequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$a;->a:J

    .line 342
    const/high16 v0, 0x44480000    # 800.0f

    iput v0, p0, Lcom/urbanairship/location/LocationRequestOptions$a;->b:F

    .line 343
    const/4 v0, 0x2

    iput v0, p0, Lcom/urbanairship/location/LocationRequestOptions$a;->c:I

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/location/LocationRequestOptions$a;)I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions$a;->c:I

    return v0
.end method

.method static synthetic b(Lcom/urbanairship/location/LocationRequestOptions$a;)J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/urbanairship/location/LocationRequestOptions$a;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/urbanairship/location/LocationRequestOptions$a;)F
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/urbanairship/location/LocationRequestOptions$a;->b:F

    return v0
.end method
