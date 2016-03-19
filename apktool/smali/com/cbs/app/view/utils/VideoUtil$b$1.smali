.class final Lcom/cbs/app/view/utils/VideoUtil$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/utils/VideoUtil$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/utils/VideoUtil$b;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/utils/VideoUtil$b;)V
    .locals 0

    .prologue
    .line 1350
    iput-object p1, p0, Lcom/cbs/app/view/utils/VideoUtil$b$1;->a:Lcom/cbs/app/view/utils/VideoUtil$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/cbs/app/view/utils/VideoUtil$b$1;->a:Lcom/cbs/app/view/utils/VideoUtil$b;

    invoke-static {v0}, Lcom/cbs/app/view/utils/VideoUtil$b;->a(Lcom/cbs/app/view/utils/VideoUtil$b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cbs/app/view/utils/VideoUtil$b$1;->a:Lcom/cbs/app/view/utils/VideoUtil$b;

    invoke-static {v1}, Lcom/cbs/app/view/utils/VideoUtil$b;->b(Lcom/cbs/app/view/utils/VideoUtil$b;)Lcom/cbs/app/view/model/VideoData;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/view/utils/VideoUtil$b$1;->a:Lcom/cbs/app/view/utils/VideoUtil$b;

    invoke-static {v2}, Lcom/cbs/app/view/utils/VideoUtil$b;->c(Lcom/cbs/app/view/utils/VideoUtil$b;)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v2

    iget-object v3, p0, Lcom/cbs/app/view/utils/VideoUtil$b$1;->a:Lcom/cbs/app/view/utils/VideoUtil$b;

    iget-object v3, v3, Lcom/cbs/app/view/utils/VideoUtil$b;->a:Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;

    invoke-static {v0, v1, v2, v3}, Lcom/cbs/app/view/utils/VideoUtil;->c(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;Lcom/cbs/app/view/utils/VideoUtil$PlayVideoListener;)V

    .line 1356
    return-void
.end method
