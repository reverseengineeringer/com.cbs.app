.class final Lcom/cbs/app/widget/TouchTimeoutParent$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/widget/TouchTimeoutParent;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/widget/TouchTimeoutParent;


# direct methods
.method constructor <init>(Lcom/cbs/app/widget/TouchTimeoutParent;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cbs/app/widget/TouchTimeoutParent$1;->a:Lcom/cbs/app/widget/TouchTimeoutParent;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cbs/app/widget/TouchTimeoutParent$1;->a:Lcom/cbs/app/widget/TouchTimeoutParent;

    invoke-static {v0}, Lcom/cbs/app/widget/TouchTimeoutParent;->a(Lcom/cbs/app/widget/TouchTimeoutParent;)V

    .line 77
    return-void
.end method
