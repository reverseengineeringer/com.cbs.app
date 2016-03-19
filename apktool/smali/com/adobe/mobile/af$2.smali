.class final Lcom/adobe/mobile/af$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adobe/mobile/aj$b;


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
    .line 557
    iput-object p1, p0, Lcom/adobe/mobile/af$2;->a:Lcom/adobe/mobile/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 560
    invoke-static {}, Lcom/adobe/mobile/am;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/adobe/mobile/af$2$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/mobile/af$2$1;-><init>(Lcom/adobe/mobile/af$2;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 569
    return-void
.end method
