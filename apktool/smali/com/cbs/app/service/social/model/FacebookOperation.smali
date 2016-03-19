.class public Lcom/cbs/app/service/social/model/FacebookOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/cbs/app/service/social/model/FBLink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/cbs/app/service/social/model/FacebookOperation$1;

    invoke-direct {v0}, Lcom/cbs/app/service/social/model/FacebookOperation$1;-><init>()V

    sput-object v0, Lcom/cbs/app/service/social/model/FacebookOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->d:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->e:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->f:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->g:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->h:Ljava/lang/String;

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->a:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->d:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->e:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->f:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->g:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->h:Ljava/lang/String;

    .line 1133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->a:I

    .line 1134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->c:Ljava/lang/String;

    .line 1135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->b:Ljava/lang/String;

    .line 1136
    const-class v0, Lcom/cbs/app/service/social/model/FBLink;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/service/social/model/FBLink;

    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->i:Lcom/cbs/app/service/social/model/FBLink;

    .line 1137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->d:Ljava/lang/String;

    .line 1138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->e:Ljava/lang/String;

    .line 1139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->f:Ljava/lang/String;

    .line 1140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->g:Ljava/lang/String;

    .line 1141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->h:Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getChoice()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->a:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getFBLink()Lcom/cbs/app/service/social/model/FBLink;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->i:Lcom/cbs/app/service/social/model/FBLink;

    return-object v0
.end method

.method public getFacebookLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->g:Ljava/lang/String;

    return-object v0
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->f:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->e:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setFacebookLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->h:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->c:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->d:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setPictureLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->g:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->i:Lcom/cbs/app/service/social/model/FBLink;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/cbs/app/service/social/model/FacebookOperation;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    return-void
.end method
