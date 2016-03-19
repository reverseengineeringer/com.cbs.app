.class final Lcom/adobe/mobile/af$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/af$2;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/adobe/mobile/af$2;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/af$2;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/adobe/mobile/af$2$1;->b:Lcom/adobe/mobile/af$2;

    iput-object p2, p0, Lcom/adobe/mobile/af$2$1;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/adobe/mobile/af$2$1;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 564
    const-string v0, "Config - Using remote definition for points of interest"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/adobe/mobile/am;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    iget-object v0, p0, Lcom/adobe/mobile/af$2$1;->b:Lcom/adobe/mobile/af$2;

    iget-object v0, v0, Lcom/adobe/mobile/af$2;->a:Lcom/adobe/mobile/af;

    iget-object v1, p0, Lcom/adobe/mobile/af$2$1;->a:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/adobe/mobile/af;->b(Ljava/io/File;)V

    .line 567
    :cond_0
    return-void
.end method
