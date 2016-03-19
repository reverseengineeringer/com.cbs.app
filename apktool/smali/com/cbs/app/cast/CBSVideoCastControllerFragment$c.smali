.class final enum Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/cast/CBSVideoCastControllerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

.field public static final enum b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

.field public static final enum c:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

.field private static final synthetic d:[Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 657
    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    const-string v1, "AUTHORIZING"

    invoke-direct {v0, v1, v2}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    const-string v1, "PLAYBACK"

    invoke-direct {v0, v1, v3}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    new-instance v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->c:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    .line 656
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    sget-object v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->a:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->b:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->c:Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->d:[Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

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
    .line 656
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;
    .locals 1

    .prologue
    .line 656
    const-class v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    return-object v0
.end method

.method public static values()[Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->d:[Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    invoke-virtual {v0}, [Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cbs/app/cast/CBSVideoCastControllerFragment$c;

    return-object v0
.end method
