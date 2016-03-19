.class public Lcom/cbs/app/view/model/ConnectArchive;
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
            "Lcom/cbs/app/view/model/ConnectArchive;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x13329ec0e9a3d3e9L


# instance fields
.field private actionUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action_url"
    .end annotation
.end field

.field private archiveType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "archive_type"
    .end annotation
.end field

.field private blogSearchField:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "blog_search_field"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private changedDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "changed_date"
    .end annotation
.end field

.field private copy:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "copy"
    .end annotation
.end field

.field private createdDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_date"
    .end annotation
.end field

.field description:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation
.end field

.field private embedCode:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "embed_code"
    .end annotation
.end field

.field private eventDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event_date"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field private image262x122:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "262x122_image"
    .end annotation
.end field

.field private image270x170:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "270x170_image"
    .end annotation
.end field

.field private image367x170:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "367x170image"
    .end annotation
.end field

.field private image430x170:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "430x170_image"
    .end annotation
.end field

.field private image515x315:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "515x350_image"
    .end annotation
.end field

.field private image575x250:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "575x250_image"
    .end annotation
.end field

.field private image890x250:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "890x250_image"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "k"
    .end annotation
.end field

.field private liveDate:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "live_date"
    .end annotation
.end field

.field pid:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pid"
    .end annotation
.end field

.field private showId:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_id"
    .end annotation
.end field

.field private text:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "text"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textSpellField:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "text_spell_field"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
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

.field private typeTextField:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type_text_field"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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
    .line 60
    new-instance v0, Lcom/cbs/app/view/model/ConnectArchive$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/ConnectArchive$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/ConnectArchive;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/ConnectArchive;->readFromParcel(Landroid/os/Parcel;)V

    .line 188
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->createdDate:J

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image430x170:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->changedDate:J

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->pid:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->showId:J

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->liveDate:J

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->type:Ljava/lang/String;

    .line 200
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->text:Ljava/util/ArrayList;

    .line 201
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->typeTextField:Ljava/util/ArrayList;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image890x250:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image367x170:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->k:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image270x170:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->id:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->archiveType:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->title:Ljava/lang/String;

    .line 209
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->textSpellField:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image262x122:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image515x315:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->description:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->eventDate:J

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image575x250:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->embedCode:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->actionUrl:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->copy:Ljava/lang/String;

    .line 218
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->blogSearchField:Ljava/util/ArrayList;

    .line 219
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getArchiveType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->archiveType:Ljava/lang/String;

    return-object v0
.end method

.method public getBlogSearchField()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->blogSearchField:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChangedDate()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->changedDate:J

    return-wide v0
.end method

.method public getCopy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->copy:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedDate()J
    .locals 2

    .prologue
    .line 259
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->createdDate:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->embedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEventDate()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->eventDate:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage262x122()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image262x122:Ljava/lang/String;

    return-object v0
.end method

.method public getImage270x170()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image270x170:Ljava/lang/String;

    return-object v0
.end method

.method public getImage367x170()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image367x170:Ljava/lang/String;

    return-object v0
.end method

.method public getImage430x170()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image430x170:Ljava/lang/String;

    return-object v0
.end method

.method public getImage515x315()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image515x315:Ljava/lang/String;

    return-object v0
.end method

.method public getImage575x250()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image575x250:Ljava/lang/String;

    return-object v0
.end method

.method public getImage890x250()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image890x250:Ljava/lang/String;

    return-object v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveDate()J
    .locals 2

    .prologue
    .line 299
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->liveDate:J

    return-wide v0
.end method

.method public getPid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->pid:Ljava/lang/String;

    return-object v0
.end method

.method public getShowId()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->showId:J

    return-wide v0
.end method

.method public getText()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->text:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTextSpellField()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->textSpellField:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeTextField()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->typeTextField:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->actionUrl:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setArchiveType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->archiveType:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setBlogSearchField(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->blogSearchField:Ljava/util/ArrayList;

    .line 464
    return-void
.end method

.method public setChangedDate(J)V
    .locals 1

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->changedDate:J

    .line 280
    return-void
.end method

.method public setCopy(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->copy:Ljava/lang/String;

    .line 456
    return-void
.end method

.method public setCreatedDate(J)V
    .locals 1

    .prologue
    .line 263
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->createdDate:J

    .line 264
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->description:Ljava/lang/String;

    .line 416
    return-void
.end method

.method public setEmbedCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->embedCode:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setEventDate(J)V
    .locals 1

    .prologue
    .line 423
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->eventDate:J

    .line 424
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->id:Ljava/lang/String;

    .line 368
    return-void
.end method

.method public setImage262x122(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->image262x122:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setImage270x170(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->image270x170:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setImage367x170(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->image367x170:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setImage430x170(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->image430x170:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setImage515x315(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->image515x315:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setImage575x250(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->image575x250:Ljava/lang/String;

    .line 432
    return-void
.end method

.method public setImage890x250(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->image890x250:Ljava/lang/String;

    .line 336
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->k:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setLiveDate(J)V
    .locals 1

    .prologue
    .line 303
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->liveDate:J

    .line 304
    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->pid:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setShowId(J)V
    .locals 1

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->showId:J

    .line 296
    return-void
.end method

.method public setText(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->text:Ljava/util/ArrayList;

    .line 320
    return-void
.end method

.method public setTextSpellField(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->textSpellField:Ljava/util/ArrayList;

    .line 392
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->title:Ljava/lang/String;

    .line 384
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->type:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setTypeTextField(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    iput-object p1, p0, Lcom/cbs/app/view/model/ConnectArchive;->typeTextField:Ljava/util/ArrayList;

    .line 328
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->createdDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 224
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image430x170:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->changedDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 226
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->pid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->showId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 228
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->liveDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 229
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->text:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 231
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->typeTextField:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 232
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image890x250:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image367x170:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image270x170:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->archiveType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->textSpellField:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 240
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image262x122:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image515x315:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-wide v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->eventDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 244
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->image575x250:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->embedCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->copy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/cbs/app/view/model/ConnectArchive;->blogSearchField:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 250
    return-void
.end method
