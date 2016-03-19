.class final Lcom/cbs/app/view/ShowSocialDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/ShowSocialDialog;->a(Landroid/content/Context;Lcom/cbs/app/view/model/Show;Lcom/cbs/app/view/model/ShowConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/cbs/app/view/ShowSocialDialog$2;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cbs/app/view/ShowSocialDialog$2;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 116
    sget-object v0, Lcom/cbs/app/service/ButtonServiceHelper;->f:Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Lcom/cbs/app/view/fragments/settings/AccountUIHelper$RefreshAccountListener;)V

    .line 117
    return-void
.end method
