.class public Lcom/cbs/app/androiddata/model/Schedule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cbs/app/androiddata/model/Schedule;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/androiddata/model/Schedule;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showTitle"
    .end annotation
.end field

.field private B:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "airDate_sec"
    .end annotation
.end field

.field private C:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "airDateString"
    .end annotation
.end field

.field private D:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "endTime"
    .end annotation
.end field

.field private E:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation
.end field

.field private F:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "episodeNumber"
    .end annotation
.end field

.field private G:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "episodeTitle"
    .end annotation
.end field

.field private H:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "isNewEpisode"
    .end annotation
.end field

.field private I:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pressSummary"
    .end annotation
.end field

.field private J:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tvRating"
    .end annotation
.end field

.field private K:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "urllink"
    .end annotation
.end field

.field private L:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hdtv"
    .end annotation
.end field

.field private M:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "dayOfWeek"
    .end annotation
.end field

.field private N:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "startTime"
    .end annotation
.end field

.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_ipad"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_airdate"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_hour"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_halfhour"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_desktop_override_half_hour"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_desktop_override_one_hour"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_desktop_override_one_and_half_hour"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_desktop_override_two_hours"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_desktop_override_three_hours"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_apps_override_half_hour"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_apps_override_one_hour"
    .end annotation
.end field

.field private r:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_apps_override_one_and_half_hour"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_apps_override_two_hours"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_apps_override_three_hours"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_mobile"
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_show_logo"
    .end annotation
.end field

.field private w:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_show_thumbnail"
    .end annotation
.end field

.field private x:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "full_content_id"
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "clip_content_id"
    .end annotation
.end field

.field private z:Lcom/cbs/app/androiddata/model/ShowAssets;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showAssets"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 546
    new-instance v0, Lcom/cbs/app/androiddata/model/Schedule$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/Schedule$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/Schedule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->a:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->b:Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->c:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->d:Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->e:J

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->f:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->g:Ljava/lang/String;

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->h:Ljava/lang/String;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->i:Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->j:Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->k:Ljava/lang/String;

    .line 515
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->l:Ljava/lang/String;

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->m:Ljava/lang/String;

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->n:Ljava/lang/String;

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->o:Ljava/lang/String;

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->p:Ljava/lang/String;

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->q:Ljava/lang/String;

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->r:Ljava/lang/String;

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->s:Ljava/lang/String;

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->t:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->u:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->v:Ljava/lang/String;

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->w:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->x:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->y:Ljava/lang/String;

    .line 529
    const-class v0, Lcom/cbs/app/androiddata/model/ShowAssets;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/androiddata/model/ShowAssets;

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->z:Lcom/cbs/app/androiddata/model/ShowAssets;

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->A:Ljava/lang/String;

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->B:J

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->C:Ljava/lang/String;

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->D:Ljava/lang/String;

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->E:Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->F:Ljava/lang/String;

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->G:Ljava/lang/String;

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->H:Ljava/lang/String;

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->I:Ljava/lang/String;

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->J:Ljava/lang/String;

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->K:Ljava/lang/String;

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->L:Ljava/lang/String;

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->M:Ljava/lang/String;

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->N:Ljava/lang/String;

    .line 544
    return-void
.end method


# virtual methods
.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 10
    check-cast p1, Lcom/cbs/app/androiddata/model/Schedule;

    .line 1109
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->B:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/cbs/app/androiddata/model/Schedule;->B:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    .line 10
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    instance-of v1, p1, Lcom/cbs/app/androiddata/model/Schedule;

    if-eqz v1, :cond_0

    .line 117
    check-cast p1, Lcom/cbs/app/androiddata/model/Schedule;

    .line 118
    iget-object v1, p0, Lcom/cbs/app/androiddata/model/Schedule;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/cbs/app/androiddata/model/Schedule;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/cbs/app/androiddata/model/Schedule;->B:J

    iget-wide v4, p1, Lcom/cbs/app/androiddata/model/Schedule;->B:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/androiddata/model/Schedule;->N:Ljava/lang/String;

    iget-object v2, p1, Lcom/cbs/app/androiddata/model/Schedule;->N:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/androiddata/model/Schedule;->D:Ljava/lang/String;

    iget-object v2, p1, Lcom/cbs/app/androiddata/model/Schedule;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/androiddata/model/Schedule;->E:Ljava/lang/String;

    iget-object v2, p1, Lcom/cbs/app/androiddata/model/Schedule;->E:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 126
    :cond_0
    return v0
.end method

.method public getAirDateSec()J
    .locals 2

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->B:J

    return-wide v0
.end method

.method public getAirDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getClipContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getDayOfWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->M:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayAirdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathAppsOverrideHalfHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathAppsOverrideOneAndHalfHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathAppsOverrideOneHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathAppsOverrideThreeHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathAppsOverrideTwoHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathDesktopOverrideHalfHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathDesktopOverrideOneAndHalfHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathDesktopOverrideOneHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathDesktopOverrideThreeHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathDesktopOverrideTwoHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathHalfhour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathIpad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathShowLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathShowThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getFullContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getHdtv()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNewEpisode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPressSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getShowAssets()Lcom/cbs/app/androiddata/model/ShowAssets;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->z:Lcom/cbs/app/androiddata/model/ShowAssets;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->e:J

    return-wide v0
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getTvRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getUrllink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->K:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 130
    const/16 v0, 0x2d

    return v0
.end method

.method public setAirDateSec(J)V
    .locals 1

    .prologue
    .line 354
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->B:J

    .line 355
    return-void
.end method

.method public setAirDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->C:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setClipContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->y:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setDayOfWeek(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->M:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setDisplayAirdate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->d:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->E:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->D:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setEpisodeNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->F:Ljava/lang/String;

    .line 387
    return-void
.end method

.method public setEpisodeTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->G:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->h:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setFilepathAppsOverrideHalfHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->p:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setFilepathAppsOverrideOneAndHalfHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->r:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setFilepathAppsOverrideOneHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->q:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setFilepathAppsOverrideThreeHours(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->t:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setFilepathAppsOverrideTwoHours(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->s:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setFilepathDesktopOverrideHalfHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->k:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setFilepathDesktopOverrideOneAndHalfHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->m:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setFilepathDesktopOverrideOneHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->l:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setFilepathDesktopOverrideThreeHours(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->o:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setFilepathDesktopOverrideTwoHours(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->n:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setFilepathHalfhour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->j:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setFilepathHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->i:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setFilepathIpad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->c:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setFilepathMobile(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->u:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setFilepathShowLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->v:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setFilepathShowThumbnail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->w:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setFullContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->x:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setHdtv(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->L:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->b:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setIsNewEpisode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->H:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->a:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPressSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->I:Ljava/lang/String;

    .line 411
    return-void
.end method

.method public setShowAssets(Lcom/cbs/app/androiddata/model/ShowAssets;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->z:Lcom/cbs/app/androiddata/model/ShowAssets;

    .line 339
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 170
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->e:J

    .line 171
    return-void
.end method

.method public setShowTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->A:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->N:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->f:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTvRating(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->J:Ljava/lang/String;

    .line 419
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->g:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setUrllink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 426
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/Schedule;->K:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/androiddata/model/Schedule;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/Schedule;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/androiddata/model/Schedule;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/androiddata/model/Schedule;->getTvRating()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 466
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->z:Lcom/cbs/app/androiddata/model/ShowAssets;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 487
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 488
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->B:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 489
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->D:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->E:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->F:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->L:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->M:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/Schedule;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 501
    return-void
.end method
