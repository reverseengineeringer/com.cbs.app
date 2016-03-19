.class final Lcom/adobe/b/c/b/a/c$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/b/c/b/a/c$a;-><init>(Lcom/adobe/b/c/b/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adobe/b/c/b/a/c;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/adobe/b/c/b/a/c$a;


# direct methods
.method constructor <init>(Lcom/adobe/b/c/b/a/c$a;Lcom/adobe/b/c/b/a/c;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/adobe/b/c/b/a/c$a$1;->c:Lcom/adobe/b/c/b/a/c$a;

    iput-object p2, p0, Lcom/adobe/b/c/b/a/c$a$1;->a:Lcom/adobe/b/c/b/a/c;

    iput-object p3, p0, Lcom/adobe/b/c/b/a/c$a$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c$a$1;->c:Lcom/adobe/b/c/b/a/c$a;

    invoke-static {v0}, Lcom/adobe/b/c/b/a/c$a;->a(Lcom/adobe/b/c/b/a/c$a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c$a$1;->c:Lcom/adobe/b/c/b/a/c$a;

    iget-object v0, v0, Lcom/adobe/b/c/b/a/c$a;->a:Lcom/adobe/b/c/b/a/c;

    invoke-static {v0}, Lcom/adobe/b/c/b/a/c;->c(Lcom/adobe/b/c/b/a/c;)V

    .line 87
    iget-object v0, p0, Lcom/adobe/b/c/b/a/c$a$1;->b:Landroid/os/Handler;

    sget-wide v2, Lcom/adobe/b/c/b/a/c;->a:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 89
    :cond_0
    return-void
.end method
