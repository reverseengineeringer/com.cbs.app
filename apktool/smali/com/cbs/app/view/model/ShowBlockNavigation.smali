.class public Lcom/cbs/app/view/model/ShowBlockNavigation;
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
            "Lcom/cbs/app/view/model/ShowBlockNavigation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cbssolrType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cbssolrType"
    .end annotation
.end field

.field private changedDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "changedDate"
    .end annotation
.end field

.field private changedDateString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_changedDate"
    .end annotation
.end field

.field private createdDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "createdDate"
    .end annotation
.end field

.field private createdDateString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_createdDate"
    .end annotation
.end field

.field private expireDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expireDate"
    .end annotation
.end field

.field private expireDateString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_expireDate"
    .end annotation
.end field

.field private icon:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icon"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private inboundDeeplinkUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "inboundDeeplinkUrl"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private label:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "label"
    .end annotation
.end field

.field private liveDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "liveDate"
    .end annotation
.end field

.field private liveDateString:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_liveDate"
    .end annotation
.end field

.field private navigationType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "navigationType"
    .end annotation
.end field

.field private platform:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "platform"
    .end annotation
.end field

.field private showId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showId"
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

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/cbs/app/view/model/ShowBlockNavigation$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/ShowBlockNavigation$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/ShowBlockNavigation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/ShowBlockNavigation;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->k:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->type:Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->id:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->title:Ljava/lang/String;

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->createdDate:J

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->createdDateString:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->changedDate:J

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->changedDateString:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->liveDate:J

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->liveDateString:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->expireDate:J

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->expireDateString:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->showId:J

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->navigationType:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->platform:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->icon:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->label:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->url:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->inboundDeeplinkUrl:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->cbssolrType:Ljava/lang/String;

    .line 284
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public getCbssolrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->cbssolrType:Ljava/lang/String;

    return-object v0
.end method

.method public getChangedDate()J
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->changedDate:J

    return-wide v0
.end method

.method public getChangedDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->changedDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->createdDate:J

    return-wide v0
.end method

.method public getCreatedDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->createdDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireDate()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->expireDate:J

    return-wide v0
.end method

.method public getExpireDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->expireDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->id:I

    return v0
.end method

.method public getInBoundDeepLinkUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->inboundDeeplinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->liveDate:J

    return-wide v0
.end method

.method public getLiveDateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->liveDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->navigationType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->showId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setCbssolrType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->cbssolrType:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setChangedDate(J)V
    .locals 1

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->changedDate:J

    .line 132
    return-void
.end method

.method public setChangedDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->changedDateString:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->createdDate:J

    .line 116
    return-void
.end method

.method public setCreatedDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->createdDateString:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setExpireDate(J)V
    .locals 1

    .prologue
    .line 163
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->expireDate:J

    .line 164
    return-void
.end method

.method public setExpireDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->expireDateString:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->icon:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->id:I

    .line 100
    return-void
.end method

.method public setInBoundDeepLinkUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->inboundDeeplinkUrl:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->k:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->label:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->liveDate:J

    .line 148
    return-void
.end method

.method public setLiveDateString(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->liveDateString:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setNavigationType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->navigationType:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->platform:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 179
    iput-wide p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->showId:J

    .line 180
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->title:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->type:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->url:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->createdDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->createdDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->changedDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->changedDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->liveDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->liveDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->expireDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 251
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->expireDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-wide v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->showId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->navigationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->platform:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->inboundDeeplinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/cbs/app/view/model/ShowBlockNavigation;->cbssolrType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    return-void
.end method
