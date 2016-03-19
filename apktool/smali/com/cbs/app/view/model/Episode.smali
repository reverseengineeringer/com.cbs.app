.class public Lcom/cbs/app/view/model/Episode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/cbs/app/view/model/Episode;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/Episode;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x47f7b6ec3c8263ccL


# instance fields
.field private airDateString:Ljava/lang/String;

.field private airDate_sec:J

.field private dayOfWeek:Ljava/lang/String;

.field private display_airdate:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private episodeNumber:Ljava/lang/String;

.field private episodeTitle:Ljava/lang/String;

.field private filepathOverrideHalfHour:Ljava/lang/String;

.field private filepathOverrideOneAndHalfHour:Ljava/lang/String;

.field private filepathOverrideOneHour:Ljava/lang/String;

.field private filepathOverrideThreeHours:Ljava/lang/String;

.field private filepathOverrideTwoHours:Ljava/lang/String;

.field private filepath_halfhour:Ljava/lang/String;

.field private filepath_hour:Ljava/lang/String;

.field private filepath_ipad:Ljava/lang/String;

.field private isNewEpisode:Ljava/lang/String;

.field private pressSummary:Ljava/lang/String;

.field private seriesTitle:Ljava/lang/String;

.field private showTitle:Ljava/lang/String;

.field private show_id:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private tvrating:Ljava/lang/String;

.field private urllink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/cbs/app/view/model/Episode$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/Episode$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/Episode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/Episode;->readFromParcel(Landroid/os/Parcel;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "show_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "showTitle"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "airDateString"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "dayOfWeek"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filepath_ipad"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "episodeNumber"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "episodeTitle"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "display_airdate"
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "startTime"
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "endTime"
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "duration"
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "pressSummary"
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "tvrating"
        .end annotation
    .end param
    .param p15    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filepath_hour"
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filepath_halfhour"
        .end annotation
    .end param
    .param p17    # J
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "airDate_sec"
        .end annotation
    .end param
    .param p19    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "urllink"
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filepath_apps_override_half_hour"
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filepath_apps_override_one_hour"
        .end annotation
    .end param
    .param p22    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filepath_apps_override_one_and_half_hour"
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filepath_apps_override_two_hours"
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "filepath_apps_override_three_hours"
        .end annotation
    .end param
    .param p25    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "isNewEpisode"
        .end annotation
    .end param
    .param p26    # Ljava/lang/String;
        .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
            value = "seriesTitle"
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->title:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/cbs/app/view/model/Episode;->show_id:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/cbs/app/view/model/Episode;->showTitle:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/cbs/app/view/model/Episode;->airDateString:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/cbs/app/view/model/Episode;->dayOfWeek:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/cbs/app/view/model/Episode;->filepath_ipad:Ljava/lang/String;

    .line 98
    iput-object p7, p0, Lcom/cbs/app/view/model/Episode;->episodeNumber:Ljava/lang/String;

    .line 99
    iput-object p8, p0, Lcom/cbs/app/view/model/Episode;->episodeTitle:Ljava/lang/String;

    .line 100
    iput-object p9, p0, Lcom/cbs/app/view/model/Episode;->display_airdate:Ljava/lang/String;

    .line 101
    iput-object p10, p0, Lcom/cbs/app/view/model/Episode;->startTime:Ljava/lang/String;

    .line 102
    iput-object p11, p0, Lcom/cbs/app/view/model/Episode;->endTime:Ljava/lang/String;

    .line 103
    iput-object p12, p0, Lcom/cbs/app/view/model/Episode;->duration:Ljava/lang/String;

    .line 104
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->pressSummary:Ljava/lang/String;

    .line 105
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->tvrating:Ljava/lang/String;

    .line 106
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_halfhour:Ljava/lang/String;

    .line 107
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_hour:Ljava/lang/String;

    .line 108
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/cbs/app/view/model/Episode;->airDate_sec:J

    .line 109
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->urllink:Ljava/lang/String;

    .line 111
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideHalfHour:Ljava/lang/String;

    .line 112
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneHour:Ljava/lang/String;

    .line 113
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneAndHalfHour:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideTwoHours:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideThreeHours:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->isNewEpisode:Ljava/lang/String;

    .line 117
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->seriesTitle:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->title:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->show_id:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->showTitle:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->airDateString:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->dayOfWeek:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_ipad:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->episodeNumber:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->episodeTitle:Ljava/lang/String;

    .line 414
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->display_airdate:Ljava/lang/String;

    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->startTime:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->endTime:Ljava/lang/String;

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->duration:Ljava/lang/String;

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->pressSummary:Ljava/lang/String;

    .line 419
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->tvrating:Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_halfhour:Ljava/lang/String;

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_hour:Ljava/lang/String;

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/Episode;->airDate_sec:J

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideHalfHour:Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneHour:Ljava/lang/String;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneAndHalfHour:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideTwoHours:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideThreeHours:Ljava/lang/String;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->isNewEpisode:Ljava/lang/String;

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Episode;->seriesTitle:Ljava/lang/String;

    .line 430
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cbs/app/view/model/Episode;)I
    .locals 4

    .prologue
    .line 346
    iget-wide v0, p0, Lcom/cbs/app/view/model/Episode;->airDate_sec:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/cbs/app/view/model/Episode;->airDate_sec:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lcom/cbs/app/view/model/Episode;

    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/Episode;->compareTo(Lcom/cbs/app/view/model/Episode;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    instance-of v1, p1, Lcom/cbs/app/view/model/Episode;

    if-eqz v1, :cond_0

    .line 356
    check-cast p1, Lcom/cbs/app/view/model/Episode;

    .line 357
    iget-object v1, p0, Lcom/cbs/app/view/model/Episode;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/cbs/app/view/model/Episode;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/model/Episode;->startTime:Ljava/lang/String;

    iget-object v2, p1, Lcom/cbs/app/view/model/Episode;->startTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/model/Episode;->endTime:Ljava/lang/String;

    iget-object v2, p1, Lcom/cbs/app/view/model/Episode;->endTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cbs/app/view/model/Episode;->duration:Ljava/lang/String;

    iget-object v2, p1, Lcom/cbs/app/view/model/Episode;->duration:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v0, 0x1

    .line 364
    :cond_0
    return v0
.end method

.method public getAirDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->airDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getAirDate_sec()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/cbs/app/view/model/Episode;->airDate_sec:J

    return-wide v0
.end method

.method public getDayOfWeek()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->dayOfWeek:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay_airdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->display_airdate:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->episodeNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->episodeTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathOverrideHalfHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideHalfHour:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathOverrideOneAndHalfHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneAndHalfHour:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathOverrideOneHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneHour:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathOverrideThreeHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideThreeHours:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathOverrideTwoHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideTwoHours:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath_halfhour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_halfhour:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath_hour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_hour:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath_ipad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_ipad:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEpisodeNew()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->isNewEpisode:Ljava/lang/String;

    return-object v0
.end method

.method public getPressSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->pressSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->seriesTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->showTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->show_id:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTvrating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->tvrating:Ljava/lang/String;

    return-object v0
.end method

.method public getUrllink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->urllink:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 368
    const/16 v0, 0x2d

    return v0
.end method

.method public setAirDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->airDateString:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setAirDate_sec(J)V
    .locals 1

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/cbs/app/view/model/Episode;->airDate_sec:J

    .line 141
    return-void
.end method

.method public setDayOfWeek(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->dayOfWeek:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setDisplay_airdate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->display_airdate:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->duration:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->endTime:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setEpisodeNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->episodeNumber:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setEpisodeTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->episodeTitle:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setFilepathOverrideHalfHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideHalfHour:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setFilepathOverrideOneAndHalfHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneAndHalfHour:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setFilepathOverrideOneHour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneHour:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setFilepathOverrideThreeHours(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideThreeHours:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setFilepathOverrideTwoHours(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideTwoHours:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setFilepath_halfhour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->filepath_halfhour:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setFilepath_hour(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->filepath_hour:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setFilepath_ipad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->filepath_ipad:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setNewEpisode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->isNewEpisode:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setPressSummary(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->pressSummary:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setSeriesTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->seriesTitle:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setShowTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->showTitle:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setShow_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->show_id:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->startTime:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->title:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setTvrating(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->tvrating:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setUrllink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/cbs/app/view/model/Episode;->urllink:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cbs/app/view/model/Episode;->showTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Episode;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/model/Episode;->display_airdate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/cbs/app/view/model/Episode;->getTvrating()Ljava/lang/String;

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
    .line 378
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->show_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->showTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->airDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->dayOfWeek:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_ipad:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->episodeNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->episodeTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->display_airdate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->duration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->pressSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->tvrating:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_halfhour:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepath_hour:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget-wide v0, p0, Lcom/cbs/app/view/model/Episode;->airDate_sec:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 395
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideHalfHour:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneHour:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideOneAndHalfHour:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideTwoHours:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->filepathOverrideThreeHours:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->isNewEpisode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/cbs/app/view/model/Episode;->seriesTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    return-void
.end method
