.class public Lcom/cbs/app/view/model/UpsellInfo;
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
            "Lcom/cbs/app/view/model/UpsellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x79c77064605f338L


# instance fields
.field private aaProductID:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "aaProductID"
    .end annotation
.end field

.field private actionTarget:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "actionTarget"
    .end annotation
.end field

.field private actionType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "actionType"
    .end annotation
.end field

.field private callToAction:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "callToAction"
    .end annotation
.end field

.field private callToActionURL:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "callToActionURL"
    .end annotation
.end field

.field private contentID:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "contentID"
    .end annotation
.end field

.field private deviceApp:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "deviceApp"
    .end annotation
.end field

.field private deviceAppSecret:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "deviceAppSecret"
    .end annotation
.end field

.field private displayFrequency:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "displayFrequency"
    .end annotation
.end field

.field private expireDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expireDate"
    .end annotation
.end field

.field private expireDateStr:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_expireDate"
    .end annotation
.end field

.field private liveDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "liveDate"
    .end annotation
.end field

.field private liveDateStr:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_liveDate"
    .end annotation
.end field

.field private pageURL:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pageURL"
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

.field private upsellImagePath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellImagePath"
    .end annotation
.end field

.field private upsellImagePath1:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellImagePath1"
    .end annotation
.end field

.field private upsellMessage:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellMessage"
    .end annotation
.end field

.field private upsellMessage2:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellMessage2"
    .end annotation
.end field

.field private upsellMessage3:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellMessage3"
    .end annotation
.end field

.field private userStateList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "userStateList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/cbs/app/view/model/UpsellInfo$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/UpsellInfo$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/UpsellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->userStateList:Ljava/util/List;

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->userStateList:Ljava/util/List;

    .line 83
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/UpsellInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 84
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->deviceApp:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->deviceAppSecret:Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->liveDate:J

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->liveDateStr:Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->expireDate:J

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->expireDateStr:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->title:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->showId:J

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->pageURL:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->callToAction:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->callToActionURL:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->actionTarget:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->actionType:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->userStateList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage2:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage3:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->displayFrequency:J

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellImagePath:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellImagePath1:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->contentID:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->aaProductID:Ljava/lang/String;

    .line 293
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    return v0
.end method

.method public getActionTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->actionTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToActionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->callToActionURL:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->contentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->deviceApp:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->deviceAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayFrequency()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->displayFrequency:J

    return-wide v0
.end method

.method public getExpireDate()J
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->expireDate:J

    return-wide v0
.end method

.method public getExpireDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->expireDateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->liveDate:J

    return-wide v0
.end method

.method public getLiveDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->liveDateStr:Ljava/lang/String;

    return-object v0
.end method

.method public getPageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->pageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->aaProductID:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->showId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellImagePath1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellImagePath1:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellMessage2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage2:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellMessage3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage3:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStateList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->userStateList:Ljava/util/List;

    return-object v0
.end method

.method public setActionTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->actionTarget:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->actionType:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->callToAction:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setCallToActionURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->callToActionURL:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->contentID:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setDeviceApp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->deviceApp:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setDeviceAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->deviceAppSecret:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setDisplayFrequency(J)V
    .locals 1

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->displayFrequency:J

    .line 228
    return-void
.end method

.method public setExpireDate(J)V
    .locals 1

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->expireDate:J

    .line 124
    return-void
.end method

.method public setExpireDateStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->expireDateStr:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->liveDate:J

    .line 108
    return-void
.end method

.method public setLiveDateStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->liveDateStr:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPageURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->pageURL:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 147
    iput-wide p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->showId:J

    .line 148
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->title:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setUpsellImagePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellImagePath:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setUpsellImagePath1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellImagePath1:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setUpsellMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setUpsellMessage2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage2:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setUpsellMessage3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage3:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setUserStateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->userStateList:Ljava/util/List;

    .line 204
    return-void
.end method

.method public setaaProductID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/cbs/app/view/model/UpsellInfo;->aaProductID:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->deviceApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->deviceAppSecret:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->liveDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 301
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->liveDateStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->expireDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 303
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->expireDateStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->showId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 306
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->pageURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->callToAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->callToActionURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->actionTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->actionType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->userStateList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 314
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellMessage3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-wide v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->displayFrequency:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 317
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->upsellImagePath1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->contentID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/cbs/app/view/model/UpsellInfo;->aaProductID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    return-void
.end method
