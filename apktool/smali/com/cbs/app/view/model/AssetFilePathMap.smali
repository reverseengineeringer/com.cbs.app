.class public Lcom/cbs/app/view/model/AssetFilePathMap;
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
            "Lcom/cbs/app/view/model/AssetFilePathMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1e240L


# instance fields
.field private filepath_show_home_page_landscape_background:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_show_home_page_landscape_background"
    .end annotation
.end field

.field private filepath_show_home_page_portrait_background:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_show_home_page_portrait_background"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/cbs/app/view/model/AssetFilePathMap$1;

    invoke-direct {v0}, Lcom/cbs/app/view/model/AssetFilePathMap$1;-><init>()V

    sput-object v0, Lcom/cbs/app/view/model/AssetFilePathMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-direct {p0, p1}, Lcom/cbs/app/view/model/AssetFilePathMap;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetFilePathMap;->filepath_show_home_page_landscape_background:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/view/model/AssetFilePathMap;->filepath_show_home_page_portrait_background:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getFilepath_show_home_page_landscape_background()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetFilePathMap;->filepath_show_home_page_landscape_background:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepath_show_home_page_portrait_background()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetFilePathMap;->filepath_show_home_page_portrait_background:Ljava/lang/String;

    return-object v0
.end method

.method public setFilepath_show_home_page_landscape_background(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetFilePathMap;->filepath_show_home_page_landscape_background:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setFilepath_show_home_page_portrait_background(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/cbs/app/view/model/AssetFilePathMap;->filepath_show_home_page_portrait_background:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetFilePathMap;->filepath_show_home_page_landscape_background:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/cbs/app/view/model/AssetFilePathMap;->filepath_show_home_page_portrait_background:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return-void
.end method
