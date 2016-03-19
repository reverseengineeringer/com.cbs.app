.class final Lcom/adobe/mobile/af$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/af;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/mobile/af;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/af;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/adobe/mobile/af$1;->a:Lcom/adobe/mobile/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/adobe/mobile/af$1;->a:Lcom/adobe/mobile/af;

    invoke-static {v0}, Lcom/adobe/mobile/af;->a(Lcom/adobe/mobile/af;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/mobile/af$1;->a:Lcom/adobe/mobile/af;

    invoke-static {v0}, Lcom/adobe/mobile/af;->a(Lcom/adobe/mobile/af;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/adobe/mobile/af$1;->a:Lcom/adobe/mobile/af;

    invoke-static {v0}, Lcom/adobe/mobile/af;->b(Lcom/adobe/mobile/af;)V

    .line 553
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/adobe/mobile/af$1;->a:Lcom/adobe/mobile/af;

    invoke-static {v0}, Lcom/adobe/mobile/af;->a(Lcom/adobe/mobile/af;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/af$1$1;

    invoke-direct {v1, p0}, Lcom/adobe/mobile/af$1$1;-><init>(Lcom/adobe/mobile/af$1;)V

    invoke-static {v0, v1}, Lcom/adobe/mobile/aj;->a(Ljava/lang/String;Lcom/adobe/mobile/aj$b;)V

    goto :goto_0
.end method
