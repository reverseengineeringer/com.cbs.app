.class public Lcom/cbs/app/androiddata/model/rest/VideoSection;
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
            "Lcom/cbs/app/androiddata/model/rest/VideoSection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private b:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "itemCount"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "resultSize"
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "errors"
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
    .line 96
    new-instance v0, Lcom/cbs/app/androiddata/model/rest/VideoSection$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/rest/VideoSection$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->a:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->e:Ljava/util/List;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->a:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->e:Ljava/util/List;

    .line 89
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->a:Ljava/util/List;

    sget-object v1, Lcom/cbs/app/androiddata/model/VideoData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->b:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->c:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->d:J

    .line 93
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->e:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/cbs/app/androiddata/model/rest/VideoSection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Ljava/util/List;
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
    .line 66
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->e:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->b:J

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->a:Ljava/util/List;

    return-object v0
.end method

.method public getResultSize()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->d:J

    return-wide v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->c:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setErrors(Ljava/util/List;)V
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
    .line 70
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->e:Ljava/util/List;

    .line 71
    return-void
.end method

.method public setItemCount(J)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->b:J

    .line 47
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/cbs/app/androiddata/model/VideoData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->a:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setResultSize(J)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->d:J

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 82
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-wide v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/rest/VideoSection;->e:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 86
    return-void
.end method
