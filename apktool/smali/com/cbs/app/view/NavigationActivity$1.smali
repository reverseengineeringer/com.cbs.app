.class final Lcom/cbs/app/view/NavigationActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/manager/StatusManager$StatusResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/NavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/NavigationActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/cbs/app/view/NavigationActivity$1;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$1;->a:Lcom/cbs/app/view/NavigationActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/NavigationActivity;->h:Z

    .line 99
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$1;->a:Lcom/cbs/app/view/NavigationActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cbs/app/view/NavigationActivity;->h:Z

    .line 104
    invoke-static {}, Lcom/cbs/app/view/NavigationActivity;->j()V

    .line 105
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$1;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-boolean v0, v0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$1;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/manager/StatusManager;->a(Landroid/app/Activity;)V

    .line 112
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$1;->a:Lcom/cbs/app/view/NavigationActivity;

    iget-boolean v0, v0, Lcom/cbs/app/view/NavigationActivity;->i:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/cbs/app/view/NavigationActivity$1;->a:Lcom/cbs/app/view/NavigationActivity;

    invoke-static {v0}, Lcom/cbs/app/manager/StatusManager;->b(Landroid/app/Activity;)V

    .line 119
    :cond_0
    return-void
.end method
