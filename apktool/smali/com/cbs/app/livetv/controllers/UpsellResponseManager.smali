.class public Lcom/cbs/app/livetv/controllers/UpsellResponseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;

.field private static c:Lcom/cbs/app/view/model/UpsellInfo;


# instance fields
.field b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/cbs/app/livetv/controllers/UpsellResponseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cbs/app/livetv/controllers/UpsellResponseManager;->a:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/cbs/app/livetv/controllers/UpsellResponseManager;->c:Lcom/cbs/app/view/model/UpsellInfo;

    return-void
.end method


# virtual methods
.method public getItemsNeeded()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/cbs/app/livetv/controllers/UpsellResponseManager;->b:Landroid/os/Bundle;

    return-object v0
.end method
