.class public final enum Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HAlignmentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

.field public static final enum CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

.field public static final enum LEFT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

.field public static final enum NONE:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

.field public static final enum RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2, v2}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->LEFT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    .line 13
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3, v3}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    .line 14
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4, v4}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    .line 15
    new-instance v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5, v2}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->NONE:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->LEFT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->RIGHT:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->NONE:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->$VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(I)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;
    .locals 2

    .prologue
    .line 28
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->values()[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 30
    invoke-static {}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->values()[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->getValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 31
    invoke-static {}, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->values()[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    move-result-object v1

    aget-object v0, v1, v0

    .line 34
    :goto_1
    return-object v0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_1
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->CENTER:Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    return-object v0
.end method

.method public static values()[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->$VALUES:[Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    invoke-virtual {v0}, [Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/visualon/OSMPSubTitle/DataObject/JSSubTitleObject$HAlignmentType;->value:I

    return v0
.end method
