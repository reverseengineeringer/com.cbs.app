.class public Lcom/cbs/app/view/model/AssetCarouselItem;
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
        "Lcom/cbs/app/view/model/AssetCarouselItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/cbs/app/view/model/AssetCarouselItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x63039cc2d2270b9aL


# instance fields
.field private actionUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action_url"
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "appId"
    .end annotation
.end field

.field private device:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "device"
    .end annotation
.end field

.field private displayOrder:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_order"
    .end annotation
.end field

.field private filepath:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath"
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

.field private target:Ljava/util/ArrayList;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "target"
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

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/cbs/app/view/model/AssetCarouselItem$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/AssetCarouselItem$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/AssetCarouselItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/AssetCarouselItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->id:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->type:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->appId:Ljava/lang/String;

    .line 96
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->target:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->device:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->filepath:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->k:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->displayOrder:J

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->actionUrl:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cbs/app/view/model/AssetCarouselItem;)I
    .locals 4

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->displayOrder:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/cbs/app/view/model/AssetCarouselItem;->displayOrder:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/cbs/app/view/model/AssetCarouselItem;

    invoke-virtual {p0, p1}, Lcom/cbs/app/view/model/AssetCarouselItem;->compareTo(Lcom/cbs/app/view/model/AssetCarouselItem;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    instance-of v1, p1, Lcom/cbs/app/view/model/AssetCarouselItem;

    if-eqz v1, :cond_0

    .line 131
    check-cast p1, Lcom/cbs/app/view/model/AssetCarouselItem;

    .line 132
    invoke-virtual {p1}, Lcom/cbs/app/view/model/AssetCarouselItem;->getId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/cbs/app/view/model/AssetCarouselItem;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 133
    const/4 v0, 0x1

    .line 136
    :cond_0
    return v0
.end method

.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->displayOrder:J

    return-wide v0
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->filepath:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->id:J

    return-wide v0
.end method

.method public getK()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/util/ArrayList;
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
    .line 168
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->target:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x2b

    return v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->actionUrl:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->appId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->device:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setDisplayOrder(J)V
    .locals 1

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->displayOrder:J

    .line 197
    return-void
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->filepath:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->id:J

    .line 149
    return-void
.end method

.method public setK(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->k:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setTarget(Ljava/util/ArrayList;)V
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
    .line 172
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->target:Ljava/util/ArrayList;

    .line 173
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->type:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->target:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->device:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->filepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-wide v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->displayOrder:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetCarouselItem;->actionUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    return-void
.end method
