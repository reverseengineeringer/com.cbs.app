.class final Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/show/ShowServiceManager$ShowServiceManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/model/VideoData;

.field final synthetic b:I

.field final synthetic c:Lcom/cbs/app/listener/HomeVideoGridItemClickListener;


# direct methods
.method constructor <init>(Lcom/cbs/app/listener/HomeVideoGridItemClickListener;Lcom/cbs/app/view/model/VideoData;I)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;->c:Lcom/cbs/app/listener/HomeVideoGridItemClickListener;

    iput-object p2, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;->a:Lcom/cbs/app/view/model/VideoData;

    iput p3, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-virtual {v0}, Lcom/cbs/app/view/model/VideoData;->getCbsShowId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/show/ShowServiceManager;->a(J)Lcom/cbs/app/view/fragments/show/model/ShowItem;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;->c:Lcom/cbs/app/listener/HomeVideoGridItemClickListener;

    invoke-static {v1}, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->a(Lcom/cbs/app/listener/HomeVideoGridItemClickListener;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v1, v2, v0}, Lcom/cbs/app/view/utils/VideoUtil;->a(Landroid/content/Context;Lcom/cbs/app/view/model/VideoData;Lcom/cbs/app/view/fragments/show/model/ShowItem;)V

    .line 58
    iget-object v0, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;->c:Lcom/cbs/app/listener/HomeVideoGridItemClickListener;

    iget-object v1, p0, Lcom/cbs/app/listener/HomeVideoGridItemClickListener$1;->a:Lcom/cbs/app/view/model/VideoData;

    invoke-static {v0, v1}, Lcom/cbs/app/listener/HomeVideoGridItemClickListener;->a(Lcom/cbs/app/listener/HomeVideoGridItemClickListener;Lcom/cbs/app/view/model/VideoData;)V

    .line 59
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
