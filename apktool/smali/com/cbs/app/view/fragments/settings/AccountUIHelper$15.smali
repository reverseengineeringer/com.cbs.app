.class final Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;
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

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 949
    invoke-static {}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->d()Ljava/lang/String;

    .line 950
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/cbs/app/view/fragments/settings/AccountUIHelper$15;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/cbs/app/view/fragments/settings/AccountUIHelper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return-void
.end method
