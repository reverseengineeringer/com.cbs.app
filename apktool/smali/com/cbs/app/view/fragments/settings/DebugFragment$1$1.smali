.class final Lcom/cbs/app/view/fragments/settings/DebugFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/cbs/app/view/fragments/settings/DebugFragment$1;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/DebugFragment$1;Z)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1$1;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment$1;

    iput-boolean p2, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1$1;->a:Z

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/DebugFragment$1$1;->b:Lcom/cbs/app/view/fragments/settings/DebugFragment$1;

    iget-object v1, v1, Lcom/cbs/app/view/fragments/settings/DebugFragment$1;->a:Lcom/cbs/app/view/fragments/settings/DebugFragment;

    invoke-virtual {v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/DebugFragment;->a(ZLandroid/view/View;)V

    .line 135
    return-void
.end method
