.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleFontInfo"
.end annotation


# instance fields
.field private fontColor:I

.field private fontSize:I

.field private fontStyle:I

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1171
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1167
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I

    .line 1168
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontStyle:I

    .line 1169
    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontColor:I

    .line 1172
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;)I
    .locals 1

    .prologue
    .line 1132
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontColor:I

    return v0
.end method

.method static synthetic access$2402(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;I)I
    .locals 0

    .prologue
    .line 1132
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontColor:I

    return p1
.end method

.method static synthetic access$2500(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;)I
    .locals 1

    .prologue
    .line 1132
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I

    return v0
.end method

.method static synthetic access$2502(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;I)I
    .locals 0

    .prologue
    .line 1132
    iput p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I

    return p1
.end method

.method static synthetic access$5000(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1132
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;)I
    .locals 1

    .prologue
    .line 1132
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontStyle:I

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1176
    const/16 v2, 0x6b

    if-eq v1, v2, :cond_1

    .line 1177
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1196
    :cond_0
    :goto_0
    return v0

    .line 1180
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1181
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I

    .line 1187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontStyle:I

    .line 1189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontColor:I

    .line 1196
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getFontColor()I
    .locals 1

    .prologue
    .line 1164
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 1139
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontSize:I

    return v0
.end method

.method public getFontStyle()I
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleFontInfo;->fontStyle:I

    return v0
.end method
