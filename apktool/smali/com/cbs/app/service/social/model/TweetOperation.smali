.class public Lcom/cbs/app/service/social/model/TweetOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/cbs/app/service/social/model/TweetOperation$1;

    invoke-direct {v0}, Lcom/cbs/app/service/social/model/TweetOperation$1;-><init>()V

    sput-object v0, Lcom/cbs/app/service/social/model/TweetOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x5

    iput v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->a:I

    .line 58
    iput-wide p1, p0, Lcom/cbs/app/service/social/model/TweetOperation;->b:J

    .line 59
    iput-object p4, p0, Lcom/cbs/app/service/social/model/TweetOperation;->c:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/cbs/app/service/social/model/TweetOperation;->e:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->a:I

    .line 1121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->c:Ljava/lang/String;

    .line 1122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->d:Ljava/lang/String;

    .line 1123
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->b:J

    .line 1124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->e:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->a:I

    .line 53
    iput-object p1, p0, Lcom/cbs/app/service/social/model/TweetOperation;->c:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getChoice()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->a:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->b:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyToAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/cbs/app/service/social/model/TweetOperation;->b:J

    .line 108
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/cbs/app/service/social/model/TweetOperation;->c:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/cbs/app/service/social/model/TweetOperation;->d:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-wide v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-object v0, p0, Lcom/cbs/app/service/social/model/TweetOperation;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    return-void
.end method
