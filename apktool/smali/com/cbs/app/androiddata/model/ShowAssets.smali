.class public Lcom/cbs/app/androiddata/model/ShowAssets;
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
            "Lcom/cbs/app/androiddata/model/ShowAssets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_ott_sd_show_logo"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_ott_sd_show_image_overhang"
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_ott_hd_show_image_overhang"
    .end annotation
.end field

.field public d:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "filepath_ott_hd_show_logo"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/cbs/app/androiddata/model/ShowAssets$1;

    invoke-direct {v0}, Lcom/cbs/app/androiddata/model/ShowAssets$1;-><init>()V

    sput-object v0, Lcom/cbs/app/androiddata/model/ShowAssets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->a:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->b:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->c:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->d:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getFilepathOttHdShowImageOverhang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathOttHdShowLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathOttSdShowImageOverhang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getFilepathOttSdShowLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setFilepathOttHdShowImageOverhang(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->c:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFilepathOttHdShowLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->d:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setFilepathOttSdShowImageOverhang(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->b:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setFilepathOttSdShowLogo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->a:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/cbs/app/androiddata/model/ShowAssets;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
