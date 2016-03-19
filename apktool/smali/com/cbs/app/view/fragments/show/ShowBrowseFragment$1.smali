.class final Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/BackButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$1;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f()Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment$1;->a:Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;

    iget-object v0, v0, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->h:Landroid/app/Activity;

    check-cast v0, Lcom/cbs/app/view/NavigationActivity;

    invoke-virtual {v0}, Lcom/cbs/app/view/NavigationActivity;->k()V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/cbs/app/view/fragments/show/ShowBrowseFragment;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
