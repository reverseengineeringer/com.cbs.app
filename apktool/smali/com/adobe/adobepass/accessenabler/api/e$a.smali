.class public final enum Lcom/adobe/adobepass/accessenabler/api/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/api/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/adobepass/accessenabler/api/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adobe/adobepass/accessenabler/api/e$a;

.field public static final enum b:Lcom/adobe/adobepass/accessenabler/api/e$a;

.field private static final synthetic c:[Lcom/adobe/adobepass/accessenabler/api/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/e$a;

    const-string v1, "PASSIVE_IN_PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/adobe/adobepass/accessenabler/api/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    .line 45
    new-instance v0, Lcom/adobe/adobepass/accessenabler/api/e$a;

    const-string v1, "PASSIVE_STOPPED"

    invoke-direct {v0, v1, v3}, Lcom/adobe/adobepass/accessenabler/api/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/api/e$a;->b:Lcom/adobe/adobepass/accessenabler/api/e$a;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/adobepass/accessenabler/api/e$a;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/e$a;->a:Lcom/adobe/adobepass/accessenabler/api/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/adobepass/accessenabler/api/e$a;->b:Lcom/adobe/adobepass/accessenabler/api/e$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/adobepass/accessenabler/api/e$a;->c:[Lcom/adobe/adobepass/accessenabler/api/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/api/e$a;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/adobe/adobepass/accessenabler/api/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/api/e$a;

    return-object v0
.end method

.method public static values()[Lcom/adobe/adobepass/accessenabler/api/e$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/adobe/adobepass/accessenabler/api/e$a;->c:[Lcom/adobe/adobepass/accessenabler/api/e$a;

    invoke-virtual {v0}, [Lcom/adobe/adobepass/accessenabler/api/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/adobepass/accessenabler/api/e$a;

    return-object v0
.end method
