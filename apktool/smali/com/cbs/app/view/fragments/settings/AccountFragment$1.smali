.class final Lcom/cbs/app/view/fragments/settings/AccountFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cbs/app/view/fragments/settings/AccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/AccountFragment;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/AccountFragment;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountFragment$1;->a:Lcom/cbs/app/view/fragments/settings/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountFragment;->b()Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountFragment$1;->a:Lcom/cbs/app/view/fragments/settings/AccountFragment;

    invoke-virtual {v0}, Lcom/cbs/app/view/fragments/settings/AccountFragment;->a()V

    .line 32
    return-void
.end method
