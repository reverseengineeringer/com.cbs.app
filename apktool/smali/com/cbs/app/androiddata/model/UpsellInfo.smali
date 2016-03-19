.class public Lcom/cbs/app/androiddata/model/UpsellInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


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
            "Lcom/cbs/app/androiddata/model/UpsellInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "deviceApp"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "deviceAppSecret"
    .end annotation
.end field

.field private c:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "liveDate"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_liveDate"
    .end annotation
.end field

.field private e:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expireDate"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "_expireDate"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private h:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "showId"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pageURL"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellMessage"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "callToAction"
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "callToActionURL"
    .end annotation
.end field

.field private m:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "actionTarget"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "actionType"
    .end annotation
.end field

.field private o:Ljava/util/List;
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

.field private p:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellMessage2"
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellMessage3"
    .end annotation
.end field

.field private r:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "displayFrequency"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellImagePath"
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upsellImagePath1"
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "contentID"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/cbs/app/androiddata/model/UpsellInfo$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/UpsellInfo$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/UpsellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->o:Ljava/util/List;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->o:Ljava/util/List;

    .line 1257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->a:Ljava/lang/String;

    .line 1258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->b:Ljava/lang/String;

    .line 1259
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->c:J

    .line 1260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->d:Ljava/lang/String;

    .line 1261
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->e:J

    .line 1262
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->f:Ljava/lang/String;

    .line 1263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->g:Ljava/lang/String;

    .line 1264
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->h:J

    .line 1265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->i:Ljava/lang/String;

    .line 1266
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->j:Ljava/lang/String;

    .line 1267
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->k:Ljava/lang/String;

    .line 1268
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->l:Ljava/lang/String;

    .line 1269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->m:Ljava/lang/String;

    .line 1270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->n:Ljava/lang/String;

    .line 1272
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 1273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->p:Ljava/lang/String;

    .line 1274
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->q:Ljava/lang/String;

    .line 1275
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->r:J

    .line 1276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->s:Ljava/lang/String;

    .line 1277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->t:Ljava/lang/String;

    .line 1278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->u:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public getActionTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToActionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAppSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayFrequency()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->r:J

    return-wide v0
.end method

.method public getExpireDate()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->e:J

    return-wide v0
.end method

.method public getExpireDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->c:J

    return-wide v0
.end method

.method public getLiveDateStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->h:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellImagePath1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellMessage2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsellMessage3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->q:Ljava/lang/String;

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
    .line 184
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->o:Ljava/util/List;

    return-object v0
.end method

.method public setActionTarget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->m:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->n:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->k:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setCallToActionURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->l:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setContentId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->u:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setDeviceApp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->a:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDeviceAppSecret(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->b:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setDisplayFrequency(J)V
    .locals 1

    .prologue
    .line 212
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->r:J

    .line 213
    return-void
.end method

.method public setExpireDate(J)V
    .locals 1

    .prologue
    .line 108
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->e:J

    .line 109
    return-void
.end method

.method public setExpireDateStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->f:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->c:J

    .line 93
    return-void
.end method

.method public setLiveDateStr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->d:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPageURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->i:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 132
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->h:J

    .line 133
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->g:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setUpsellImagePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->s:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setUpsellImagePath1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->t:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setUpsellMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->j:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setUpsellMessage2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->p:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setUpsellMessage3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->q:Ljava/lang/String;

    .line 205
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
    .line 188
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->o:Ljava/util/List;

    .line 189
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 287
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 288
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->r:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 303
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/UpsellInfo;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    return-void
.end method
