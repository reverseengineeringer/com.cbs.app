.class public final enum Lcom/adobe/adobepass/accessenabler/a/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/adobepass/accessenabler/a/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adobe/adobepass/accessenabler/a/a$a;

.field public static final enum b:Lcom/adobe/adobepass/accessenabler/a/a$a;

.field public static final enum c:Lcom/adobe/adobepass/accessenabler/a/a$a;

.field private static final synthetic d:[Lcom/adobe/adobepass/accessenabler/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/a$a;

    const-string v1, "AUTHN_PER_REQUESTOR"

    invoke-direct {v0, v1, v2}, Lcom/adobe/adobepass/accessenabler/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/a/a$a;->a:Lcom/adobe/adobepass/accessenabler/a/a$a;

    .line 57
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/a$a;

    const-string v1, "NON_AUTHN_PER_REQUESTOR"

    invoke-direct {v0, v1, v3}, Lcom/adobe/adobepass/accessenabler/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/a/a$a;->b:Lcom/adobe/adobepass/accessenabler/a/a$a;

    .line 58
    new-instance v0, Lcom/adobe/adobepass/accessenabler/a/a$a;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v4}, Lcom/adobe/adobepass/accessenabler/a/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/adobepass/accessenabler/a/a$a;->c:Lcom/adobe/adobepass/accessenabler/a/a$a;

    .line 55
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/adobepass/accessenabler/a/a$a;

    sget-object v1, Lcom/adobe/adobepass/accessenabler/a/a$a;->a:Lcom/adobe/adobepass/accessenabler/a/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/adobepass/accessenabler/a/a$a;->b:Lcom/adobe/adobepass/accessenabler/a/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/adobepass/accessenabler/a/a$a;->c:Lcom/adobe/adobepass/accessenabler/a/a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/adobepass/accessenabler/a/a$a;->d:[Lcom/adobe/adobepass/accessenabler/a/a$a;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/adobepass/accessenabler/a/a$a;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/adobe/adobepass/accessenabler/a/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/adobepass/accessenabler/a/a$a;

    return-object v0
.end method

.method public static values()[Lcom/adobe/adobepass/accessenabler/a/a$a;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/adobe/adobepass/accessenabler/a/a$a;->d:[Lcom/adobe/adobepass/accessenabler/a/a$a;

    invoke-virtual {v0}, [Lcom/adobe/adobepass/accessenabler/a/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/adobepass/accessenabler/a/a$a;

    return-object v0
.end method
