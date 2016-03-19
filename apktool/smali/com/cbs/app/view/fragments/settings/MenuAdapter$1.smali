.class final Lcom/cbs/app/view/fragments/settings/MenuAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cbs/app/view/fragments/settings/MenuAdapter;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cbs/app/view/fragments/settings/MenuAdapter;


# direct methods
.method constructor <init>(Lcom/cbs/app/view/fragments/settings/MenuAdapter;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter$1;->a:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 297
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    .line 299
    if-eqz v1, :cond_0

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 302
    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p=com.cbs.app"

    .line 304
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    iget-object v0, p0, Lcom/cbs/app/view/fragments/settings/MenuAdapter$1;->a:Lcom/cbs/app/view/fragments/settings/MenuAdapter;

    invoke-static {v0}, Lcom/cbs/app/view/fragments/settings/MenuAdapter;->a(Lcom/cbs/app/view/fragments/settings/MenuAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void

    .line 302
    :cond_1
    const-string v0, "https://play.google.com/store/apps/details?id=com.cbs.app"

    goto :goto_0
.end method
