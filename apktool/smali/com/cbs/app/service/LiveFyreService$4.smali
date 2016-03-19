.class final Lcom/cbs/app/service/LiveFyreService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/service/LiveFyreService$ServiceChangListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/service/LiveFyreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/service/LiveFyreService;


# direct methods
.method constructor <init>(Lcom/cbs/app/service/LiveFyreService;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/cbs/app/service/LiveFyreService$4;->a:Lcom/cbs/app/service/LiveFyreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$4;->a:Lcom/cbs/app/service/LiveFyreService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/service/LiveFyreService;->j:Z

    .line 155
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$4;->a:Lcom/cbs/app/service/LiveFyreService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    .line 156
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/cbs/app/service/LiveFyreService;->b()Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/cbs/app/service/LiveFyreService$4;->a:Lcom/cbs/app/service/LiveFyreService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cbs/app/service/LiveFyreService;->a:Z

    .line 162
    return-void
.end method
