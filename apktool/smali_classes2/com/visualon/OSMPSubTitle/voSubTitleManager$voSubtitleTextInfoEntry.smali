.class public Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/voSubTitleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "voSubtitleTextInfoEntry"
.end annotation


# instance fields
.field private stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

.field private stringText:Ljava/lang/String;

.field final synthetic this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;


# direct methods
.method private constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V
    .locals 3

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1554
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    .line 1555
    new-instance v0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    .line 1559
    return-void
.end method

.method synthetic constructor <init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V
    .locals 0

    .prologue
    .line 1535
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 1535
    iput-object p1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;Landroid/os/Parcel;)Z
    .locals 1

    .prologue
    .line 1535
    invoke-direct {p0, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->parse(Landroid/os/Parcel;)Z

    move-result v0

    return v0
.end method

.method private parse(Landroid/os/Parcel;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1563
    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 1564
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1606
    :cond_0
    :goto_0
    return v0

    .line 1567
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 1569
    if-lez v2, :cond_4

    .line 1570
    new-array v3, v2, [B

    .line 1571
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    move v1, v0

    .line 1572
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1573
    aget-byte v4, v3, v1

    .line 1574
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v3, v5

    aput-byte v5, v3, v1

    .line 1575
    add-int/lit8 v5, v1, 0x1

    aput-byte v4, v3, v5

    .line 1572
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 1578
    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "utf-16"

    invoke-direct {v1, v3, v4, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    .line 1579
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1580
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    .line 1581
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    .line 1583
    :cond_3
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    if-eqz v1, :cond_4

    .line 1584
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v1, v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->removeBlanks:Ljava/lang/String;
    invoke-static {v1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$5300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1585
    if-lez v1, :cond_4

    .line 1587
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->removeBlanks:Ljava/lang/String;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$5300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]+$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1588
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    .line 1589
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    iget-object v2, v2, Lcom/visualon/OSMPSubTitle/voSubTitleManager;->settings:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;

    # getter for: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->removeBlanks:Ljava/lang/String;
    invoke-static {v2}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;->access$5300(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubTitleFormatSettingImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1590
    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1602
    :cond_4
    :goto_2
    new-instance v1, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    iget-object v2, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->this$0:Lcom/visualon/OSMPSubTitle/voSubTitleManager;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;-><init>(Lcom/visualon/OSMPSubTitle/voSubTitleManager;Lcom/visualon/OSMPSubTitle/voSubTitleManager$1;)V

    iput-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    .line 1603
    iget-object v1, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    # invokes: Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->parse(Landroid/os/Parcel;)Z
    invoke-static {v1, p1}, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;->access$5400(Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;Landroid/os/Parcel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1606
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1592
    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1598
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getStringInfo()Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringInfo:Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleStringInfo;

    return-object v0
.end method

.method public getStringText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/visualon/OSMPSubTitle/voSubTitleManager$voSubtitleTextInfoEntry;->stringText:Ljava/lang/String;

    return-object v0
.end method
