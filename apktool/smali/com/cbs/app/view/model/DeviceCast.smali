.class public Lcom/cbs/app/view/model/DeviceCast;
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
            "Lcom/cbs/app/view/model/DeviceCast;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6d150eb1c9f4bbbdL


# instance fields
.field private bio:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bio"
    .end annotation
.end field

.field private bioType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bio_type"
    .end annotation
.end field

.field private characterBio:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "charecter_bio"
    .end annotation
.end field

.field private characterName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "charecter_name"
    .end annotation
.end field

.field private displayOrder:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_order"
    .end annotation
.end field

.field private filepathIPadCastCarouselLandscape:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_ipad_cast_carousel_land"
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

.field private filepathIPadCastCarouselPortrait:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_ipad_cast_carousel_port"
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

.field private filepathIPadThumb:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_ipad_thumb"
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

.field private filepathIPhoneCastCarousel:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_iphone_cast_carousel"
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

.field private filepathIPhoneThumb:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_iphone_thumb"
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

.field private id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private keywordList:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "keywords"
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

.field private seasonNumber:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "season"
    .end annotation
.end field

.field private showId:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private twitterScreenName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twitter_screen_name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/cbs/app/view/model/DeviceCast$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/DeviceCast$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/DeviceCast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneThumb:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadThumb:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselLandscape:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselPortrait:Ljava/util/List;

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneThumb:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadThumb:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselLandscape:Ljava/util/List;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselPortrait:Ljava/util/List;

    .line 147
    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/DeviceCast;->readFromParcel(Landroid/os/Parcel;)V

    .line 148
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->bio:Ljava/lang/String;

    return-object v0
.end method

.method public getBioType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->bioType:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->characterBio:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->characterName:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/cbs/app/view/model/DeviceCast;->displayOrder:I

    return v0
.end method

.method public getFilepathIPadCastCarouselLandscape()Ljava/util/List;
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
    .line 263
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselLandscape:Ljava/util/List;

    return-object v0
.end method

.method public getFilepathIPadCastCarouselPortrait()Ljava/util/List;
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
    .line 271
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselPortrait:Ljava/util/List;

    return-object v0
.end method

.method public getFilepathIPadThumb()Ljava/util/List;
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
    .line 255
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadThumb:Ljava/util/List;

    return-object v0
.end method

.method public getFilepathIPhoneCastCarousel()Ljava/util/List;
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
    .line 247
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneCastCarousel:Ljava/util/List;

    return-object v0
.end method

.method public getFilepathIPhoneThumb()Ljava/util/List;
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
    .line 239
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneThumb:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/cbs/app/view/model/DeviceCast;->id:I

    return v0
.end method

.method public getKeywordList()Ljava/util/List;
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
    .line 207
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->keywordList:Ljava/util/List;

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/cbs/app/view/model/DeviceCast;->seasonNumber:I

    return v0
.end method

.method public getShowId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->showId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->twitterScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/DeviceCast;->id:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->title:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->characterName:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->characterBio:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->showId:Ljava/lang/Integer;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->twitterScreenName:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/DeviceCast;->seasonNumber:I

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->keywordList:Ljava/util/List;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->bioType:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->bio:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/view/model/DeviceCast;->displayOrder:I

    .line 323
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneThumb:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 325
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneCastCarousel:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 327
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneCastCarousel:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 329
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselLandscape:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 331
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselPortrait:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 333
    return-void
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->bio:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setBioType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->bioType:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setCharacterBio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->characterBio:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setCharacterName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->characterName:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0

    .prologue
    .line 235
    iput p1, p0, Lcom/cbs/app/view/model/DeviceCast;->displayOrder:I

    .line 236
    return-void
.end method

.method public setFilepathIPadCastCarouselLandscape(Ljava/util/List;)V
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
    .line 267
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselLandscape:Ljava/util/List;

    .line 268
    return-void
.end method

.method public setFilepathIPadCastCarouselPortrait(Ljava/util/List;)V
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
    .line 275
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselPortrait:Ljava/util/List;

    .line 276
    return-void
.end method

.method public setFilepathIPadThumb(Ljava/util/List;)V
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
    .line 259
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadThumb:Ljava/util/List;

    .line 260
    return-void
.end method

.method public setFilepathIPhoneCastCarousel(Ljava/util/List;)V
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
    .line 251
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneCastCarousel:Ljava/util/List;

    .line 252
    return-void
.end method

.method public setFilepathIPhoneThumb(Ljava/util/List;)V
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
    .line 243
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneThumb:Ljava/util/List;

    .line 244
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 155
    iput p1, p0, Lcom/cbs/app/view/model/DeviceCast;->id:I

    .line 156
    return-void
.end method

.method public setKeywordList(Ljava/util/List;)V
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
    .line 211
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->keywordList:Ljava/util/List;

    .line 212
    return-void
.end method

.method public setSeasonNumber(I)V
    .locals 0

    .prologue
    .line 203
    iput p1, p0, Lcom/cbs/app/view/model/DeviceCast;->seasonNumber:I

    .line 204
    return-void
.end method

.method public setShowId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->showId:Ljava/lang/Integer;

    .line 188
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->title:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTwitterScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/cbs/app/view/model/DeviceCast;->twitterScreenName:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/cbs/app/view/model/DeviceCast;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->characterName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->characterBio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->showId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->twitterScreenName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget v0, p0, Lcom/cbs/app/view/model/DeviceCast;->seasonNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->keywordList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 296
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->bioType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->bio:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lcom/cbs/app/view/model/DeviceCast;->displayOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneThumb:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPhoneCastCarousel:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 303
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadThumb:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselLandscape:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 307
    iget-object v0, p0, Lcom/cbs/app/view/model/DeviceCast;->filepathIPadCastCarouselPortrait:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 309
    return-void
.end method
