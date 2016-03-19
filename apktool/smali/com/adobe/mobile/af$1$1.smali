.class final Lcom/adobe/mobile/af$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/mobile/aj$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/af$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/mobile/af$1;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/af$1;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/adobe/mobile/af$1$1;->a:Lcom/adobe/mobile/af$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/adobe/mobile/af$1$1;->a:Lcom/adobe/mobile/af$1;

    iget-object v0, v0, Lcom/adobe/mobile/af$1;->a:Lcom/adobe/mobile/af;

    invoke-virtual {v0, p1}, Lcom/adobe/mobile/af;->a(Ljava/io/File;)V

    .line 547
    iget-object v0, p0, Lcom/adobe/mobile/af$1$1;->a:Lcom/adobe/mobile/af$1;

    iget-object v0, v0, Lcom/adobe/mobile/af$1;->a:Lcom/adobe/mobile/af;

    invoke-static {v0}, Lcom/adobe/mobile/af;->b(Lcom/adobe/mobile/af;)V

    .line 550
    iget-object v0, p0, Lcom/adobe/mobile/af$1$1;->a:Lcom/adobe/mobile/af$1;

    iget-object v0, v0, Lcom/adobe/mobile/af$1;->a:Lcom/adobe/mobile/af;

    invoke-static {v0}, Lcom/adobe/mobile/af;->c(Lcom/adobe/mobile/af;)V

    .line 551
    return-void
.end method
