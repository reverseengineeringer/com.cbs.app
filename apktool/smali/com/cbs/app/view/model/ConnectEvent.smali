.class public Lcom/cbs/app/view/model/ConnectEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/ConnectEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6c469721a8f89aecL


# instance fields
.field private activeState:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "active_state"
    .end annotation
.end field

.field private castId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "castId"
    .end annotation
.end field

.field private chatName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "chat_name"
    .end annotation
.end field

.field private conversationLink:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "conversation_link"
    .end annotation
.end field

.field private endDateSec:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "end_date_sec"
    .end annotation
.end field

.field private eventId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "eventId"
    .end annotation
.end field

.field private filepath262x122Image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_262x122Image"
    .end annotation
.end field

.field private filepath270x170Image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_270x170Imag"
    .end annotation
.end field

.field private filepath367x170Image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_367x170Image"
    .end annotation
.end field

.field private filepath430x170Image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_430x170Image"
    .end annotation
.end field

.field private filepath515x350Image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_515x350Imag"
    .end annotation
.end field

.field private filepath575x250Image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_575x250Image"
    .end annotation
.end field

.field private filepath890x250Image:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_890x250Image"
    .end annotation
.end field

.field private filepathLargeUpcomingEventImage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_largeUpcomingEventImage"
    .end annotation
.end field

.field private filepathLiveImage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_liveimage"
    .end annotation
.end field

.field private filepathSmallUpcomingEventImage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_smallUpcomingEventImage"
    .end annotation
.end field

.field private filepathTakeoverImage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_takeoverimage"
    .end annotation
.end field

.field private flashEmbed:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "flash_embed"
    .end annotation
.end field

.field private iPadConnectFilepath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "iPadConnectFilepath"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private layoutType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "layoutType"
    .end annotation
.end field

.field private liveDateSec:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date_sec"
    .end annotation
.end field

.field private nextEventId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "nextEventId"
    .end annotation
.end field

.field private nextEventTitle:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "nextEventTitle"
    .end annotation
.end field

.field private qAndAAnswerFeedUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "qandAAnswerFeedUrl"
    .end annotation
.end field

.field private qAndATwitterHashtags:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "qandATwitterHashtags"
    .end annotation
.end field

.field private qAndAWebHeaderImageFilepath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "qandAWebHeaderImageFilepath"
    .end annotation
.end field

.field private qAndAWidget:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "qandAWidget"
    .end annotation
.end field

.field private rsvpLink:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rsvp_link"
    .end annotation
.end field

.field private showId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private startDateSec:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_date_sec"
    .end annotation
.end field

.field private takeoverText:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "takeover_text"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field

.field private videoStreamUrlOrPid:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "videoStreamUrlOrPid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/cbs/app/view/model/ConnectEvent$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/ConnectEvent$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/ConnectEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/ConnectEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 159
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->activeState:Ljava/lang/String;

    return-object v0
.end method

.method public getCastId()J
    .locals 2

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->castId:J

    return-wide v0
.end method

.method public getChatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->chatName:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->conversationLink:Ljava/lang/String;

    return-object v0
.end method

.method public getEndDateSec()J
    .locals 2

    .prologue
    .line 333
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->endDateSec:J

    return-wide v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->eventId:J

    return-wide v0
.end method

.method public getFilepath262x122Image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath262x122Image:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath270x170Image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath270x170Image:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath367x170Image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath367x170Image:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath430x170Image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath430x170Image:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath515x350Image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath515x350Image:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath575x250Image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath575x250Image:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath890x250Image()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath890x250Image:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathLargeUpcomingEventImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathLargeUpcomingEventImage:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathLiveImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathLiveImage:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathSmallUpcomingEventImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathSmallUpcomingEventImage:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathTakeoverImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathTakeoverImage:Ljava/lang/String;

    return-object v0
.end method

.method public getFlashEmbed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->flashEmbed:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->id:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->layoutType:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDateSec()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->liveDateSec:J

    return-wide v0
.end method

.method public getNextEventId()J
    .locals 2

    .prologue
    .line 325
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->nextEventId:J

    return-wide v0
.end method

.method public getNextEventTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->nextEventTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRsvpLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->rsvpLink:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->showId:J

    return-wide v0
.end method

.method public getStartDateSec()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->startDateSec:J

    return-wide v0
.end method

.method public getTakeoverText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->takeoverText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoStreamUrlOrPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->videoStreamUrlOrPid:Ljava/lang/String;

    return-object v0
.end method

.method public getiPadConnectFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->iPadConnectFilepath:Ljava/lang/String;

    return-object v0
.end method

.method public getqAndAAnswerFeedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAAnswerFeedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getqAndATwitterHashtags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndATwitterHashtags:Ljava/lang/String;

    return-object v0
.end method

.method public getqAndAWebHeaderImageFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAWebHeaderImageFilepath:Ljava/lang/String;

    return-object v0
.end method

.method public getqAndAWidget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAWidget:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->id:J

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->type:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->title:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->showId:J

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->eventId:J

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->castId:J

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->k:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->liveDateSec:J

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->nextEventTitle:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->nextEventId:J

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->endDateSec:J

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->startDateSec:J

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->flashEmbed:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->activeState:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathSmallUpcomingEventImage:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathLargeUpcomingEventImage:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathLiveImage:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathTakeoverImage:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->rsvpLink:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->conversationLink:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->takeoverText:Ljava/lang/String;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->chatName:Ljava/lang/String;

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->layoutType:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->iPadConnectFilepath:Ljava/lang/String;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->videoStreamUrlOrPid:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAWidget:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAAnswerFeedUrl:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndATwitterHashtags:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAWebHeaderImageFilepath:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath890x250Image:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath515x350Image:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath430x170Image:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath367x170Image:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath575x250Image:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath262x122Image:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath270x170Image:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setActiveState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->activeState:Ljava/lang/String;

    .line 362
    return-void
.end method

.method public setCastId(J)V
    .locals 1

    .prologue
    .line 297
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->castId:J

    .line 298
    return-void
.end method

.method public setChatName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->chatName:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public setConversationLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->conversationLink:Ljava/lang/String;

    .line 410
    return-void
.end method

.method public setEndDateSec(J)V
    .locals 1

    .prologue
    .line 337
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->endDateSec:J

    .line 338
    return-void
.end method

.method public setEventId(J)V
    .locals 1

    .prologue
    .line 289
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->eventId:J

    .line 290
    return-void
.end method

.method public setFilepath262x122Image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath262x122Image:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public setFilepath270x170Image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath270x170Image:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setFilepath367x170Image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 513
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath367x170Image:Ljava/lang/String;

    .line 514
    return-void
.end method

.method public setFilepath430x170Image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath430x170Image:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public setFilepath515x350Image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath515x350Image:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setFilepath575x250Image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath575x250Image:Ljava/lang/String;

    .line 522
    return-void
.end method

.method public setFilepath890x250Image(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath890x250Image:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public setFilepathLargeUpcomingEventImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathLargeUpcomingEventImage:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setFilepathLiveImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathLiveImage:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public setFilepathSmallUpcomingEventImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathSmallUpcomingEventImage:Ljava/lang/String;

    .line 370
    return-void
.end method

.method public setFilepathTakeoverImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathTakeoverImage:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setFlashEmbed(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->flashEmbed:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 257
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->id:J

    .line 258
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->k:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setLayoutType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->layoutType:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setLiveDateSec(J)V
    .locals 1

    .prologue
    .line 313
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->liveDateSec:J

    .line 314
    return-void
.end method

.method public setNextEventId(J)V
    .locals 1

    .prologue
    .line 329
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->nextEventId:J

    .line 330
    return-void
.end method

.method public setNextEventTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->nextEventTitle:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setRsvpLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->rsvpLink:Ljava/lang/String;

    .line 402
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 281
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->showId:J

    .line 282
    return-void
.end method

.method public setStartDateSec(J)V
    .locals 1

    .prologue
    .line 345
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->startDateSec:J

    .line 346
    return-void
.end method

.method public setTakeoverText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->takeoverText:Ljava/lang/String;

    .line 418
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->title:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->type:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setVideoStreamUrlOrPid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->videoStreamUrlOrPid:Ljava/lang/String;

    .line 450
    return-void
.end method

.method public setiPadConnectFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->iPadConnectFilepath:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public setqAndAAnswerFeedUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAAnswerFeedUrl:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setqAndATwitterHashtags(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndATwitterHashtags:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setqAndAWebHeaderImageFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAWebHeaderImageFilepath:Ljava/lang/String;

    .line 482
    return-void
.end method

.method public setqAndAWidget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAWidget:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 173
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->showId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->eventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 177
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->castId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 178
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->liveDateSec:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->nextEventTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->nextEventId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 182
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->endDateSec:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 183
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->startDateSec:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 184
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->flashEmbed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->activeState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathSmallUpcomingEventImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathLargeUpcomingEventImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathLiveImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepathTakeoverImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->rsvpLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->conversationLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->takeoverText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->chatName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->layoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->iPadConnectFilepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->videoStreamUrlOrPid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAWidget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAAnswerFeedUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndATwitterHashtags:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->qAndAWebHeaderImageFilepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath890x250Image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath515x350Image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath430x170Image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath367x170Image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath575x250Image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath262x122Image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectEvent;->filepath270x170Image:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return-void
.end method
