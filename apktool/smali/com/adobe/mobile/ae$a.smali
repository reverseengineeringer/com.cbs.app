.class public final enum Lcom/adobe/mobile/ae$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/mobile/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/mobile/ae$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/adobe/mobile/ae$a;

.field public static final enum b:Lcom/adobe/mobile/ae$a;

.field public static final enum c:Lcom/adobe/mobile/ae$a;

.field public static final enum d:Lcom/adobe/mobile/ae$a;

.field private static final synthetic f:[Lcom/adobe/mobile/ae$a;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/adobe/mobile/ae$a;

    const-string v1, "MESSAGE_SHOW_RULE_UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/mobile/ae$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/ae$a;->a:Lcom/adobe/mobile/ae$a;

    .line 55
    new-instance v0, Lcom/adobe/mobile/ae$a;

    const-string v1, "MESSAGE_SHOW_RULE_ALWAYS"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/mobile/ae$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/ae$a;->b:Lcom/adobe/mobile/ae$a;

    .line 56
    new-instance v0, Lcom/adobe/mobile/ae$a;

    const-string v1, "MESSAGE_SHOW_RULE_ONCE"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/mobile/ae$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/ae$a;->c:Lcom/adobe/mobile/ae$a;

    .line 57
    new-instance v0, Lcom/adobe/mobile/ae$a;

    const-string v1, "MESSAGE_SHOW_RULE_UNTIL_CLICK"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/mobile/ae$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/mobile/ae$a;->d:Lcom/adobe/mobile/ae$a;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/mobile/ae$a;

    sget-object v1, Lcom/adobe/mobile/ae$a;->a:Lcom/adobe/mobile/ae$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/mobile/ae$a;->b:Lcom/adobe/mobile/ae$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/mobile/ae$a;->c:Lcom/adobe/mobile/ae$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/mobile/ae$a;->d:Lcom/adobe/mobile/ae$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/mobile/ae$a;->f:[Lcom/adobe/mobile/ae$a;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput p3, p0, Lcom/adobe/mobile/ae$a;->e:I

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/mobile/ae$a;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/adobe/mobile/ae$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/mobile/ae$a;

    return-object v0
.end method

.method public static values()[Lcom/adobe/mobile/ae$a;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/adobe/mobile/ae$a;->f:[Lcom/adobe/mobile/ae$a;

    invoke-virtual {v0}, [Lcom/adobe/mobile/ae$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/mobile/ae$a;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/adobe/mobile/ae$a;->e:I

    return v0
.end method
