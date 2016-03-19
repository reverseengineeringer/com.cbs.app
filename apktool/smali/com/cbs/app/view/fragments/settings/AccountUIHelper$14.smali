.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$14;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 866
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 868
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->c()V

    .line 869
    const-string v0, ""

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->setFrom(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$14;->a:Landroid/content/Context;

    const-string v1, "CBS ALL ACCESS Sign In"

    invoke-static {v0, v1}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 871
    return-void
.end method
