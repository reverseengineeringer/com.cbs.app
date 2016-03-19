.class public Lcom/cbs/app/view/model/Classic;
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
            "Lcom/cbs/app/view/model/Classic;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x54af84cf5a8fb341L


# instance fields
.field private category:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "category"
    .end annotation
.end field

.field private changedDate:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "changed_date"
    .end annotation
.end field

.field private createdDate:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "createdDate"
    .end annotation
.end field

.field private deviceRestriction:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "device_restriction"
    .end annotation
.end field

.field private displayOrder:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_order"
    .end annotation
.end field

.field private filepathShowLogo:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_show_logo"
    .end annotation
.end field

.field private filepathShowThumbnail:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_show_thumbnail"
    .end annotation
.end field

.field private liveDate:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date"
    .end annotation
.end field

.field private navCategoryId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "nav_category_id"
    .end annotation
.end field

.field private showId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private tvplus:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tvplus"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/cbs/app/view/model/Classic$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/Classic$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/Classic;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/Classic;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method public static getCreator()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/Classic;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/cbs/app/view/model/Classic;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->title:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->createdDate:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->changedDate:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/Classic;->deviceRestriction:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->filepathShowLogo:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->filepathShowThumbnail:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->navCategoryId:Ljava/lang/String;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->liveDate:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->showId:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->type:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/Classic;->displayOrder:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/Classic;->category:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/Classic;->tvplus:I

    .line 234
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getChangedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->changedDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->createdDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRestriction()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/cbs/app/view/model/Classic;->deviceRestriction:I

    return v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/cbs/app/view/model/Classic;->displayOrder:I

    return v0
.end method

.method public getFilepathShowLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->filepathShowLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathShowThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->filepathShowThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->liveDate:Ljava/lang/String;

    return-object v0
.end method

.method public getNavCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->navCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->showId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTvplus()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/cbs/app/view/model/Classic;->tvplus:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->category:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setChangedDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->changedDate:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setCreatedDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->createdDate:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setDeviceRestriction(I)V
    .locals 0

    .prologue
    .line 129
    iput p1, p0, Lcom/cbs/app/view/model/Classic;->deviceRestriction:I

    .line 130
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lcom/cbs/app/view/model/Classic;->displayOrder:I

    .line 186
    return-void
.end method

.method public setFilepathShowLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->filepathShowLogo:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setFilepathShowThumbnail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->filepathShowThumbnail:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setLiveDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->liveDate:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setNavCategoryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->navCategoryId:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setShowId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->showId:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->title:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setTvplus(I)V
    .locals 0

    .prologue
    .line 217
    iput p1, p0, Lcom/cbs/app/view/model/Classic;->tvplus:I

    .line 218
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/cbs/app/view/model/Classic;->type:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->createdDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->changedDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget v0, p0, Lcom/cbs/app/view/model/Classic;->deviceRestriction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->filepathShowLogo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->filepathShowThumbnail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->navCategoryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->liveDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->showId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget v0, p0, Lcom/cbs/app/view/model/Classic;->displayOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v0, p0, Lcom/cbs/app/view/model/Classic;->category:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget v0, p0, Lcom/cbs/app/view/model/Classic;->tvplus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    return-void
.end method
