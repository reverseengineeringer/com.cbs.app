.class final Lcom/adobe/mobile/ao$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/ao;->b()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/mobile/ao;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/ao;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/adobe/mobile/ao$3;->a:Lcom/adobe/mobile/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    .line 1251
    iget-object v0, p0, Lcom/adobe/mobile/ao$3;->a:Lcom/adobe/mobile/ao;

    invoke-static {v0}, Lcom/adobe/mobile/ao;->c(Lcom/adobe/mobile/ao;)Ljava/lang/String;

    move-result-object v0

    .line 248
    return-object v0
.end method
