.class public Lcom/cbs/app/androiddata/model/DeviceCast;
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
            "Lcom/cbs/app/androiddata/model/DeviceCast;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "charecter_name"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "charecter_bio"
    .end annotation
.end field

.field private e:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twitter_screen_name"
    .end annotation
.end field

.field private g:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "season"
    .end annotation
.end field

.field private h:Ljava/util/List;
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

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bio_type"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bio"
    .end annotation
.end field

.field private k:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_order"
    .end annotation
.end field

.field private l:Ljava/util/List;
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

.field private m:Ljava/util/List;
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

.field private n:Ljava/util/List;
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

.field private o:Ljava/util/List;
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

.field private p:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/cbs/app/androiddata/model/DeviceCast$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/DeviceCast$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/DeviceCast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->a:I

    .line 1221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->b:Ljava/lang/String;

    .line 1222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->c:Ljava/lang/String;

    .line 1223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->d:Ljava/lang/String;

    .line 1224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->e:Ljava/lang/Integer;

    .line 1225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->f:Ljava/lang/String;

    .line 1226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->g:I

    .line 1227
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->h:Ljava/util/List;

    .line 1228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->i:Ljava/lang/String;

    .line 1229
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->j:Ljava/lang/String;

    .line 1230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->k:I

    .line 1231
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->l:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1233
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->m:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1235
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->m:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1237
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->o:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1239
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->p:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 184
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public getBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getBioType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->k:I

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
    .line 167
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->o:Ljava/util/List;

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
    .line 175
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->p:Ljava/util/List;

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
    .line 159
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->n:Ljava/util/List;

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
    .line 151
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->m:Ljava/util/List;

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
    .line 143
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->l:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->a:I

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
    .line 111
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->h:Ljava/util/List;

    return-object v0
.end method

.method public getSeasonNumber()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->g:I

    return v0
.end method

.method public getShowId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->f:Ljava/lang/String;

    return-object v0
.end method

.method public setBio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->j:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setBioType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->i:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setCharacterBio(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->d:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCharacterName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->c:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0

    .prologue
    .line 139
    iput p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->k:I

    .line 140
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
    .line 171
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->o:Ljava/util/List;

    .line 172
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
    .line 179
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->p:Ljava/util/List;

    .line 180
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
    .line 163
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->n:Ljava/util/List;

    .line 164
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
    .line 155
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->m:Ljava/util/List;

    .line 156
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
    .line 147
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->l:Ljava/util/List;

    .line 148
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->a:I

    .line 60
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
    .line 115
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->h:Ljava/util/List;

    .line 116
    return-void
.end method

.method public setSeasonNumber(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->g:I

    .line 108
    return-void
.end method

.method public setShowId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->e:Ljava/lang/Integer;

    .line 92
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->b:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setTwitterScreenName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->f:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->h:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->l:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 209
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->m:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 211
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->n:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->o:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/DeviceCast;->p:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 217
    return-void
.end method
