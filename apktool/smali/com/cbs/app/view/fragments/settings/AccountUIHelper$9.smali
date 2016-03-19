.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 814
    iput-boolean p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$9;->a:Z

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$9;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 816
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 817
    iget-boolean v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$9;->a:Z

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$9;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->h(Landroid/content/Context;)V

    .line 821
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b:Z

    .line 822
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->k()Z

    .line 823
    return-void
.end method
