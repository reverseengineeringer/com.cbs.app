.class final Lcom/cbs/app/view/utils/ImagePreLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/utils/ImagePreLoader;->a([[Lcom/cbs/app/view/utils/ImagePreloadConfig;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cbs/app/view/utils/ImagePreLoader;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/utils/ImagePreLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cbs/app/view/utils/ImagePreLoader$1;->b:Lcom/cbs/app/view/utils/ImagePreLoader;

    iput-object p2, p0, Lcom/cbs/app/view/utils/ImagePreLoader$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lcom/d/a/b/c$a;

    invoke-direct {v0}, Lcom/d/a/b/c$a;-><init>()V

    invoke-virtual {v0}, Lcom/d/a/b/c$a;->b()Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/c$a;->c()Lcom/d/a/b/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/b/c$a;->d()Lcom/d/a/b/c;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/d/a/b/d;->a()Lcom/d/a/b/d;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcom/cbs/app/view/utils/ImagePreLoader$1;->a:Ljava/lang/String;

    new-instance v3, Lcom/cbs/app/view/utils/ImagePreLoader$1$1;

    invoke-direct {v3, p0}, Lcom/cbs/app/view/utils/ImagePreLoader$1$1;-><init>(Lcom/cbs/app/view/utils/ImagePreLoader$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/d/a/b/d;->a(Ljava/lang/String;Lcom/d/a/b/c;Lcom/d/a/b/f/a;)V

    .line 79
    return-void
.end method
