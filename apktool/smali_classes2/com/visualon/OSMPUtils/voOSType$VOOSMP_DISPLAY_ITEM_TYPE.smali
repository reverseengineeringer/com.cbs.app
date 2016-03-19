.class public final enum Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPUtils/voOSType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VOOSMP_DISPLAY_ITEM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_NULL_LINE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_SUB_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_TITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

.field public static final enum VOOSMP_ITEM_TOP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1981
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v1, "VOOSMP_ITEM_NULL_LINE"

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_NULL_LINE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 1982
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v1, "VOOSMP_ITEM_TOP"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_TOP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 1983
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v1, "VOOSMP_ITEM_TITLE"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_TITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 1984
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v1, "VOOSMP_ITEM_ATTRIBUTE"

    invoke-direct {v0, v1, v5, v5}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 1985
    new-instance v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    const-string v1, "VOOSMP_ITEM_SUB_ATTRIBUTE"

    invoke-direct {v0, v1, v6, v6}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_SUB_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    .line 1980
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_NULL_LINE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_TOP:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_TITLE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_SUB_ATTRIBUTE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1990
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1991
    iput p3, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->value:I

    .line 1992
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2001
    invoke-static {}, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 2003
    iget v5, v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->value:I

    if-ne v5, p0, :cond_0

    .line 2008
    :goto_1
    return-object v0

    .line 2001
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2007
    :cond_1
    const-string v0, "@@@voOSType"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "VOOSMP_DISPLAY_ITEM_TYPE does not match. id = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2008
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->VOOSMP_ITEM_NULL_LINE:Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
    .locals 1

    .prologue
    .line 1980
    const-class v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;
    .locals 1

    .prologue
    .line 1980
    sget-object v0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->$VALUES:[Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    invoke-virtual {v0}, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 1996
    iget v0, p0, Lcom/visualon/OSMPUtils/voOSType$VOOSMP_DISPLAY_ITEM_TYPE;->value:I

    return v0
.end method
