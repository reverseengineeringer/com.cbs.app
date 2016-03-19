.class public Lcom/visualon/OSMPUtils/voOSOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voOSOption$eVoOption;
    }
.end annotation


# static fields
.field public static final OPTION_DECODE_DISABLE_DEBLOCK:J = 0x1L

.field public static final OPTION_DECODE_DOLBY:J = 0x1L

.field public static final OPTION_RENDERTYPE_NATIVE:J = 0x1L

.field public static final OPTION_RENDERTYPE_OPENGL:J = 0x4L

.field public static final OPTION_VIDEO_EFFECT_CLOSE_CAPTION:J = 0x1L

.field public static final OPTION_VIDEO_EFFECT_CLOSE_CAPTION_ON:J = 0x1L


# instance fields
.field mType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

.field mValue:J


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPUtils/voOSOption$eVoOption;J)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/visualon/OSMPUtils/voOSOption$eVoOption;->eoNone:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voOSOption;->mType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visualon/OSMPUtils/voOSOption;->mValue:J

    .line 96
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voOSOption;->mType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    .line 97
    iput-wide p2, p0, Lcom/visualon/OSMPUtils/voOSOption;->mValue:J

    .line 98
    return-void
.end method

.method public static make(Lcom/visualon/OSMPUtils/voOSOption$eVoOption;J)Lcom/visualon/OSMPUtils/voOSOption;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/visualon/OSMPUtils/voOSOption;

    invoke-direct {v0, p0, p1, p2}, Lcom/visualon/OSMPUtils/voOSOption;-><init>(Lcom/visualon/OSMPUtils/voOSOption$eVoOption;J)V

    .line 106
    return-object v0
.end method


# virtual methods
.method public getType()Lcom/visualon/OSMPUtils/voOSOption$eVoOption;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voOSOption;->mType:Lcom/visualon/OSMPUtils/voOSOption$eVoOption;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/visualon/OSMPUtils/voOSOption;->mValue:J

    return-wide v0
.end method

.method public readConfig(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visualon/OSMPUtils/voOSOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
